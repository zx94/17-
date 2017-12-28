package zhoujiuri.test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import zhoujiuri.dao.ICategoryDAO;
import zhoujiuri.dao.IProductDAO;
import zhoujiuri.entity.Category;
import zhoujiuri.entity.Product;
import zhoujiuri.service.ICategoryService;
import zhoujiuri.service.IProductService;
import zhoujiuri.service.impl.CategoryService;
import zhoujiuri.service.impl.ProductService;
import zhoujiuri.util.MyBatisUtil;



public class CategoryTest {
	@Test
	public void test1(){
		SqlSession sqlSession = MyBatisUtil.getCurrentSession();
		System.out.println("sqlSession");
		ICategoryDAO dao = sqlSession.getMapper(ICategoryDAO.class);
		List<Category> list = dao.selectAll();
		System.out.println(list);
	}
	@Test//显示product的dao
	public void test2(){
		SqlSession sqlSession = MyBatisUtil.getCurrentSession();
		System.out.println("sqlSession");
		IProductDAO dao = sqlSession.getMapper(IProductDAO.class);
		List<Integer> cids=new ArrayList<Integer>();
		cids.add(6);
		cids.add(7);
		List<Product> list = dao.selectProductByCategory(cids,1,5);
		for(Product i:list){
			System.out.println(i);
		}
	}
	/*@Test
	public void test3(){
		ICategoryService service=new CategoryService();
		Category cat = service.getCategoryByParent(1);
		List<Category> cat1 = cat.getChildren();
		List<Integer> cids=new ArrayList<Integer>();
		for(Category i:cat1){
			cids.add(i.getId());
		}
		IProductService productService=new ProductService();
		List<Product> list = productService.getProductByCategory(cids);
		System.out.println(list);
	}*/
}
