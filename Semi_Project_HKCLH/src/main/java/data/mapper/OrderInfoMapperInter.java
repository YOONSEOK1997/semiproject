package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CartDto;
import data.dto.OrderInfoDto;

@Mapper
public interface OrderInfoMapperInter {

	public Integer selectLastOrderId(String mid); //제일 큰 orderId select
	
	public int insertOrderInfo(OrderInfoDto dto);  //오더인포에 담기
	
	public List<Map<String,Object>> getOrderInfo(String mid); //오더인포 상품출력 , int orderId
	
	public void deleteOrderInfo(int orderid); //상품 삭제
	
}  
