package controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import service.IF_ManagerService;
import vo.ManagerVO;
import vo.PageVO;
import vo.PostVO;
import vo.ProfileVO;

@Controller
public class ManagerController {
	
	@Inject
	IF_ManagerService mservice;
	
	@GetMapping("manager") 
	public String managePage(HttpSession session, Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String nowId = String.valueOf(session.getAttribute("userid"));
		if(!(mservice.chkmanager(nowId)=="관리자")) {
			response.sendRedirect(request.getContextPath()+"/loginpage"); // 처음 화면으로 돌아가
		}
		model.addAttribute("curId", session.getAttribute("userid"));
		
		model.addAttribute("memberCnt", mservice.getAllMemberCount());
		model.addAttribute("reportCnt", mservice.getTodayReportCount());
		model.addAttribute("bannedCnt", mservice.getCurBannedCount());
		
		return "manageDashboard";
	}
	
	@GetMapping("/manager/user/*")
	public String manageUser(HttpSession session, Model model, HttpServletRequest req,
			@ModelAttribute PageVO pvo, @ModelAttribute ManagerVO mvo) throws Exception {
		
		model.addAttribute("curId", (String)session.getAttribute("userid"));
		
		String[] uri = req.getRequestURI().split("/");
		String curType = uri[uri.length-1].split("\\?")[0];
		
		if (pvo.getPage() == null) {
			pvo.setPage(1);
		}
		
		if (curType.equals("user")) {
			pvo.setSearchLoc("member");
		} else if (curType.equals("banned")) {
			pvo.setSearchLoc("ban");
		} else {
			pvo.setSearchLoc(curType);
		}
		int cnt = mservice.getTotalCount(pvo);
		pvo.setTotalCount(cnt);
		
		
		if (curType.equals("user") || curType.equals("member")) {
			model.addAttribute("users", mservice.getAllMembers(0));
		} else if (curType.equals("profile")) {
			model.addAttribute("profiles", mservice.getAllProfiles(0));
		} else if (curType.equals("post")) {
			model.addAttribute("posts", mservice.getAllPosts(0));
		} else if (curType.equals("admin")) {
			model.addAttribute("users", mservice.getAllAdmins(0));
		} else if (curType.equals("banned")) {
			model.addAttribute("banned", mservice.getAllBanned(0));
		} else if (curType.equals("comm")) {
			model.addAttribute("comms", mservice.getAllComms(0));
		} else {
			return "redirect:/manager";
		}
		
		model.addAttribute("pagevo", pvo);
		model.addAttribute("curURI", req.getRequestURI());
		model.addAttribute("cnt", cnt);
		return "manageUser";
		
	}
	
	@GetMapping("/manager/search")
	public String searchInUser(HttpServletRequest req, Model model, @RequestParam("searchArea")String area,
			@ModelAttribute PageVO pvo) throws Exception {
		String loc = pvo.getSearchLoc();
		if (pvo.getPage() == null) {
			pvo.setPage(1);
		}
		int cnt = 0;
		if (area.equals("User")) {
			if (loc.equals("member")) {
				cnt = mservice.getMembersSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("users", mservice.searchMembers(pvo));
			} else if (loc.equals("profile")) {
				cnt = mservice.getProfilesSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("profiles", mservice.searchProfiles(pvo));
			} else if (loc.equals("post")) {
				cnt = mservice.getPostsSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("posts", mservice.searchPosts(pvo));
			} else if (loc.equals("comm")) {
				cnt = mservice.getCommsSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("comms", mservice.searchComms(pvo));
			} else if (loc.equals("admin")) {
				cnt = mservice.getAdminsSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("users", mservice.searchAdmins(pvo));
			} else if (loc.equals("banned")) {
				cnt = mservice.getBannedSearchCount(pvo);
				pvo.setTotalCount(cnt);
				model.addAttribute("banned", mservice.searchBanned(pvo));
			}
		} else if (area.equals("Report")) {
			
		} else {
			return "redirect:/manager";
		}
		model.addAttribute("pagevo", pvo);
		model.addAttribute("curURI", req.getRequestURI());
		model.addAttribute("cnt", cnt);
		
		return "manage"+area;
	}
	
	@GetMapping("/manager/report/*")
	public String managereport(HttpServletRequest req,HttpSession session, Model model) throws Exception {
		model.addAttribute("curId", session.getAttribute("userid"));
		
		String[] uri = req.getRequestURI().split("/");
		String curType = uri[uri.length-1].split("\\?")[0];
		
		if (curType.equals("report") || curType.equals("report_post")) {
			model.addAttribute("report_post", mservice.getAllreport_post());
		} else if (curType.equals("report_comm")) {
			model.addAttribute("report_comm", mservice.getAllreport_comm());
		} else if (curType.equals("report_chat")) {
			model.addAttribute("report_chat", mservice.getAllreport_chat());
		}
		return "manageReport";
	}
	
	
	
	@GetMapping("remove-past-searchword")
	@ResponseBody
	public int removePastSearchWord() throws Exception {
		return mservice.removePastSearchWord();
	}
	
	@GetMapping("/manager/paging/user/*")
	public String newPage(HttpSession session, Model model, HttpServletRequest req,
			@RequestParam("pageNo")int pageNo, @ModelAttribute PageVO pvo) throws Exception {
		model.addAttribute("curId", (String)session.getAttribute("userid"));
		
		String[] uri = req.getRequestURI().split("/");
		String curType = uri[uri.length-1].split("\\?")[0];
		
		pvo.setSearchLoc(curType);
		model.addAttribute("pagevo", pvo);
		
		if (curType.equals("user") || curType.equals("member")) {
			model.addAttribute("users", mservice.getAllMembers(pageNo));
		} else if (curType.equals("profile")) {
			model.addAttribute("profiles", mservice.getAllProfiles(pageNo));
		} else if (curType.equals("post")) {
			model.addAttribute("posts", mservice.getAllPosts(pageNo));
		} else if (curType.equals("admin")) {
			model.addAttribute("users", mservice.getAllAdmins(pageNo));
		} else if (curType.equals("banned")) {
			model.addAttribute("banned", mservice.getAllBanned(pageNo));
		} else if (curType.equals("comm")) {
			model.addAttribute("comms", mservice.getAllComms(pageNo));
		} else {
			return "redirect:/manager";
		}
		
		return "manageUser";
	}
}
