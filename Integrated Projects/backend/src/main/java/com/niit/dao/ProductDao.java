package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public List<Product> getAll();

	public void saveOrUpdate(Product product);

	public void delete(String id);

	public Product getById(String id);

	public void save(Product product);

	public void insertProduct(Product product);

	public List<Product> getProductDetails();

}
