package com.spring.project.model.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<NoticeDTO> list() {
		return sqlSession.selectList("Notice.list");
	}

	@Override
	public void insert(NoticeDTO dto) {
		sqlSession.insert("Notice.insert", dto);
	}

	@Override
	public NoticeDTO detail(int idx) {
		return sqlSession.selectOne("Notice.detail", idx);
	}

	@Override
	public void update(NoticeDTO dto) {
		sqlSession.update("Notice.update", dto);
	}

	@Override
	public void delete(int idx) {
		sqlSession.delete("Notice.delete", idx);
	}

}
