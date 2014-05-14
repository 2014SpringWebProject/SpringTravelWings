package dreamwings.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dreamwings.dao.ProductDAO;
import dreamwings.vo.Product;


public class ListController implements Controller {
	private ProductDAO productDao;

	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView("/jsp/ListPage.jsp");
		
		String category = req.getParameter("category");
		System.out.print(category);
		List<Product> list = productDao.search(category);
		
		System.out.println(list);
		
		mav.addObject("list", list);
		
		return mav;
	}

}
