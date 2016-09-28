package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.service.CartItemService;
import com.service.CustomerOrderService;
import com.service.ShippingService;

@Component
public class ShippingHandler {
	@Autowired
	CartItemService cartitemservice;
	@Autowired
	HttpServletRequest req;
	public ShippingAddress initFlow(){
		System.out.println("Shipment Object gets created");
		return new ShippingAddress();

	}
	
	
	@Autowired
	ShippingService shippingservice;
	public void saveaddress(ShippingAddress shippingaddress)
	{	  String username;
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); 
	      HttpSession ses=req.getSession();
	      ses.setAttribute("name", name);
	      username=(String)ses.getAttribute("name");
	     // System.out.println((String)ses.getAttribute("u"));
	      NewUser newUser=new NewUser();
	      newUser.setFirstname(username);
	      shippingaddress.setNewuser(newUser);
		int id=shippingaddress.getShippingAddressId();
		shippingservice.saveorupdate(shippingaddress);
		//paymentService.order(username,id);
	}
	public void savecart(ShippingAddress shipment)
	{
	Cart cart=new Cart();
	List<CartItem> cartitems=cartitemservice.getAllProductModel();
	System.out.println("cart save");
	double tot=0;
	for(int i=0;i<cartitems.size();i++){
		System.out.println("cart save for loop");
		tot+=cartitems.get(i).getTotalPrice();
		}
	cart.setGrandTotal(tot);
	int sid=shipment.getShippingAddressId();
	
	cart.setNewUser((shipment.getNewuser()));
	cart.setShippingdetails( shippingservice.getbyid(sid));
	for(int j=0;j<cartitems.size();j++){
		int id=cartitems.get(j).getCartItemId();
		CartItem carts=cartitemservice.getProductById(id);
		cart.setCartItem(carts);
		cartitemservice.save(cart);
	}
	
	
	}

	
}
