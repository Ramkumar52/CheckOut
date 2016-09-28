package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.CartItem;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{

	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(CartItem cartItem) {
		session.getCurrentSession().save(cartItem);
	}

	@Override
	public List getAllProductModel() {
		return session.getCurrentSession().createQuery("from CartItem ").list();

	}

	@Override
	public void update(CartItem cartItem) {
		session.getCurrentSession().update(cartItem);
	}

	@Override
	public CartItem getProductById(int id) {
		return (CartItem)session.getCurrentSession().get(CartItem.class, id);
	}
	@Override
	public void save(Cart cart) {
		session.getCurrentSession().save(cart);
	}


	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getProductById(id));
		
	}
}
