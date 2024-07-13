package service;

import java.util.HashMap;
import java.util.List;

import vo.PostVO;

public interface IF_MainService {
	public List<PostVO> mainAll() throws Exception;
	
	public List<PostVO> attachAll() throws Exception;
	//해당 아이디의 글 리스트
	public List<PostVO> myPostList(String id) throws Exception;
	// 그 사람이 쓴 글 갯수 반환 
	public int postLength(String id) throws Exception;
	// 파일 vo
	public List<PostVO> myfiles(String id) throws Exception;
	// 글번호에 따른 postvo
	public PostVO takePostVO(int no) throws Exception;
	// 좋아요 한 글 번호 리스트
	public List<PostVO> lovePostList(String id) throws Exception;
	// 게시물 조회수
	public void p_show(int no) throws Exception;
	// 글의 댓글 개수
	public int takeCommCnt(int no) throws Exception;
	// 글의 좋아요 개수
	public int takeP_loveCnt(int no) throws Exception;
	// 글의 리포스트 개수
	public int takeReCnt(int no) throws Exception;
	// 좋아요 증가 ajax
	public void p_love(HashMap<String, Object> params) throws Exception;
	// 좋아요 취소 ajax
	public void p_loveCancel(HashMap<String, Object> params) throws Exception;
	// 좋아요 누른 리스트
	public List<Integer> chklove(String id) throws Exception;
	
	
	public String[] getAttach(int no) throws Exception;
	
	public Integer getLoveCnt(int no) throws Exception;
	
	public Integer getRePostedCnt(int no) throws Exception;
	
	// 내가 팔로우한 사람의 게시물 중 가장 최신 게시물
	public int getCurMaxNum(List<String> followIdList) throws Exception;
	// 특정 범위의 rownum 가지는 tuple select.
	public List<PostVO> getFollowingPostList(HashMap<String, Object> fPostMap) throws Exception;
	// 내가 팔로우하지 않은 사람의 게시물 출력
	public List<PostVO> getRecommendPostList(HashMap<String, Object> recomMap) throws Exception;
	// postVo에 프로필사진 가져오기
	public String takePhoto(String id) throws Exception;
	// postVo에 닉네임 가져오기
	public String takeNick(String id) throws Exception;
	
}
