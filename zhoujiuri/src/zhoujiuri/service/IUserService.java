package zhoujiuri.service;

import zhoujiuri.entity.User;

public interface IUserService {
	//登录
	public User login(User user);
	//注册
	public void regist(User user);
}
