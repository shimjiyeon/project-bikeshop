package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BikeService;
import vo.Bike;

public class BikeViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		BikeService bikeBiz = BikeService.getInstance();
		//조회 수 증가
		bikeBiz.updateCount(id); 
		//id값으로 한개의 행 검색.
		Bike bike = bikeBiz.getBike(id);
		
		//오늘 본 상품은 쿠키를 이용함. 
		//쿠키: 사용자의 요청 정보 중에 서버가 필요한 내용을 따로 수집하여 저장하는 데이터
		//서버측에 저장하지 않고 클라이언트 웹브라우저에서 저장. 
		//sql 결과로 가져온 데이터의 이미지 파일명만 쿠키에 저장.
		//쿠키 생성자 (Key,Value) 한쌍.
		Cookie cookie = new Cookie("image"+id, bike.getImage()); 
		cookie.setMaxAge(60*10);   //쿠키 유효시간, 초
		//쿠키를 추가, 쿠키 전체는 배열로 처리.
		//클라이언트 측에서 저장.
		response.addCookie(cookie);
		
		//결과를 애트리뷰트에 저장.
        request.setAttribute("bike",bike);
		//
        ActionForward forward = new ActionForward();
        forward.setUrl("/bike/bikeView.jsp");
		return forward;
	}

}
