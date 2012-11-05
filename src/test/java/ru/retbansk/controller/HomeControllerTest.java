package ru.retbansk.controller;


import org.junit.BeforeClass;
import org.junit.Test;

import org.springframework.mock.web.MockHttpServletRequest;

import junit.framework.Assert;

public class HomeControllerTest {
	
	static MockHttpServletRequest request;
		@BeforeClass
		public static void init() {
			request = new MockHttpServletRequest();
			
		}
	
		@Test
		public void indexTest() {
			request.setMethod("GET");
			request.setRequestURI("/home");
			HomeController homeController = new HomeController();
			Assert.assertEquals("index", homeController.index());
		}
		

}
