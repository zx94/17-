package zhoujiuri.test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import zhoujiuri.dao.IUserDAO;
import zhoujiuri.entity.User;
import zhoujiuri.util.MyBatisUtil;


public class UserTest {
	@Test
	public void test1(){
		IUserDAO dao = MyBatisUtil.getCurrentSession().getMapper(IUserDAO.class);
		//dao.insert();
		
	}
	@Test
	public void test2(){
		SqlSession sqlSession = MyBatisUtil.getCurrentSession();
		System.out.println(sqlSession);
	}
}
