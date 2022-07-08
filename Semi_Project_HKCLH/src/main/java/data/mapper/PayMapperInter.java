package data.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.PayDto;

@Mapper
public interface PayMapperInter {

	public void insertPay(PayDto dto);
	
	public void deleteOrderinfo(String mId);
	public void deleteCart(String mId);
	
	public List<PayDto> getmyPay(String mId);
	
}
