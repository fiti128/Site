package ru.retbansk.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;



import org.apache.log4j.Logger;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import ru.retbansk.domain.Account;
import ru.retbansk.domain.Dept;
import ru.retbansk.domain.Role;
import ru.retbansk.service.AccountService;
import ru.retbansk.service.DeptService;
/**
 * 
 * @author Legres
 * This is main controller. Almost all operation inside
 */

@Controller
@RequestMapping
@SessionAttributes({"userName"})
public class HomeController {
	protected static Logger logger = Logger.getLogger("controller");
	
	@Resource(name="accountService")
	private AccountService userService;
	
	@Resource(name="deptService")
	private DeptService deptService;
	
	@Resource(name="userDetails")
	private UserDetailsService userDetailsService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() { return "index";}
	
	/**
	 * Show all users from database in a JSP page
	 */
	@RequestMapping(value="/users.html", method = RequestMethod.GET)
	public String getUsers(Model model) {
		logger.debug("Recieved request to show all users");
		List<Account> users = userService.getAll();
		model.addAttribute("users", users);
		return "user-list";
	}
	/**
	 * Show all deptors from database in a JSP page
	 */
	@RequestMapping(value="/deptors.html", method = RequestMethod.GET)
	public String getDeptors(Model model,Principal principal) {
		logger.debug("Recieved request to show all deptors");
		
		List<Dept> depts = deptService.getAll(principal.getName());
		if (depts.size() == 0) {
			String deptsEmpty = "YOUR DEPT LIST IS EMPTY";
			model.addAttribute("deptsEmpty", deptsEmpty);
			return "deptors";
		}
		int summa = 0;
		for (Dept deptTemp : depts) {
			summa += deptTemp.getSum();
		}
		model.addAttribute("summa", summa);
		model.addAttribute("depts", depts);
		return "deptors";
	}
	@RequestMapping(value="/delete-dept.html", method = RequestMethod.GET)
	public String deleteDept(Model model,@RequestParam(required = true)Long deptId,Principal principal) {
		logger.debug("Recieved request to delete user");
		if (deptService.get(deptId) != null) {
		deptService.delete(deptId);}

		return "redirect:deptors.html";
	}
	@RequestMapping(value="/delete.html", method = RequestMethod.GET)
	public String delete(Model model,@RequestParam(required = true)String userId) {
		logger.debug("Recieved request to delete user");
		if (userService.get(userId) != null) {
		userService.delete(userId);
		}
		return "redirect:users.html";
	}
	@RequestMapping(value="/populate", method = RequestMethod.GET)
	public String populate() {
		Role admin = new Role();
		admin.setRoleId("admin");
		admin.setDescription("the most powerfull man on the world");
		
		Role user = new Role();
		user.setRoleId("user");
		user.setDescription("just mortal");
		
		Role staff = new Role();
		staff.setRoleId("staff");
		staff.setDescription("man with the power");
		
		Account account1 = new Account();
		account1.setEmail("admin@gmail.com");
		account1.setPassword("adminPassword");
		account1.setFirstName("Admin");
		account1.getAthorities().add(admin);
		
		Account account2 = new Account();
		account2.setEmail("guest@gmail.com");
		account2.setPassword("guestPassword");
		account2.setFirstName("Guest");
		account2.getAthorities().add(user);
		
		Account accountStaff = new Account();
		accountStaff.setEmail("staff@gmail.com");
		accountStaff.setPassword("staffPassword");
		accountStaff.setFirstName("Staff");
		accountStaff.getAthorities().add(staff);
		
		Account guest1 = new Account();
		guest1.setEmail("guest1@gmail.com");
		guest1.setPassword("guest1Password");
		guest1.setFirstName("Guest1");
		guest1.getAthorities().add(user);
		
		
		
//		userService.addRole(user);
//		userService.addRole(admin);
		userService.addRole(staff);
		userService.add(guest1);
		userService.add(accountStaff);
		userService.add(account2);
//		userService.add(account1);
	
		return "index";
	}
	@RequestMapping(value="/denied.html", method = RequestMethod.GET)
	public String getDeny(ModelMap model) {

		return "denied";
	}

	@RequestMapping(value="/register.html", method = RequestMethod.GET)
	public String getRegister(ModelMap model) {
		Account account = new Account();
		model.addAttribute("account",account);
		
		return "register";
	}
	
