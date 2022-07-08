package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("qna")
@Data
public class QnADto {

	private int qnum;
	private String qcate;
	private String mid;
	private String qname;
	private String qtitle;
	private String qcontent;
	private String qimg;
	private String qstate;
	private Timestamp qdate;

	private int reg;
	private int restep;
	private int relevel;
	private int acount;
}
