package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress implements Serializable{
	private static final long serialVersionUID = 4657462015039723762L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int shippingAddressId;
	private String names;
	private String address;
	private long mobilenumbers;
	private String emails;
    private String city;
    private String country;
    private String pincode;

    @OneToOne
	@JoinColumn(name = "firstname")
	private NewUser newuser;


	public NewUser getNewuser() {
		return newuser;
	}

	public void setNewuser(NewUser newuser) {
		this.newuser = newuser;
	}



	
	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}



	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobilenumbers() {
		return mobilenumbers;
	}

	public void setMobilenumbers(long mobilenumbers) {
		this.mobilenumbers = mobilenumbers;
	}

	public String getEmails() {
		return emails;
	}

	public void setEmails(String emails) {
		this.emails = emails;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	
}
