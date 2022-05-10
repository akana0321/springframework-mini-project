package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Product;

@Mapper
public interface ProductDao {
	public Product selectByPid(String pid);
	public int count();
	public int insert(Product product);
	public int deleteByPid(String pid);
	public int update(Product product);
	public List<Product> selectByPcategoryExceptPid(Product product);
}