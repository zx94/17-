package zhoujiuri.dao;

import zhoujiuri.entity.User;

public interface IUserDAO {
	//添加
	public void insert(User user);
	//查询
	public User selectByEmail(User user);
}
