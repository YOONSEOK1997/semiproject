package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ProductDto;
import data.dto.ProductOptionDto;

@Mapper
public interface ProductMapperInter {
   public void insertProduct(ProductDto dto);
   public List<ProductDto> getProductList(String opt); 
   
   
   public void deleteProduct(int pnum); 
   public void updateProduct(ProductDto dto);
   public int getTotalProductCount(String opt);
   
   //디테일
   public ProductDto getProduct(int pnum); //()dto에서 받아옴
   public List<ProductOptionDto> getProductOptionList(int pnum);//옵션List 이차원배열
   
   //cart
   //public int insertCart(CartDto dto);
   public int getOid(int pnum);
   
}