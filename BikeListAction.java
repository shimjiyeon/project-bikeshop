package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BikeService;

public class BikeListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//전체 상품 목록을 받아오는 biz 클래스 메소드 실행.
		BikeService biz = BikeService.getInstance();
		List<Object> bikes = biz.getBikes();
		
		//bikeList.jsp View 페이지에 상품목록 데이터를 저장.전달.
		request.setAttribute("bikes", bikes);
		//pageContext.forward("bikeList.jsp");
		//서블릿이브로 다른 클래스 사용. - > ActionForward 클래스에서 구현.
		
		//오늘 본 상품.
		//쿠키 정보 중에 image로 시작하는 값을 가져와 ArrayList에 저장하기.
		ArrayList<String> images = new ArrayList<>();
		
		//쿠키 정보 모두 가져오기. 배열에 저장.
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i=0;i<cookies.length;i++){
				//쿠키 이름이 image로 시작하는지 검사.
				if(cookies[i].getName().startsWith("image")){
					//쿠키 value를 arraylist에 저장.
					images.add(cookies[i].getValue());
				}
			}
		}
		//최종 결과는 애트리뷰트에 저장.
		request.setAttribute("images", images);
	
		//View 페이지 이동 : pageContext.forward()
		ActionForward forward = new ActionForward();
		forward.setUrl("/bike/bikeList.jsp");
		// redirect 는 false 기본값
		
		return forward;
		
	}

}
