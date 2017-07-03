package com.niit.dao;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.ShippingAddress;
import com.niit.model.Users;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/applicationContext.xml","file:src/main/webapp/WEB-INF/dispatcher-servlet.xml"})
public class CustomerDaoImplTest 
{
	@Autowired
	private CustomerDao customerDao;

	@Test
	public void testSaveCustomer() {
		Customer customer=new Customer();
		customer.setFirstname("abc");
		customer.setLastname("g");
		customer.setEmail("j.s@abc.com");
		customer.setPhone("513254312");
		
		BillingAddress billingAddress=new BillingAddress();
		billingAddress.setStreetName("xyz");
		billingAddress.setApartmentnumber("123");
		billingAddress.setCity("hyd");
		billingAddress.setCountry("India");
		billingAddress.setZipcode("500014");
		
		ShippingAddress shippingAddress=new ShippingAddress();
		shippingAddress.setStreetName("xyz");
		shippingAddress.setApartmentNumber("123");
		shippingAddress.setCity("hyd");
		shippingAddress.setCountry("India");
		shippingAddress.setZipcode("500014");
		
		Users users=new Users();
		users.setUsername("mnb");
		users.setPassword("123");
		users.setEnabled(true);
		
		Authorities authorities=new Authorities();
		authorities.setUsername("mnb");
		authorities.setRole("ROLE_USER");
		
		Cart cart=new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		customer.setUsers(users);
		
		customerDao.saveCustomer(customer);
		
		assertTrue(customer.getId()>0);
		assertTrue(customer.getBillingAddress().getId()>0);
		
		
	}

	@Test
	public void testGetCustomers() {
	  List<Customer> customers=customerDao.getCustomers();	
	  assertTrue(customers.size()>0);
	}

}
