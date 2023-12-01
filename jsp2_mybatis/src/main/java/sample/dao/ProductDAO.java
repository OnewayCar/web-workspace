package sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import sample.dto.ProductDTO;

public class ProductDAO {

	private static ProductDAO dao = new ProductDAO();
	private ProductDAO() {}
	public static ProductDAO getProductDAO() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

	public List<ProductDTO> getProducts(){
		SqlSession mapper = factory.openSession();
		List<ProductDTO> list = mapper.selectList("products.getProducts");
		mapper.close();
		return list;
	}
	
	public int insert(ProductDTO dto) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("products.insert",dto);
		mapper.commit();		//★★★ insert 는 commit 필수.
		mapper.close();
		return result;
	}

	//★★★ 동일한 상품명이 여러개 이면 오류 생깁니다.
	public ProductDTO getByPname(String pname) {
		SqlSession mapper = factory.openSession();
		ProductDTO dto = mapper.selectOne("products.getByPname", pname);
		mapper.close();
		return dto;
	}

}
