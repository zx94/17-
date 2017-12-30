package zhoujiuri.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import zhoujiuri.entity.Product;


public interface IProductService {
	//1.查所有的酒
	public List<Product> getAll();
	//2.查所有的酒，按上架时间排序
	public List<Product> getProductByaddtime();
	//3.查所有的书，按销量排序
	public List<Product> getProductBysale();
	//4.查所有的书，按上架时间排序，按销量排序(新书热卖)
	public List<Product> getProductByaddtimeAndsale();
	//5.根据编辑推荐查
	public List<Product> getProductByedit();
	//6.通过类别查,二级类别（查一个）
	public Map<String,Object> getProductByCategory(Integer pid,Integer cid,Integer currentPage);
	//7.通过id查
	public Product getProductById(Integer id);
}
