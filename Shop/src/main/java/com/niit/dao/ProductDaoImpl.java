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

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM Product").list();
	}

}
