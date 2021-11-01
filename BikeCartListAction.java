package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CartService;
import vo.Cart;

public class BikeCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		CartService cartBiz = new CartService();
		ArrayList<Cart> cartList = cartBiz.getCartList(request);

		// 상품 총 합계 금액 계산
		int totalMoney = 0;
		for (int i = 0; i < cartList.size(); i++) {
			int money = cartList.get(i).getPrice() * cartList.get(i).getQty();
			totalMoney += money;
		}
		
		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("cartList", cartList);
		//request 애트리뷰트를 전달해야 하므로, pageContext.forward("bikeCartList.jsp")
		ActionForward forward = new ActionForward();
		forward.setUrl("/bike/bikeCartList.jsp");
		return forward;
	}

}
