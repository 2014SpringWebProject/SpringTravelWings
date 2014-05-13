package dreamwings.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dreamwings.vo.Product;


public interface ProductDAO {
	public List<Product> search()throws SQLException;
	public Product search(int num)throws SQLException;
}
