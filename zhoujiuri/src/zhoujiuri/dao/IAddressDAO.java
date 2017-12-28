package zhoujiuri.dao;

import java.util.List;

import zhoujiuri.entity.Address;


public interface IAddressDAO {
	//通过userid查
	public List<Address> selectAddressByuserid(Integer userid);
	//通过id查
	public Address selectAddressByid(Integer id);
	//添加地址信息
	public void insertAddress(Address address);
	//修改地址信息
	public void updateAddress(Address address);
}
