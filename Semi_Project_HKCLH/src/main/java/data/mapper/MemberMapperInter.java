package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public int getTotalCount();  //총개수 구하기
	public void insertMember(MemberDto dto);
	public int getmId(String mId);
	public int getchk(String mId,String mPassword);
	
	public void alterMember(MemberDto dto);
	
	public List<MemberDto> getmemberData(String mId);
	public void deleteMember(String mId);
	
	public String getmName(String id);
	
	public int login(Map<String, String> map);
	public int kakaologin(Map<String, String> map);
	
}
