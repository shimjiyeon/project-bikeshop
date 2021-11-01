package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CartService;

public class BikeCartRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		//장바구니 View 페이지에서 삭제를 위해 선택한 상품명 파라미터 저장.
		String[] kinds = request.getParameterValues("delete");
		
		CartService cartBiz = new CartService();
		cartBiz.removeCartItem(request,kinds);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setUrl("bikeCartList.do");
		return forward;
	}

}
