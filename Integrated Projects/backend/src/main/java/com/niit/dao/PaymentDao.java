package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.Payment;

public interface PaymentDao {
	
	public boolean addPay(Payment payment);
	public List<Payment>getPayment(String email);

}
