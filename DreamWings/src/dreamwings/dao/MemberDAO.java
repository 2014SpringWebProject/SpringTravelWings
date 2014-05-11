package dreamwings.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dreamwings.util.DBUtil;
import dreamwings.vo.Member;

public class MemberDAO {
	public void join(Member m) throws SQLException {
		Connection con = null;
		String q = "INSERT INTO member VALUES(?, ?, ?, ?)";
		PreparedStatement ps = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(q);
			ps.setString(1, m.getMember_id());
			ps.setString(2, m.getMember_passwd());
			ps.setString(3, m.getMember_name());
			ps.setString(4, m.getMember_mail());
			ps.executeUpdate();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}

	public boolean login(String id, String passwd) throws SQLException {
		Connection con = null;
		ResultSet rset = null;
		String q = "SELECT name FROM member WHERE id = ? AND passwd = ?";
		PreparedStatement ps = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(q);
			ps.setString(1, id);
			ps.setString(2, passwd);
			rset = ps.executeQuery();
			return rset.next();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}

	}
	
	// public Member search(int emp_no) throws SQLException {
	// Member e = null;
	// Connection con = null;
	// String q =
	// "select emp_no, emp_name, dept_name from scsa_employee where emp_no=? order by emp_no";
	// PreparedStatement ps = null;
	// ResultSet rs = null;
	// try {
	// con = DBUtil.getConnection();
	// ps = con.prepareStatement(q);
	// ps.setInt(1, emp_no);
	// rs = ps.executeQuery();
	//
	// if (rs.next()) {
	// e = new Member(rs.getInt("emp_no"), rs.getString("emp_name"),
	// rs.getString("dept_name"));
	// }
	//
	// } finally {
	// DBUtil.close(rs);
	// DBUtil.close(ps);
	// DBUtil.close(con);
	//
	// }
	//
	// return e;
	// }
}
