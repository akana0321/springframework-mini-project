package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ProductDao;
import com.mycompany.webapp.dto.Product;

@Service
public class ProductService {
	@Resource
	private ProductDao productDao;
	
	// Get Product by Product ID
	public Product getProductByPid(String pid) {
		return productDao.selectByPid(pid);
	}
	
	// Get 2 Products Except itself by Product Id and Product Category
	public List<Product> get2ProductsByPcategoryExceptPid(Product product) {
		return productDao.selectByPcategoryExceptPid(product);
	}
	
	// All Products Count
	public int getTotalProductsNum() {
		return productDao.count();
	}
	
	// Insert Product
	public int insertProduct(Product product) {
		return productDao.insert(product);
	}
	
	// Delete Product by Product ID
	public int deleteProductByPid(String pid) {
		return productDao.deleteByPid(pid);
	}
	
	// Update Product
	public int updateProduct(Product product) {
		return productDao.update(product);
	}
}
