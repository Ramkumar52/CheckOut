package com.dao;

import com.model.ShippingAddress;

public interface ShippingDao {

	public void saveorupdate(ShippingAddress shipment);
	public ShippingAddress getbyid(int id);
	
}
