package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
/*
public class CartDaoTest {
	
	static CartDao cartDao;
	@BeforeClass
	public static void initialize(){
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext();
		annotationConfigApplicationContext.scan("com.niit");
		annotationConfigApplicationContext.refresh();
		cartDao=(CartDao) annotationConfigApplicationContext.getBean("cartDao");
		}
	
	@Test
	public void addCartTest()
	{
		Cart cart=new Cart();
		cart.setCartItemId(1);
		cart.setOrderId(1);
		cart.setPrice("100");
		cart.setProductId(2);
		cart.setQuantity(50);
		cart.setStatus("NP");
		cart.setEmail("hitesh");
		assertTrue("problem in adding CartItem",cartDao.addToCart(cart));
		
	}
	@Ignore
	@Test
	public void updateCartTest()
	{
		Cart cart=new Cart();
		cart.setCartItemId(1);
		cart.setOrderId(20);
		cart.setPrice("100");
		cart.setProductId(30);
		cart.setQuantity(50);
		cart.setStatus("NP");
		cart.setEmail("hitesh");
		assertTrue("problem in adding CartItem",cartDao.updateCart(cart));
		
	}
	@Ignore
	@Test
	public void deleteCartTest()
	{
		Cart cart=new Cart();
		cart.setCartItemId(1);
		cart.setOrderId(20);
		assertTrue("problem in adding CartItem",cartDao.deleteCart(cart));
		
	}
	
}

*/