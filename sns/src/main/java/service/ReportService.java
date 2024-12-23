package service;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.IF_ReportDAO;
import vo.BanVO;
import vo.ReportVO;

@Service
public class ReportService implements IF_ReportService {
	@Inject
	IF_ReportDAO rdao;
	@Override
	public void Report(ReportVO rvo) throws Exception {
		// TODO Auto-generated method stub
		rdao.report(rvo);
	}
	@Override
	public void banmember(BanVO bvo) throws Exception {
		// TODO Auto-generated method stub
		rdao.banmember(bvo);
	}
	@Override
	public void innocence(HashMap<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		rdao.innocence(params);
	}

}
