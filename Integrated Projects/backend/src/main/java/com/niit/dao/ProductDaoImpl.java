package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;


@Repository("productDAO")
@Transactional
public class ProductDaoImpl implements ProductDao 
{
	@Autowired	
	private SessionFactory sessionFactory;
	
	
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveOrUpdate(Product product) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public Product getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void save(Product product) {
		// TODO Auto-generated method stub
		
	}

	public void insertProduct(Product product) {
		sessionFactory.getCurrentSession().persist(product);
		
	}

	public List<Product> getProductDetails() {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	

}
