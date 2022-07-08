package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CartDto;

@Mapper
public interface CartMapperInter {

	//public int getTotalPrice();  //총 상품가격 구하기
	
	public int insertCart(CartDto dto);  //카트 담기
	
	// - 할인가(?)
	
	public List<Map<String,Object>> getAllCart(String mid); //카트 담긴목록 전부 가져오기
	
	
	public void deleteCart(String cid); //카트 물건 삭제
	
	//cart
	   public int insertCart2(CartDto dto);
	  
}
