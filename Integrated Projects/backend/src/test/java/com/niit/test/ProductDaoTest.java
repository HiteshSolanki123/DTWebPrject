package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.dao.ProductDao;
import com.niit.model.Product;

public class ProductDaoTest {
	static ProductDao productDao;

	@BeforeClass
	public static void initialize() {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext();
		annotationConfigApplicationContext.scan("com.niit");
		annotationConfigApplicationContext.refresh();
		productDao = (ProductDao) annotationConfigApplicationContext.getBean("productDao");
	}

	@Test
	public void addProductTest() {
		Product p = new Product();
		
		p.setDesc("best prodcut");
		p.setPid(20);
		p.setPname("exhaust");
		p.setPrice(50000);
		p.setQuantity(200);
		
		/*assertTrue("problem in productDao", productDao.addProduct(p));*/
	}

	@Test
	public void saveOrUpdateTest() {
		Product p = new Product();
		
		p.setDesc("best prodcut");
		p.setPid(20);
		p.setPname("exhaust");
		p.setPrice(50000);
		p.setQuantity(200);
		
		/*assertTrue("problem in productDao", productDao.saveOrUpdate(p));*/
	}

	@Test
	public void deleteTest() {
		Product product = new Product();
	
		product.setDesc("best prodcut");
		product.setPid(20);
		product.setPname("exhaust");
		product.setPrice(50000);
		product.setQuantity(200);
		
		/*assertTrue("problem in productDao", productDao.delete(product));*/
	}
}
