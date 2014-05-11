package dreamwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginPageController implements Controller {

	public LoginPageController() {
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/jsp/LoginPage.jsp");
		return mav;
		
	}

}
