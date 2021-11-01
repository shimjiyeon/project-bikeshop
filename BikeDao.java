package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import util.MySqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Bike;

//DAO - Data Access Object : sql 실행을 위한 메소드 정의
public class BikeDao {
	private static BikeDao dao = new BikeDao();
	private BikeDao() { }
	public static BikeDao getInstance(){
		return dao;
	}
////	public List<Bike> getList(Map<String, Integer> map){   
//		List<Bike> list = null;
//		SqlSession mapper = Factory.openSession();
//		list = mapper.selectList("getList",map);
//		return list;
//	}
	public void updateCount(SqlSession mapper,int id){
		mapper.update("bike.updateCount", id);
	}
	
	public Bike getBike(SqlSession mapper, int id){
		
		return mapper.selectOne("bike.getBike", id);
	}
	
	public List<Object> getBikes(SqlSession mapper){
		return mapper.selectList("bike.getBikes");
	}
	
	public void insert(SqlSession mapper, Bike bike) {
		mapper.insert("bike.insert", bike);
	}	
	public void getCount(SqlSession mapper) {
		mapper.insert("getCount");
	}	


}





