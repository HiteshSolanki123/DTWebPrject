package com.niit.test;
import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;


public class SupplierDaoTest {
	static SupplierDao supplierDao;

	@BeforeClass
	public static void initialize() {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext();
		annotationConfigApplicationContext.scan("com.niit");
		annotationConfigApplicationContext.refresh();
		supplierDao = (SupplierDao) annotationConfigApplicationContext.getBean("supplierDao");
	}
	
	@Test
	public void saveTest()
	{
		Supplier supplier=new Supplier();
		supplier.setAddress("valsad");
		supplier.setId("");
		supplier.setName("Hitesh");
		assertTrue("problem in supplierDao", supplierDao.save(supplier));
	}/*
	@Test
	public void updateTest()
	{
		Supplier supplier=new Supplier();
		supplier.setAddress("valsad");
		supplier.setId("dgdfg");
		supplier.setName("Hitesh");
		assertTrue(supplierDao.update(supplier));
	}*/


}
