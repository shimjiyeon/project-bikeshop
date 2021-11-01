package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dao.BikeDao;
import util.MySqlSession;
import vo.Bike;

public class BikeService {
	private static BikeService service = new BikeService();
	private BikeService(){ }
	public static BikeService getInstance() {
		return service;
	}
	
	public void updateCount(int id){
		SqlSession mapper = MySqlSession.getSession();
		BikeDao.getInstance().updateCount(mapper, id);
		
		mapper.commit();
		mapper.close();
	}
	
	public Bike getBike(int id){
		SqlSession mapper = MySqlSession.getSession();
		BikeDao dao =BikeDao.getInstance();
		Bike vo = dao.getBike(mapper, id);
		mapper.close();
		return vo;
	}
	
	public List<Object> getBikes(){
		SqlSession mapper = MySqlSession.getSession();
		BikeDao dao =BikeDao.getInstance();
		List<Object> list = dao.getBikes(mapper);
		mapper.close();
		return list;
	}
	
	public void insert(Bike bike) {
		SqlSession mapper = MySqlSession.getSession();
		
		BikeDao.getInstance().insert(mapper, bike);
		mapper.commit();
		mapper.close();
	}
}


