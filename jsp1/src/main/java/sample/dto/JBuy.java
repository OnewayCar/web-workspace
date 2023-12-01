package sample.dto;
// JBUY_DTO

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class JBuy {	// 구매와 관련된 CRUD 실행 SQL. DAO:JCustomerDao, JProductDao
	// 메소드 이름은 insert, update, delete, select, selectByPname 등등으로 이름을 작성하시오.
	
	private String buy_seq;
	private String customid;
	private String pcode;
	private int quantity;
	private Date buy_date;
	
	
	
	
}
