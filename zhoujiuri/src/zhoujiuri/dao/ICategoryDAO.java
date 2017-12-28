package zhoujiuri.dao;

import java.util.List;

import zhoujiuri.entity.Category;


public interface ICategoryDAO {
	//查所有一级类别和二级类别
	public List<Category> selectAll(); 
	//通过一级类别的id查二级类别
	public Category selectByParent(Integer id);
}
