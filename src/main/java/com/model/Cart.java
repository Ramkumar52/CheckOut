package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.model.ProductModel;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;

	@ManyToOne
	@JoinColumn(name="CartItemId")
	private CartItem cartItem;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "firstname")
	@JsonIgnore
	private NewUser newUser;
	private int quantity;
	private double grandTotal;
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL, targetEntity = ShippingAddress.class)
	private ShippingAddress shippingdetails;

	public CartItem getCartItem() {
		return cartItem;
	}

	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}

	public ShippingAddress getShippingdetails() {
		return shippingdetails;
	}

	public void setShippingdetails(ShippingAddress shippingdetails) {
		this.shippingdetails = shippingdetails;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	

	public NewUser getNewUser() {
		return newUser;
	}

	public void setNewUser(NewUser newUser) {
		this.newUser = newUser;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

}
