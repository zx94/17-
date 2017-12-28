package zhoujiuri.test;

import java.util.Date;
import java.util.Map;

import org.junit.Test;

import zhoujiuri.entity.Address;
import zhoujiuri.entity.Order;
import zhoujiuri.entity.User;
import zhoujiuri.service.IAddressService;
import zhoujiuri.service.IOrderService;
import zhoujiuri.service.impl.AddressService;
import zhoujiuri.service.impl.OrderService;

import com.opensymphony.xwork2.ActionContext;

public class OrderTest {
	@Test
	public void test1(){
		IAddressService addressService = new AddressService();
		Address address = new Address (null,"zhang","111","111111","12345678901","11111111111",1027);
		addressService.insertAddress(address);
		
	}
	@Test
	public void test2(){
		
	}
}
