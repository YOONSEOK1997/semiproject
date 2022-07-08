package data.mapper;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface LoginMapperInter {
	
	public String findmId(String mName,String mEmail);
	public String findmPassword(String mId,String mName,String mEmail);

}
