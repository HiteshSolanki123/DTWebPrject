package com.niit.dao;

import java.util.List;

import com.niit.model.Bill;
import com.niit.model.Cart;

public interface BillDao {

	public boolean addBill(Bill bill);
	public Bill getBill(int billId);
	public Bill getEmail(String email);
	public List<Bill>getBills(String email);
}
