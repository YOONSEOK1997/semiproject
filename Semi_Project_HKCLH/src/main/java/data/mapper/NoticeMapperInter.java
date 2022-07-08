package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.NoticeDto;

@Mapper
public interface NoticeMapperInter {
	public void insertNotice(NoticeDto dto);
	public void updateNotice(NoticeDto dto);
	public void deleteNotice(int num);
	
	public List<NoticeDto> getNoticeList();
	
	public NoticeDto getNotice(int num);
	public int getTotalCount();
}
