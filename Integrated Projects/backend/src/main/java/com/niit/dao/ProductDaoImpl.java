package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	//getting all the product details from product table
	public List<Product> getAll() {
		sessionFactory.getCurrentSession().createQuery("FROM Product").list();

		return null;
	}
	//for saving and updating the product 
	public void saveOrUpdate(Product product) {

		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}
	//for fetching the product id 
	public Product deleteProId(int pid) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, new Integer(pid));
		return product;
	}
	//for saving or inserting the data in product table
	public void save(Product product) {
		sessionFactory.getCurrentSession().save(product);

	}
	//for saving or inserting the data in product table
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().persist(product);

	}
	//for fetching all the product details from the product table
	@SuppressWarnings("unchecked")
	public List<Product> getProductDetails() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
	public Product getById(int id) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class,new Integer(id));
		return product;

	}
	//for deleting the product from database
	@Transactional
	public void deleteProduct(Product product) {

		try {
			sessionFactory.getCurrentSession().delete(product);

		} catch (Exception e) {
			System.out.println("Exception arised" + e);

		}

	}

}
