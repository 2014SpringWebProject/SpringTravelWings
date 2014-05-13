package dreamwings.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dreamwings.vo.Product;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

/****/
public class ProiductDBDAO implements ProductDAO{
	
	SqlSessionFactory factory;
	
	public void setFactory(SqlSessionFactory factory){
		this.factory = factory;
	}
	
	public List<Product> search() {
		SqlSession sess = factory.openSession(true);
		List<Product> list = sess.selectList("productns.selectList");
		sess.close();
		return list;
	}
	
	public Product search(int num) throws SQLException{
		SqlSession sess = factory.openSession(true);
		Product product = sess.selectOne("productns.selectByNum", num);
		sess.close();
		return product;
	}
	
}