	@RequestMapping(value="/register.html", method = RequestMethod.POST)
	public String postRegister(ModelMap model, 
			@Valid Account account, BindingResult result, HttpServletRequest request) {
		
		// Validation
		if (result.hasErrors()) {
			return "register";
		}
		if (userService.get(account.getEmail()) != null) {
			String emailError = "Account with such email is already existing";
			model.addAttribute("emailError", emailError);
			return "register";
		}
		
		// Saving account with role user
		Role role = userService.getRole("user");
		Set<Role> athorities = new HashSet<Role>();
		athorities.add(role);
		account.setAthorities(athorities);
		userService.add(account);
		
		//Login now with new user

	    request.getSession();
	    UserDetails user = userDetailsService.loadUserByUsername(account.getEmail());
	    Authentication authenticatedUser = new UsernamePasswordAuthenticationToken(user,null,user.getAuthorities());
	    SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
		
		return "redirect:index.html?loginSuccess=true";
	}
	@RequestMapping(value="/login.html", method = RequestMethod.GET)
	public String getLogin(ModelMap model) {
		return "login";
	}
	@RequestMapping(params={"loginError=true"}, value ="/login.html")
	public String getLoginError(ModelMap model) {
		String loginError = "Invalid email or password";
		model.addAttribute("loginError", loginError);
		return "login";
	}
	
	@RequestMapping(value="/index.html", method = RequestMethod.GET)
	public String getIndex(ModelMap model) {
		return "index";
	}
	@RequestMapping(params={"loginSuccess=true"},value="/index.html")
	public String getIndexSuccess(ModelMap model, Principal principal) {
		if (principal != null) {
		String userName = userService.get(principal.getName()).getFirstName();
		logger.debug("User successfully authorized ");
		model.addAttribute("userName",userName);
		String welcomeMessage = ("Поздравляем, "+userName+"! Вы успешно вошли в систему");
		model.addAttribute("welcomeMessage", welcomeMessage);
		return "index";}
		return "redirect:login.html";
	}
	@RequestMapping(value="/edit-user.html", method = RequestMethod.GET)
	public String getEditUser(ModelMap model,@RequestParam(required = false)String userId) {
		if (userId == null) {
			return "redirect:users.html";
		}
		Account account = userService.get(userId);
		account.setRepeatPassword(account.getPassword());
		account.setRepeatEmail(account.getEmail());
		model.addAttribute("account",account);
	
		return "edit-user";
	}
	@RequestMapping(value="/edit-user.html", method = RequestMethod.POST)
	public String postEditUser(ModelMap model, 
			@Valid Account account, BindingResult result) {
	
		// Validation
		if (result.hasErrors()) {
			return "edit-user";
		}
	
		userService.edit(account);

		return "redirect:users.html";
	}

	@RequestMapping(value="/info.html", method = RequestMethod.GET)
	public String getInfo(ModelMap model,Principal principal) {
		Account account = userService.get(principal.getName());
		account.setRepeatPassword(account.getPassword());
		account.setRepeatEmail(account.getEmail());
		model.addAttribute("account",account);
	
		return "info";
	}
	
	@RequestMapping(value="/info.html", method = RequestMethod.POST)
	public String postInfo(ModelMap model, 
			@Valid Account account, BindingResult result) {
	
		// Validation
		if (result.hasErrors()) {
			return "info";
		}
	
		userService.edit(account);

		return "index";
	}
	@RequestMapping(value="/edit-dept.html", method = RequestMethod.GET)
	public String getEditDept(ModelMap model,@RequestParam(required = false)Long deptId) {
		if (deptId == null) {
			return "redirect:deptors.html";
		}
		Dept dept = deptService.get(deptId);
		model.addAttribute("dept",dept);
		
		return "edit-dept";
	}
	@RequestMapping(value="/edit-dept.html", method = RequestMethod.POST)
	public String postEditDept(ModelMap model, 
			@Valid Dept dept, BindingResult result,Principal principal) {
			// Validation
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "edit-dept";
		}
		dept.setAppUser(userService.get(principal.getName()));
		deptService.edit(dept);

		return "redirect:deptors.html";


	}
	@RequestMapping(value="/add-dept.html", method = RequestMethod.GET)
	public String getAddDept(ModelMap model,Principal principal) {
		Dept dept = new Dept();
		model.addAttribute("dept",dept);
		
		return "add-dept";
	}
	
	@RequestMapping(value="/add-dept.html", method = RequestMethod.POST)
	public String postAddDept(ModelMap model, 
			@Valid Dept dept, BindingResult result,Principal principal) {
	
		// Validation
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "add-dept";
		}
		dept.setAppUser(userService.get(principal.getName()));
		deptService.add(dept);
		return "redirect:deptors.html";
	}	
	
	
}
