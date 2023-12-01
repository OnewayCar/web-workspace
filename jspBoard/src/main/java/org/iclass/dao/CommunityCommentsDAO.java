package org.iclass.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.CommunityComments;

import mybatis.SqlSessionBean;

public class CommunityCommentsDAO {
	private static CommunityCommentsDAO dao = new CommunityCommentsDAO();
	private CommunityCommentsDAO() {}
	public static CommunityCommentsDAO getInstance() {
		return dao;
	}

	public int insert(CommunityComments vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int idx = mapper.insert("communityComments.insert",vo);
		mapper.commit();
		mapper.close();
		return idx;
	}
	
	public int delete(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("communityComments.deletecmt",idx);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	//idx 최대값 구하기
	public int maxOf() {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.selectOne("communityComments.maxOf");
		session.close();
		return result;
	}

	public List<CommunityComments> commentsList(long idx){
		SqlSession session = SqlSessionBean.getSession();
		List<CommunityComments> list = session.selectList("commentsList",idx);
		session.close();
		return list;
	}
	
	public int setCommentCount(long idx) {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.update("setCommentCount", idx);
		session.commit();
		session.close();
		return result;
				
		
	}
}