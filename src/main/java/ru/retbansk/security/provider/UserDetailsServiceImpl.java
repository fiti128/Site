package ru.retbansk.security.provider;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ru.retbansk.domain.Account;
import ru.retbansk.domain.Role;
import ru.retbansk.service.AccountService;

@Service("userDetails")
@Transactional(readOnly = true)
public class UserDetailsServiceImpl implements UserDetailsService {
	
	final Logger logger = Logger.getLogger(UserDetailsServiceImpl.class);
	
	@Resource(name="accountService")
	private AccountService userService;
	
	@Override
	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException {
		logger.info("Mapping user with "+email);
		Account account = userService.get(email);
		Set<Role> roles = account.getAthorities();
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (Role role: roles) {
              String roleName = role.getRoleId();
              GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(roleName);
              authorities.add(grantedAuthority);
          }
		
		return new User(account.getEmail(),account.getPassword(),authorities);
	}

}
