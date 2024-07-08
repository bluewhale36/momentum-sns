package dao;

import java.util.HashMap;
import java.util.List;

import vo.CommVO;
import vo.ManagerVO;
import vo.MemberVO;
import vo.PageVO;
import vo.PostVO;
import vo.ProfileVO;
import vo.ReportVO;

public interface IF_ManagerDao {

	public List<MemberVO> getAllMembers(PageVO pvo) throws Exception;
	
	public List<ProfileVO> getAllProfiles(PageVO pvo) throws Exception;
	
	public List<PostVO> getAllPosts(PageVO pvo) throws Exception;
	
	public List<CommVO> getAllComms(PageVO pvo) throws Exception;
	
	public List<MemberVO> getAllAdmins(PageVO pvo) throws Exception;
	
	// public List<BanVO> getAllBanned(PageVO pvo) throws Exception;
	
	public List<MemberVO> searchMembers(PageVO pvo) throws Exception;
	
	public List<ProfileVO> searchProfiles(PageVO pvo) throws Exception;
	
	public List<PostVO> searchPosts(PageVO pvo) throws Exception;

	public List<CommVO> searchComms(PageVO pvo) throws Exception;
	
	public List<MemberVO> searchAdmins(PageVO pvo) throws Exception;
	
//	public List<MemberVO> searchBanned(PageVO pvo) throws Exception;
	
	public int getTotalCount(PageVO pvo) throws Exception;
	
	public int getMembersSearchCount(PageVO pvo) throws Exception;

	public int getProfilesSearchCount(PageVO pvo) throws Exception;
	
	public int getPostsSearchCount(PageVO pvo) throws Exception;

	public int getCommsSearchCount(PageVO pvo) throws Exception;
	
	public int getAdminsSearchCount(PageVO pvo) throws Exception;
	// 신고 글 가져오기
	public List<ReportVO> getAllreport_post();

	public List<ReportVO> getAllreport_comm();

	public List<ReportVO> getAllreport_chat();
	
//	public int getMemberSearchCount(PageVO pvo) throws Exception;
	
	public int getAllMemberCount() throws Exception;
	
	public int getTodayReportCount() throws Exception;
	
	public int getCurBannedCount() throws Exception;
	
	public int removePastSearchWord() throws Exception;
	
}