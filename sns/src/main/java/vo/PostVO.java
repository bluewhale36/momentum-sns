package vo;

import java.util.Arrays;

public class PostVO {
	private int no; //글번호
	private int re_no; //리포스트 번호
	private String cont; //글 내용
	private int shows; //조회수
	private String[] fileName; //첨부 파일
	private int privacy; //글 공개 여부
	private int c_block; //댓글 차단 여부
	private String id; //작성자 id
	private String p_date; //글 작성일
	private int commCnt; // 글의 댓글 수
	private int p_love; // 글의 좋아요 수
	private int reCnt; // 글의 좋아요 수
	private String photo; //프로필 사진
	private String nickName; //닉네임
	//getter
	public int getNo() {
		return no;
	}
	public int getRe_no() {
		return re_no;
	}
	public String getCont() {
		return cont;
	}
	public int getShows() {
		return shows;
	}
	public String[] getFileName() {
		return fileName;
	}
	public int getPrivacy() {
		return privacy;
	}
	public int getC_block() {
		return c_block;
	}
	public String getP_date() {
		return p_date;
	}
	public String getId() {
		return id;
	}
	public int getCommCnt() {
		return commCnt;
	}
	public int getP_love() {
		return p_love;
	}
	public int getReCnt() {
		return reCnt;
	}
	public String getPhoto() {
		return photo;
	}
	//setter
	public void setNo(int no) {
		this.no = no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public void setShows(int shows) {
		this.shows = shows;
	}
	public void setFileName(String[] fileName) {
		this.fileName = fileName;
	}
	public void setPrivacy(int privacy) {
		this.privacy = privacy;
	}
	public void setC_block(int c_block) {
		this.c_block = c_block;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setCommCnt(int commCnt) {
		this.commCnt = commCnt;
	}
	public void setP_love(int p_love) {
		this.p_love = p_love;
	}
	public void setReCnt(int reCnt) {
		this.reCnt = reCnt;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
}
