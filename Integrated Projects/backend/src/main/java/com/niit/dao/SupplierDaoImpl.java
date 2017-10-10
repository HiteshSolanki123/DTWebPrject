package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;
@Repository("supplierDAO")


public class SupplierDaoImpl implements SupplierDao {
	
		@Autowired	
		private SessionFactory sessionFactory;
		@Transactional
		public boolean save(Supplier supplier) {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		}
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Supplier> getAll() {
			// TODO Auto-generated method stub
			return sessionFactory.getCurrentSession().createQuery("FROM Supplier").list();
		}
		@Transactional
		public void update(Supplier supplier) {
			// TODO Auto-generated method stub
			sessionFactory.getCurrentSession().update(supplier);
		}
		
		public Supplier getById(int id) {
			// TODO Auto-generated method stub
			return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class,id);
		}
		@Transactional
		public void delete(int id) {
			// TODO Auto-generated method stub
			sessionFactory.getCurrentSession().delete(getById(id));
			
		}
		
		public Supplier getByName(String Name) {
			// TODO Auto-generated method stub
			return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, Name);
			
			
		}
		
	}
		


