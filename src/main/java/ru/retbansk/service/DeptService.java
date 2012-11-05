package ru.retbansk.service;


import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ru.retbansk.domain.Account;
import ru.retbansk.domain.Dept;

@Service("deptService")
@Transactional
public class DeptService {
	protected static Logger logger = Logger.getLogger("service");
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Dept> getAll(String email) {
		logger.debug("Retrieving all depts");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		List<Dept> depts = session.createQuery("FROM Dept where email = ?").setString(0, email).list();				

		return  depts;
	}
	@SuppressWarnings("unchecked")
	public List<Dept> getByWho(String email, String who) {
		logger.debug("Retrieving dept by deptor");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		// Create a Hibernate query (HQL)
		List<Dept> depts = session.createQuery("FROM Dept where email = ? and who = ?").setString(0, email).setString(1, who).list();				

		return  depts;
	}
	public void add(Dept dept) {
		logger.debug("Adding new dept");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Save
		session.save(dept);
	}
	public Dept get(Long deptId) {
		logger.debug("Request for dept by id");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		
		// Save
		return (Dept) session.get(Dept.class, deptId);
	}
	public void delete(Long deptId) {
		logger.debug("Deleting existing person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Dept dept = (Dept) session.get(Dept.class, deptId);
		
		// Delete 
		session.delete(dept);
	}
	public void edit(Dept dept) {
		logger.debug("Editing existing dept");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person via id
		Dept existingDept = (Dept) session.get(Dept.class, dept.getDeptId());
		
		// Assign updated values to this person
		existingDept.setDetails(dept.getDetails());
		existingDept.setSum(dept.getSum());
		existingDept.setWho(dept.getWho());
		

		// Save updates
		session.save(existingDept);
	}
}
