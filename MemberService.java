package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dao.BikeDao;
import dao.BikeUserDao;
import util.MySqlSession;
import vo.Bike;
import vo.BikeUser;

public class MemberService {
	private static MemberService service = new MemberService();
	private MemberService(){ }
	public static MemberService getInstance() {
		return service;
	}
	
	public BikeUser getMember(String userid){
		SqlSession mapper = MySqlSession.getSession();
		BikeUser vo=
		BikeUserDao.getInstance().getMember(mapper, userid);
		
		mapper.close();
		return vo;
	}
	
}


