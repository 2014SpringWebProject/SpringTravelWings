package dreamwings.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dreamwings.dao.ProductDAO;
import dreamwings.vo.Product;

public class DetailController  implements Controller {

	private ProductDAO productDao;

	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView("/jsp/DetailItemPage.jsp");
		
		int no = new Integer(req.getParameter("no"));
		Product p = productDao.search(no);
		
		mav.addObject("product", p);
		
		return mav;
	}

}
