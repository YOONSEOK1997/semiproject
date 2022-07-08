package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.QnADto;

@Mapper
public interface QnAMapperInter {

	public void insertQnA(QnADto dto);
	public void updateQnA(QnADto dto);
	public void deleteQnA(int qnum);
	
	public List<QnADto> getQnAList(Map<String, Integer> map);
	
	public QnADto getQnA(int qnum);
	public int getTotalQnACount();
	public int getMaxNum();
	public void updateReStep(Map<String, Integer> map);
	public QnADto getData(int qnum);
	public List<QnADto> getmyQnA(String mId);

}
