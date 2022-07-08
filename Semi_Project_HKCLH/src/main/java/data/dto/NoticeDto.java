package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("notice")
@Data
public class NoticeDto {
private int nnum;
private String ntitle;
private String nname;
private String ncontent;
private String nphoto;
private Timestamp ndate;
}