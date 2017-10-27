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

	public List<Product> getAll() {
		sessionFactory.getCurrentSession().createQuery("FROM Product").list();

		return null;
	}

	public void saveOrUpdate(Product product) {

		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}

	public Product deleteProId(int pid) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, new Integer(pid));
		return product;
	}

	public Product getById(String id) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, Integer.parseInt(id));
		return product;
	}

	public void save(Product product) {
		sessionFactory.getCurrentSession().save(product);

	}

	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().persist(product);

	}

	@SuppressWarnings("unchecked")
	public List<Product> getProductDetails() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public void delete(String id) {
		// TODO Auto-generated method stub

	}

	public void deleteProId(Product pid) {
		// TODO Auto-generated method stub

	}

	public Product getById(int id) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, (id));
		return product;

	}

	@Transactional
	public void deleteProduct(Product product) {

		try {
			sessionFactory.getCurrentSession().delete(product);

		} catch (Exception e) {
			System.out.println("Exception arised" + e);

		}

	}

}
