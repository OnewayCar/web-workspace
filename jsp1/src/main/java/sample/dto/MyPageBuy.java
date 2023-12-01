package sample.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Builder
@NoArgsConstructor
@Getter
@Setter
@ToString
public class MyPageBuy {
	private Date buy_date;
	private String customid;
	private String pcode;
	private String pname;
	private int price;
	private int quantity;
	private long total;

}
