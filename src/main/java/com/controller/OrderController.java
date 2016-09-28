package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.CustomerOrderService;

@Controller
public class OrderController {
	@Autowired
	private  CustomerOrderService customerordersevice;
	
	private String username;
	 @ModelAttribute
	 @RequestMapping("/ordersuccess")
	public String getuserdata(HttpServletRequest req)
	{
		Authentication authenticate = SecurityContextHolder.getContext().getAuthentication();
	      String name = authenticate.getName(); 
	      HttpSession ses=req.getSession();
	      ses.setAttribute("name", name);
	      username=(String)ses.getAttribute("name");
	      System.out.println((String)ses.getAttribute("name"));
	      customerordersevice.add(username);
	      //customerordersevice.order(username);
	      return"index";
	      
	}

}
	

