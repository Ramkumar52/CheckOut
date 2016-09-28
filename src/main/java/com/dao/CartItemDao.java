package com.dao;

import java.util.List;

import com.model.Cart;
import com.model.CartItem;

public interface CartItemDao {

	public void add(CartItem CartItem);
	public List getAllProductModel(); 
	public void update(CartItem CartItem);
	public CartItem getProductById(int id);
	public void delete(int id);
	public void save(Cart cart);
}
