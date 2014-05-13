package dreamwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dreamwings.dao.MemberDAO;

public class LoginController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {

		ModelAndView mav = new ModelAndView();
		String page = "/jsp/HomePage.jsp";
		// 파라미터 추출. VO에 저장
		String id = req.getParameter("member_id");
		String passwd = req.getParameter("member_passwd");
		HttpSession session = req.getSession(true);
		ModelAndView m = new ModelAndView("Index.jsp");
		
		// Dao.insert 호출
		boolean b = false;
		try {
			// System.out.println("입력값확인 : " + m);
			b = new MemberDAO().login(id, passwd);
			if (b == true) {
				req.getSession().setAttribute("userid", id);
				mav.addObject("msg", "로그인성공");
				session.setAttribute("member_id", id); // session 정보 저장
			} else {
				page = "error.jsp";
			}
		} catch (Exception e) {
			page = "/jsp/error.jsp";
			mav.addObject("error_msg", e.getMessage());
			e.printStackTrace();
		}
		mav.setViewName(page);
		return mav;
	}

}
