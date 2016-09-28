package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartItemDao;
import com.model.Cart;
import com.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	@Transactional
	public void add(CartItem cart) {
		System.out.println("adding in cart service");
		cartItemDao.add(cart);
		
	}

	@Transactional
	public List getAllProductModel() {
		return cartItemDao.getAllProductModel();
	}

	@Transactional
	public void update(CartItem cart) {
		cartItemDao.update(cart);
	}

	@Transactional
	public CartItem getProductById(int id) {
		return cartItemDao.getProductById(id);
	}

	@Transactional
	public void delete(int id) {
		 cartItemDao.delete(id);
	}

	@Override
	public void save(Cart cart) {
		cartItemDao.save(cart);
	}

}
