package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CustomerOrderDao;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService{

	@Autowired
	private CustomerOrderDao CustomerorderDao;
	@Transactional
	public void add(String username) {
		CustomerorderDao.add(username);
	
		
	}
	/*@Transactional
	public void order(String username) {
		CustomerorderDao.order(username);
}*/
}
