package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.Community;

import mybatis.SqlSessionBean;

public class CommunityDAO {

	private static CommunityDAO dao = new CommunityDAO();
	private CommunityDAO() {}
	
	
	public static CommunityDAO getCommunityDAO() {
		return dao;
	}

	// select * from community
	public List<Community> list() {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> results=mapper.selectList("list");
		mapper.close();
		return results;
	}//list end
	
	public List<Community> pagelist(Map<String,Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> results=mapper.selectList("pagelist",map);
		mapper.close();
		return results;
	}//pagelist end
	
	
	public int count() {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("count");
		mapper.close();
		return result;
	}// count end
	
	public Community selectByIdx(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		Community result = mapper.selectOne("selectByIdx",idx);
		mapper.close();
		return result;
		
	}
	
	public int setReadCount(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("setReadCount",idx);
		mapper.close();
		return result;
	}//setReadCount end
	
	public int update(Community vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("update",vo);
		mapper.close();
		return result;
	}//update end
	
	public int delete(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("delete",idx);
		mapper.commit();
		mapper.close();
		return result;
	}//delete end
	
	public long insert(Community vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		mapper.insert("community.insert",vo);
		mapper.commit();
		mapper.close();
		// 매퍼xml에서 selectKey로 시퀀스 값을 vo 객체 idx 프로퍼티에 저장시켰습니다.
		return vo.getIdx();
	}
}
