package sample.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import sample.dto.OrderDto;

public class OrderDao {
	private static OrderDao dao = new OrderDao();

	private OrderDao() {
	}

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

	public static OrderDao getOrderDao() {
		return dao;
	}

	// SqlSession의 메소드 selectList,insert의 첫 번째 인자는 member xml의 sql id와 동일하게 합니다.
	// 두 번째 인자는 전달한 파라미터
	public List<String> selectOrderByEmail() throws SQLException {
//		SqlSession mapper = SqlSessionBean.getSessionFactory();
		SqlSession mapper = factory.openSession();
		List<String> results = mapper.selectList("selectOrderByEmail");
		mapper.close();
		return results;

	}// selectOrderByEmail

	public int insert(OrderDto order) throws SQLException {
//		SqlSession mapper = SqlSessionBean.getSessionFactory();
		SqlSession mapper = factory.openSession();

		int result = mapper.insert("order.insert", order);
		// insert,update,delete 는 commit 명령이 필요합니다. (mybatis는 autocommit이 아닙니다.)
		mapper.commit();
		mapper.close();
		return result;

	}

	public List<OrderDto> selectByEmail(String email) throws SQLException {
//		SqlSession mapper = SqlSessionBean.getSessionFactory();
		SqlSession mapper = factory.openSession();
		
		List<OrderDto> results = mapper.selectList("selectByEmail", email);

		mapper.close();
		return results;
	}// selectByEmail

}// OrderDao
