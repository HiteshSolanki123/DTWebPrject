package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public List<Product> getAll();

	public void saveOrUpdate(Product product);

	public void deleteProduct(Product product);

	public void deleteProId(Product product);

	public Product getById(String id);

	public void save(Product product);

	public void addProduct(Product product);

	public List<Product> getProductDetails();

	public Product getById(int pid);

}
