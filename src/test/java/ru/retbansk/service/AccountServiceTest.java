//package ru.retbansk.service;
//
//import javax.annotation.Resource;
//
//import org.hibernate.Query;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.junit.Assert;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.transaction.annotation.Transactional;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"/applicationContext-test.xml"})
//public class AccountServiceTest {
//	
//	@Resource(name="accountService")
//	AccountService accountService;
//	@Resource(name="sessionFactory")
//	private SessionFactory sessionFactory;
//	Session session;
//	
////	@BeforeClass
////	public static void init() {
////		session = sessionFactory.getCurrentSession();
////	}
//	
//	@Test
//	@Transactional
//	public void getAllTest() {
//		session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery("FROM Account");
//		Assert.assertEquals(accountService.getAll(), query.list());
//		
//	}
//
//}
