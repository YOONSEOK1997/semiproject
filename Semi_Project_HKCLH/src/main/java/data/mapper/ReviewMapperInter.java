package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {

	
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
	
	public List<ReviewDto> getReviewList();
	public List<ReviewDto> getPnumReviewList();
	public List<Integer> getPnumList();
	public List<ReviewDto> getPnumReviewPartList(int pnum);
	public List<ReviewDto> getPnumReviewPartList2();
	public List<ReviewDto> getmIdReviewList(String mid);
	public List<ReviewDto> getPnumReviewListHB(int pnum);
	
	
	
	public ReviewDto getReview(int num);
	public int getTotalReviewCount();
	
	
	public int getTotalPnumReviewCount(int pnum);
	public double getAvgRrate();
	public List<ReviewDto> get3ReviewsList();
	
}
