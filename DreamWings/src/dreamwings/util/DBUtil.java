package dreamwings.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;

/**
 * JNDI嚥∽옙DataSource�쒙옙Look Up占쎌꼵��Connection 揶쏆빘猿쒐몴占썹뵳�苑� 占쎈Ŋ�앲쳸�롪텛占쎌꼶��占쎈��믭옙占�
 * @author 占쎈씧留뚳옙占� * 
 */
	public class DBUtil {
	static DataSource db;
	static{
		 try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		 
	}
	
	public static Connection getConnection() throws SQLException {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "mirim";
		String passwd = "mirim";
		Connection con = DriverManager.getConnection(url, user, passwd);
		
		return con;
	}
	
	//ResultSet �ル굝利�
	public static void close(ResultSet rs){
			try {
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				System.out.println("占쎈Ŋ��獄쏆꼶沅�占썬끋��!");
			}
	}
	
	//Statement �ル굝利�
	public static void close(Statement ps){
		try {
			if(ps!=null) ps.close();
		} catch (SQLException e) {
			System.out.println("占쎈Ŋ��獄쏆꼶沅�占썬끋��!");
		}
	}
	
	//Connection �ル굝利�
	public static void close(Connection con){
		try {
			if(con!=null) con.close();
		} catch (SQLException e) {
			System.out.println("占쎈Ŋ��獄쏆꼶沅�占썬끋��!");
		}
	}
}
