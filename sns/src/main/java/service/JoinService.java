package service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.IF_JoinDao;
import vo.MemberVO;

@Service
public class JoinService implements IF_JoinService{
	@Inject
	IF_JoinDao jdao;
	@Override
	public void inputMember(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		jdao.inputMember(mvo);
	}
	@Override
	public String chkid(String id) throws Exception {
		// TODO Auto-generated method stub
		return jdao.chkid(id);
	}
	@Override
	public String chkemail(String id) throws Exception {
		// TODO Auto-generated method stub
		return jdao.chkemail(id);
	}
	@Override
	public String chkdupemail(String email) {
		// TODO Auto-generated method stub
		return jdao.chkdupemaip(email);
	}

}
