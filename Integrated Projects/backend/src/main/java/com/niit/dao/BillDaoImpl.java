package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.niit.model.Bill;
import com.niit.model.Cart;
@Service
@Repository("billDAO")
public class BillDaoImpl implements BillDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public boolean addBill(Bill bill) {
		try {

			sessionFactory.getCurrentSession().persist(bill);

			return true;
		} catch (Exception ex) {
			return false;
		}
	}
	@Transactional
	public Bill getBill(int billsId) {
		Session session = sessionFactory.openSession();
		Bill bill = (Bill) session.get(Bill.class, new Integer(billsId));
		/* sessionFactory.getCurrentSession().get(Product.class,id); */
		return bill;
	
	}
	@Transactional
	public List<Bill> getBills(String email) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("from Bill where email=:email");
		query.setParameter("email", email);
		@SuppressWarnings("unchecked")
		List<Bill> list = query.list();
		return list;
	
	}

}
