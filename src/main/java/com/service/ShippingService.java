package com.service;

import com.model.ShippingAddress;

public interface ShippingService {

	public void saveorupdate(ShippingAddress shipment);
	public ShippingAddress getbyid(int id);

	
}
