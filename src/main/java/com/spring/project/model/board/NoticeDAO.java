package com.spring.project.model.board;

import java.util.List;

public interface NoticeDAO {
	List<NoticeDTO> list();
	void insert(NoticeDTO dto);
	NoticeDTO detail(int idx);
	void update(NoticeDTO dto);
	void delete(int idx);
}
