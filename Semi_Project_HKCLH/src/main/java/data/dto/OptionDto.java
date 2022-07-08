package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("option")
@Data
public class OptionDto {
	private int oid
	;
	private String pname;
}
