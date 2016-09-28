package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.ShippingAddress;

@Repository
@Transactional
public class ShippingDaoImpl implements ShippingDao{

	@Autowired(required=true)
	SessionFactory sessionFactory;

	@Override
	public void saveorupdate(ShippingAddress shipment) {
		sessionFactory.getCurrentSession().saveOrUpdate(shipment);
		
	}

	@Override
	public ShippingAddress getbyid(int id) {
		return (ShippingAddress)sessionFactory.getCurrentSession().get(ShippingAddress.class,id);
		
	}
	
	
}
