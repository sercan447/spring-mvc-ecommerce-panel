package com.muzikmagaza.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.muzikmagaza.dao.ProductDao;
import com.muzikmagaza.model.Product;
import com.muzikmagaza.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<Product> getProductList() {
		
		return productDao.getProductList();
	}

	@Override
	public Product getProductById(int id) {
		
		return productDao.getProductById(id);
	}

	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}

	@Override
	public void editProduct(Product product) {
		productDao.editProduct(product);		
	}

	@Override
	public void deleteProduct(Product product) {
		productDao.deleteProduct(product);		
	}

	
}
