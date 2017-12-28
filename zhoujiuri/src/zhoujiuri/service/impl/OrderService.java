package zhoujiuri.service.impl;

import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import zhoujiuri.dao.IAddressDAO;
import zhoujiuri.dao.IOrderDAO;
import zhoujiuri.dao.IOrderitemDAO;
import zhoujiuri.entity.Address;
import zhoujiuri.entity.Cartitem;
import zhoujiuri.entity.Order;
import zhoujiuri.entity.Orderitem;
import zhoujiuri.service.IOrderService;
import zhoujiuri.util.MyBatisUtil;


public class OrderService implements IOrderService {
	SqlSession sqlSession = MyBatisUtil.getCurrentSession();
	IAddressDAO addressDAO = sqlSession.getMapper(IAddressDAO.class);
	IOrderDAO orderDAO = sqlSession.getMapper(IOrderDAO.class);
	IOrderitemDAO orderitemDAO = sqlSession.getMapper(IOrderitemDAO.class);

	// 1.添加地址信息，添加订单、订单项
	public Double insertOrder(Address address, Collection<Cartitem> cartitem,
			Integer userid) {
		Double totalaccount = 0.0;
		try {
			if(address.getId()!=null){
				addressDAO.updateAddress(address);
			}else{
				// ①添加地址信息
				address.setUserid(userid);
				addressDAO.insertAddress(address);
			}
			// ②添加订单
			for (Cartitem i : cartitem) {
				if (i.getStatus() == "yes") {
					totalaccount += i.getDangdangprice() * i.getAmount();
				}
			}
			String orderid = new SimpleDateFormat("yyyyMMddHHmmssSSSS")
					.format(new Date());
			Order order = new Order(null, orderid, new Date(), totalaccount,
					userid, address.getId());
			orderDAO.insertOrder(order);
			// ③添加订单项
			for (Cartitem i : cartitem) {
				Orderitem orderitem = new Orderitem(null, i.getAmount(),
						i.getAmount() * i.getDangdangprice(), order.getId(),
						i.getId());
				orderitemDAO.insertOrderitem(orderitem);
			}
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			MyBatisUtil.close(sqlSession);
		}
		return totalaccount;
	}

}
