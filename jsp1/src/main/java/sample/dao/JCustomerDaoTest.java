package sample.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import sample.dto.JCustom;

class JCustomerDaoTest {
	
	@Test
	void daotest() {
		JCustomerDao dao = new JCustomerDao();
		assertNotNull(dao);
	}

@Test
void selectById() {
	JCustomerDao dao = new JCustomerDao();
	try {
		JCustom dto = dao.login("mina012","1111");
		assertNotNull(dto);
	}catch (Exception e) {
		e.getMessage();
	}
}

}
