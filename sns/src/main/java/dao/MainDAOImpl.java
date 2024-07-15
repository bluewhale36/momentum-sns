package dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import vo.PostVO;

@Repository
public class MainDAOImpl implements IF_MainDAO{
	public static String mapperQuery = "dao.IF_MainDAO";
	
	@Inject
	SqlSession sqlsession;
	
	@Override
	public List<PostVO> mainAll() {
		
		return sqlsession.selectList(mapperQuery+".mainList");
	}

	@Override
	public List<PostVO> attachAll() throws Exception {
		
		return sqlsession.selectList(mapperQuery+".attachList");
	}

	@Override
	public List<String> postAttach(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".postAttach",no);
	}

	@Override
	public List<PostVO> myPostList(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".myPost", id);
	}

	@Override
	public int postLength(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".postLength", id);
	}

	@Override
	public PostVO takePostVO(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".takePostVO", no);
	}
	// 자신의 아이디가 좋아요 누른 번호리스트
	@Override
	public List<PostVO> lovePostList(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".lovePostList", id);
	}
	// 글 번호 조회수
	@Override
	public void p_show(int no) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.update(mapperQuery+".p_show",no);
	}
	@Override
	public int takeCommCnt(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".takeCommCnt",no);
	}

	@Override
	public int takeP_loveCnt(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".takeP_loveCnt",no);
	}

	@Override
	public int takeReCnt(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".takeReCnt",no);
	}
	// 좋아요 추가
	@Override
	public void p_love(HashMap<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery+".p_love",params);
	}
	// 좋아요 취소
	@Override
	public void p_loveCancel(HashMap<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.delete(mapperQuery+".p_loveCancel",params);
	}

	@Override
	public List<Integer> chklove(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".chklove", id);
	}

	@Override
	public List<String> getAttach(int no) throws Exception {
		return sqlsession.selectList(mapperQuery+".selectAttachWhere", no);
	}

	@Override
	public Integer getLoveCnt(int no) throws Exception {
		return sqlsession.selectOne(mapperQuery+".selectLoveCnt", no);
	}

	@Override
	public Integer getRePostedCnt(int no) throws Exception {
		return sqlsession.selectOne(mapperQuery+".selectRePostedCnt", no);
	}

	@Override
	public int getCurMaxNum(List<String> followIdList) throws Exception {
		return sqlsession.selectOne(mapperQuery+".selectMaxWhere", followIdList);
	}

	@Override
	public List<PostVO> getFollowingPostList(HashMap<String, Object> fPostMap) throws Exception {
		return sqlsession.selectList(mapperQuery+".selectFollowingPostRN", fPostMap);
	}

	@Override
	public List<PostVO> getRecommendPostList(HashMap<String, Object> recomMap) throws Exception {
		return sqlsession.selectList(mapperQuery+".selectRecomPostRN", recomMap);
	}

	@Override
	public String takePhoto(String id) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(id+"dao");
		return sqlsession.selectOne(mapperQuery+".takePhoto", id);
	}

	@Override
	public String takeNick(String id) throws Exception {
		// TODO Auto-generated method stub
		
		String nick = sqlsession.selectOne(mapperQuery+".takeNick", id);
		System.out.println(nick+"dao");
		return nick;
	}

	

}
