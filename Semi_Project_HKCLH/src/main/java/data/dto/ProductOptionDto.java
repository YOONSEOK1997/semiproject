package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
import lombok.Data;

@Alias("productoption") //별칭 : 클래스명 > 어디서? sql
@Data
public class ProductOptionDto {
	private int pnum;
	private int oid;
	private String oname;
	private int oprice;
	
}
