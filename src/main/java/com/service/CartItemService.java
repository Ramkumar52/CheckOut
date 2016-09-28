package com.service;

import java.util.List;

import com.model.Cart;
import com.model.CartItem;

public interface CartItemService {

	public void add(CartItem cart);
	public List getAllProductModel();
	public CartItem getProductById(int id);
	public void save(Cart cart);
	public void update(CartItem cart);
	public void delete(int id);
	
}
