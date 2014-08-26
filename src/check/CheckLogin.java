package check;

import java.sql.*;

import dbconn.BaseConn;

public class CheckLogin {

	public String checklogin(String userName, String userPassword)
			throws SQLException, ClassNotFoundException {
		BaseConn conn = null;
		try {
			conn = new BaseConn();

			// 创建一个用预处理的SQL语句
			String sql = "select * from teacherinfo where id=?";

			// 创建一个预处理SQL对象
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1, userName);

			// 从数据库中查询该用户名是否在数据库存在
			ResultSet rs = conn.executeQuery();
			if (rs.next()) {
				if (rs.getString("teacherpwd").equals(userPassword)) {
					return "SUCCESS_LOGIN";
				} else
					return "WRONG_PASSWORD";
			} else
				return "NONE_USER";
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			throw ex;
		} finally {
			conn.closeDB(); // 关闭数据库连接，释放JDBC资源
		}
	}

	/**
	 * 如果是新用户时，将用户登录用户名和密码保存到数据库中
	 * */
	public boolean saveToDataBase(String userName, String userPassword)
			throws SQLException, ClassNotFoundException {
		BaseConn conn = null;
		try {
			conn = new BaseConn();
			String sql = "insert into userinfo(userName,userPassword) values(?,?)";
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, userPassword);
			conn.executeUpdate();
			return true;
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			throw ex;
		} finally {
			conn.closeDB(); // 关闭数据库连接，释放JDBC资源
		}
	}
}
