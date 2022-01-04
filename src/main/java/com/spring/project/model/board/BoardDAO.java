package com.spring.project.model.board;

import java.util.List;

public interface BoardDAO {
	public List<BoardDTO> list();
	void insert(BoardDTO dto);
	public BoardDTO detail(int idx);
	void update(BoardDTO dto);
	void delete(int idx);
	int countBoard();
	List<BoardDTO> selectBoard(pagingDTO paging);
}
