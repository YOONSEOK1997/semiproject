package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("review")
@Data
public class ReviewDto {

	private int rnum;
	private int rrate;
	private int rtitle;
	private String rname;
	private String rcontent;
	private String rphoto;
	private Timestamp rdate;
	
	private String pname;
	private String pphoto;
	
	private int pnum;
	private String mid;

}
