package util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MySqlSession {
	public static SqlSessionFactory sqlSessionFactory;
	static{
		//0. xml 파일의 위치: 패키지 구분 / 기호
		String resource = "util/mybatis-config.xml";
		InputStream inputStream=null;
		try {
			//1. 데이터베이스 연결 설정 XML 읽어오기
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		//2. XML 설정 내용을 SqlSessionFactory 객체 생성
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
	}
	
	public static SqlSession getSession() {
		//3.SqlSessionFactory 로 SqlSession 객체 생성
		return sqlSessionFactory.openSession();  //리턴 타입 SqlSession
	}
	
	public static SqlSessionFactory getSessionFactory() {    //새로 추가
		return sqlSessionFactory;
	}
	
}
