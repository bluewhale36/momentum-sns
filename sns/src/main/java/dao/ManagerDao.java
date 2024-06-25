package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vo.CommVO;
import vo.MemberVO;
import vo.PostVO;
import vo.ProfileVO;

@Repository
public class ManagerDao implements IF_ManagerDao{

	private static String mapperQuery = "dao.IF_ManagerDao";
	
	@Inject
	SqlSession sql;
	
	@Override
	public List<MemberVO> getAllMembers() throws Exception {
		return sql.selectList(mapperQuery+".selectAllMembers");
	}

	@Override
	public List<ProfileVO> getAllProfiles() throws Exception {
		return sql.selectList(mapperQuery+".selectAllProfiles");
	}

	@Override
	public List<PostVO> getAllPosts() throws Exception {
		return sql.selectList(mapperQuery+".selectAllPosts");
	}

	@Override
	public List<CommVO> getAllComms() throws Exception {
		return sql.selectList(mapperQuery+".selectAllComms");
	}

	@Override
	public List<MemberVO> getAllAdmins() throws Exception {
		return sql.selectList(mapperQuery+".selectAllAdmins");
	}

}
