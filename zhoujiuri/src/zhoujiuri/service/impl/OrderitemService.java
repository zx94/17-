package zhoujiuri.service.impl;

import org.apache.ibatis.session.SqlSession;

import zhoujiuri.dao.IOrderitemDAO;
import zhoujiuri.entity.Orderitem;
import zhoujiuri.service.IOrderitemService;
import zhoujiuri.util.MyBatisUtil;


public class OrderitemService implements IOrderitemService{
	SqlSession sqlSession = MyBatisUtil.getCurrentSession();
	IOrderitemDAO dao= sqlSession.getMapper(IOrderitemDAO.class);
	public void insertOrderitem(Orderitem orderitem) {
		try {
			dao.insertOrderitem(orderitem);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			MyBatisUtil.close(sqlSession);
		}
	}

}
