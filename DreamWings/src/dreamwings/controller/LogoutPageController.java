package dreamwings.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LogoutPageController implements Controller {

	public LogoutPageController() {

	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		String page = "/jsp/HomePage.jsp";
		
		ModelAndView mov = new ModelAndView("HomePage.jsp");
		req.getSession().invalidate();
		
		mov.setViewName(page);
		return mov;
	}

}
