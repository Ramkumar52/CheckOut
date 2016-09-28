package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.CartItem;
import com.model.CustomerOrder;
import com.model.NewUser;
import com.model.ShippingAddress;
import com.service.ShippingService;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{

	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CartItemDao cartItemsDao;
	@Autowired
	ShippingService shippingService;
	
	public void add(String username)
	{
		Cart cart=new Cart();
		NewUser newUser=new NewUser();
		System.out.println("order add");
		newUser.setFirstname(username);
		cart.setNewUser(newUser);
		List<CartItem> li=cartItemsDao.getAllProductModel();
		int tot=0;
		for(int i=0;i<li.size();i++)
		{
			tot=(int) (tot+(li.get(i).getTotalPrice()));
		}
		cart.setGrandTotal(tot);
		sessionFactory.getCurrentSession().save(cart);
	}
	/*public void order(String username) {
		CustomerOrder orders=new CustomerOrder();
		Cart ct=new Cart();
		NewUser newUser=new NewUser();
		System.out.println(username);
		System.out.println("ram");
		newUser.setFirstname(username);
		orders.setNewuser(newUser);
		List<Cart> ca=sessionFactory.getCurrentSession().createQuery("from Cart where firstname='"+username+"'").list();
		ct.setCartId(ca.get(0).getCartId());
		orders.setCart(ct);
		List<ShippingAddress> shr=sessionFactory.getCurrentSession().createQuery("from ShippingAddress where firstname='"+username+"'").list();
		orders.setShippingAddress(shr.get(shr.size()-1));
		System.out.println("order goin to add");
		Session session=sessionFactory.getCurrentSession();
		session.update(orders);
	
	}*/
	
}
