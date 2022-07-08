package data.dto;

import java.sql.Timestamp;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Alias("member")
@Data

public class MemberDto {

	private int mNum;
	
	private String mId;
	
	private String mName;
	
	private String mBirth;
	
	private String mPassword;
	
	private String mPost;
	
	private String mAddress1; // 주소
	private String mAddress2; // 상세 주소
	
	private String mPhone;
	
	private Timestamp mDate;
	
	private String mEmail;
	
	
}
