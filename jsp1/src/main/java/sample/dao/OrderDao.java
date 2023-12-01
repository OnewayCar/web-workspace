package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.OrderDto;

public class OrderDao {
private static OrderDao dao = new OrderDao();
private OrderDao() {}
public static OrderDao getOrderDao() {
return dao;
}

public List<String> selectOrderByEmail() throws SQLException {
	Connection conn=OracleUtility.getConnection();
	String sql="select distinct email from orders";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	List<String> result = new ArrayList<>();
	while(rs.next()) {
		result.add(rs.getString(1));
	}
	ps.close();
	conn.close();
	return result;
	
	
}// selectOrderByEmail

public int insert(OrderDto order) throws SQLException {
	Connection conn=OracleUtility.getConnection();
	String sql="insert into orders values(?,?,?,sysdate) ";
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, order.getEmail());
	ps.setString(2, order.getPcode());
	ps.setInt(3, order.getQuantity());
	int result = ps.executeUpdate();
	
	ps.close();
	conn.close();
	return result;
	
	
}



public List<OrderDto> selectByEmail(String email) throws SQLException{
	Connection conn=OracleUtility.getConnection();
	String sql="select * from orders where email = ?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	
	List<OrderDto> results = new ArrayList<>();
	while(rs.next()) {
		results.add(new OrderDto(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getDate(4)));
		
	}//while
	ps.close();
	conn.close();
	return results;
}// selectByEmail




}// OrderDao
