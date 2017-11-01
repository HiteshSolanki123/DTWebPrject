package com.niit.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDao;
import com.niit.model.User;

public class UserDaoTest {
	static UserDao userDao;
	@BeforeClass
	public static void initialize(){
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext();
		annotationConfigApplicationContext.scan("com.niit");
		annotationConfigApplicationContext.refresh();
		userDao=(UserDao) annotationConfigApplicationContext.getBean("userDao");

}
	@Test
	public void insertUser()
	{
		User user=new User();
		user.setUid(22);
		user.setEmail("hs@gmail.com");
		user.setPhone("9662616450");
		user.setFirstname("ankur");
		user.setLastname("champaneri");
		user.setRole("USER_ROLE");
		user.setEnabled(true);
		user.setPassword("123456789");
		//assertTrue("problem in adding CartItem",userDao.insertUser(user));
		
		
	}
	
}