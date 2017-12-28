package zhoujiuri.service.impl;

import org.apache.ibatis.session.SqlSession;

import zhoujiuri.dao.IUserDAO;
import zhoujiuri.entity.User;
import zhoujiuri.service.IUserService;
import zhoujiuri.util.MD5Util;
import zhoujiuri.util.MyBatisUtil;


public class UserService implements IUserService{
	
	//登录
	public User login(User user) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=null;
		User user1=null;
		try {
			sqlSession = MyBatisUtil.getCurrentSession();
			IUserDAO dao=sqlSession.getMapper(IUserDAO.class);
			user1=dao.selectByEmail(user);
			if(user1==null) throw new RuntimeException("email和password错误");
			String str=MD5Util.encodeValue(user.getPassword());
			if(!user1.getPassword().equals(str)) throw new RuntimeException("email和password错误");
			sqlSession.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			sqlSession.rollback();
			throw new RuntimeException(e);
		}finally{
			MyBatisUtil.close(sqlSession);
		}
		return user1;
	}
	//注册
	public void regist(User user) {
		SqlSession sqlSession=null;
		// TODO Auto-generated method stub
		 try {
			sqlSession = MyBatisUtil.getCurrentSession();
			 IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			 User user1= dao.selectByEmail(user);
			 if(user1!=null) throw new RuntimeException("该用户已存在");
			 user.setPassword(MD5Util.encodeValue(user.getPassword()));
			 dao.insert(user);
			 sqlSession.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			sqlSession.rollback();
			throw new RuntimeException(e);
		}finally{
			MyBatisUtil.close(sqlSession);
		}
		 
	}
	
}
