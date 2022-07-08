package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
import lombok.Data;

@Alias("product") //별칭 : 클래스명 > 어디서? sql
@Data
public class ProductDto {
	private int pnum;
	private String pname;
	private int pprice;
	private String pcate1;
	private String pcate2;
	private double prate;
	private int pratecnt;
	private String pdate;
	private String pphoto;
	private String pphoto2;
	private String pcontent;
	private String ptag;
	
	
	private int oid;
}
