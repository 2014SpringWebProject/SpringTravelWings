package dreamwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MypageBuylistPageController implements Controller {

	public MypageBuylistPageController() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/jsp/MyPageBuylistPage.jsp");
		return mav;
	}

}
