package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.niit.model.Cart;
import com.niit.model.Payment;
@Service
@Repository("paymentDAO")
public class PaymentDaoImpl implements PaymentDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public boolean addPay(Payment payment) {
		try {

			sessionFactory.getCurrentSession().persist(payment);

			return true;
		} catch (Exception ex) {
			return false;
		}
	}
	@Transactional
	public List<Payment> getPayment(String email) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Payment where email=:email");
		query.setParameter("email", email);
		@SuppressWarnings("unchecked")
		List<Payment> list = query.list();
		return list;
	}

}


