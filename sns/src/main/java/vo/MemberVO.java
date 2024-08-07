package vo;

import java.util.List;

public class MemberVO {
	private String id; //아이디
	private String pass; //비밀번호
	private String name; //이름
	private String b_date; //생년월일
	private String email; //이메일
	private String admin; // 관리자
	
	//getter
	public String getId() {
		return id;
	}
	public String getPass() {
		return pass;
	}
	public String getName() {
		return name;
	}
	public String getB_date() {
		return b_date;
	}
	public String getEmail() {
		return email;
	}
	public String getAdmin() {
		return admin;
	}

	
	//setter
	public void setId(String id) {
		this.id = id;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
}
