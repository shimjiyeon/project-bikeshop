package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;


import dao.BikeUserDao;
import util.MySQLConnetionUtil;
import vo.BikeUser;

//DAO - Data Access Object : sql 실행을 위한 메소드 정의
public class BikeUserDao {
	private static BikeUserDao dao = new BikeUserDao();
	private BikeUserDao() { }
	public static BikeUserDao getInstance(){
		return dao;
	}
	
	
	public BikeUser getMember(SqlSession mapper, String userid){
		return mapper.selectOne("selectPwd", userid);
	}
	
	  public void join(BikeUser user) {
	 
	  String sql="insert into BikeUser values (?,?,?,?,?)"; 

		  Connection conn = MySQLConnetionUtil.connect();
		  PreparedStatement pstmt =null;
	 try { 
		 pstmt = conn.prepareStatement(sql);
	  pstmt.setString(1, user.getUserid()); 
	  pstmt.setString(2, user.getPassword());
	  pstmt.setString(3, user.getName());
	  pstmt.setString(4, user.getEmail());
	  pstmt.setString(5, user.getRoll());
	  
	  pstmt.execute(); 
	  conn.commit(); }
	 catch(SQLException e) { e.printStackTrace();
	  System.out.println("insert 오류 : " + e.getMessage()); }
	  finally { try {
	  pstmt.close(); } catch (SQLException e1) { } MySQLConnetionUtil.close(conn);
	  }
	  
	  }
		 
		
}







