package zhoujiuri.service;

import java.util.Collection;
import java.util.List;

import zhoujiuri.entity.Address;
import zhoujiuri.entity.Cartitem;


public interface IOrderService {
	//添加订单
	public Double insertOrder(Address address,Collection<Cartitem> cartitem,Integer userid);
	
}
