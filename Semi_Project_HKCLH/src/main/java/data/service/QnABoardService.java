package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.QnADto;
import data.mapper.QnAMapperInter;

@Service
public class QnABoardService implements QnABoardServiceInter {
	@Autowired
	private QnAMapperInter mapper;
	
	@Override
	public int getMaxNum() {
		return mapper.getMaxNum();
	}

	@Override
	public void updateReStep(int reg, int restep) {
		Map<String, Integer> map = new HashMap<>();
		map.put("reg", reg); //xml과 같은 이름으로 줄것 
		map.put("restep", restep); 
		mapper.updateReStep(map);
	}

	@Override
	public int getTotalCount() {
		return mapper.getTotalQnACount();
	}

	@Override
	public List<QnADto> getQnAList(int start, int perpage) {
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start); //xml과 같은 이름으로 줄것 
		map.put("perpage", perpage); 
		return mapper.getQnAList(map);
	}

	@Override
	public void insertQnA(QnADto dto) {
		int reg = dto.getReg();
		int restep=dto.getRestep();
		int relevel = dto.getRelevel();
		int qnum=dto.getQnum();
					
	//새 글인경우
	if(qnum==0)
	{
		//새 글인 경우
		reg = this.getMaxNum()+1;
		restep=0;
		relevel=0;
	} else {
		//답글인 경우
		//기존 restep 보다 큰 값은 모두 1 증가하기
		this.updateReStep(reg, restep);
		//기존 값들보다 1 증가
		restep++;
		relevel++;
	}
		
	dto.setReg(reg);
	dto.setRestep(restep);
	dto.setRelevel(relevel);
	//insert
	mapper.insertQnA(dto);
}


	@Override
	public QnADto getData(int qnum) {
		return mapper.getData(qnum);
	}
	
	@Override
	public void updateQnA(QnADto dto) {
		mapper.updateQnA(dto);
	}
	
	@Override
	public void deleteQnA(int qnum) {
		mapper.deleteQnA(qnum);
	}

}
