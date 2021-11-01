package dao;

import java.util.List;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import util.MySqlSession;

import org.apache.ibatis.session.SqlSession;

import vo.Bike;

//DAO - Data Access Object : sql 실행을 위한 메소드 정의
public class CommentDao {
	
	SqlSessionFactory factory = MySqlSession.getSessionFactory(); //새로추가
	private static CommentDao dao = new CommentDao();
	private CommentDao() { }
	
	public static CommentDao getInstance(){
		return dao;
	}
	
	public void updateCount(SqlSession mapper,int idx){
		mapper.update("bike_comment.updateCount", idx);
	}
	
	public Bike getcomment(SqlSession mapper, int idx){
		
		return mapper.selectOne("bike_comment.getcomment", idx);
	}
	
	public List<Object> getcomments(SqlSession mapper){
		return mapper.selectList("bike_comment.getcomments");
	}
	
	
}

