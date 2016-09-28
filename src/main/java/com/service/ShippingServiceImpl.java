package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ShippingDao;
import com.model.ShippingAddress;

@Service
@Transactional
public class ShippingServiceImpl implements ShippingService{

	@Autowired
	ShippingDao shippingdao;
	
	public void saveorupdate(ShippingAddress  shipment) {
		shippingdao.saveorupdate(shipment);
	}

	
	public ShippingAddress  getbyid(int id) {
		return shippingdao.getbyid(id);
		
	}
	
	
}
