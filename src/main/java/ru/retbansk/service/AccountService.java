package ru.retbansk.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ru.retbansk.domain.Account;

import ru.retbansk.domain.Role;

/**
 * Service for processing Persons
 * 
 */
@Service("accountService")
@Transactional
public class AccountService {

	protected static Logger logger = Logger.getLogger("service");
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	/**
	 * Retrieves all persons
	 * 
	 * @return a list of persons
	 */
	@SuppressWarnings("unchecked")
	public List<Account> getAll() {
		logger.debug("Retrieving all users");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  Account");
				
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Retrieves a single person
	 */
	public Account get( String email ) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Account user = (Account) session.get(Account.class, email);
		
		return user;
	}
	
	/**
	 * Adds a new person
	 */
	public void add(Account user) {
		logger.debug("Adding new person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Save
		session.save(user);
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	public void delete(String email) {
		logger.debug("Deleting existing person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Account account = (Account) session.get(Account.class, email);
		
		// Delete 
		session.delete(account);
	}
	
	/**
	 * Edits an existing person
	 */
	public void edit(Account user) {
		logger.debug("Editing existing person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person via id
		Account existingUser = (Account) session.get(Account.class, user.getEmail());
		
		// Assign updated values to this person
		existingUser.setFirstName(user.getFirstName());
		existingUser.setPassword(user.getPassword());
		existingUser.setBirthDate(user.getBirthDate());
		existingUser.setBirthMonth(user.getBirthMonth());
		existingUser.setBirthYear(user.getBirthYear());
		existingUser.setChildren(user.getChildren());
		existingUser.setCity(user.getCity());
		existingUser.setConditions(user.getConditions());
		existingUser.setCountry(user.getCountry());
		existingUser.setGender(user.getGender());
		existingUser.setLastName(user.getLastName());
		existingUser.setNationality(user.getNationality());
		existingUser.setPhone(user.getPhone());
		existingUser.setStreet(user.getStreet());
		existingUser.setTextarea(user.getTextarea());
		existingUser.setWebSite(user.getWebSite());
		

		// Save updates
		session.save(existingUser);
	}
	/**
	 * Adds role
	 */
		public void addRole(Role role) {
			logger.debug("There is request to add the new Role");
			Session session = sessionFactory.getCurrentSession();
			// Save updates
			session.save(role);
		}
		public Role getRole( String roleId ) {
			// Retrieve session from Hibernate
			Session session = sessionFactory.getCurrentSession();
			
			// Retrieve existing person first
			Role role = (Role) session.get(Role.class, roleId);
			
			return role;
		}
	
}