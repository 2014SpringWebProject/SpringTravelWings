package dreamwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import dreamwings.dao.MemberDAO;
import dreamwings.vo.Member;

public class JoinController implements Controller {

	public JoinController() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		String page = "/jsp/result.jsp";
		
		// 파라미터 추출. VO에 저장
		String id = req.getParameter("member_id");
		String passwd = req.getParameter("member_passwd");
		String name = req.getParameter("member_name");
		String mail = req.getParameter("member_mail");
		Member m = new Member(id, passwd, name, mail);
		
		// Dao.insert 호출
		try {
			System.out.println("입력값확인 : " + m);
			new MemberDAO().join(m);
		} catch (Exception e) {
			page = "/jsp/error.jsp";
			mav.addObject("error_msg", e.getMessage());
			e.printStackTrace();
		}
		
		mav.setViewName(page);
		return mav;
		
	}

}
