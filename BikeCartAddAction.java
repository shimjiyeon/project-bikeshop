package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BikeService;
import service.CartService;
import vo.Bike;

public class BikeCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		BikeService biz = BikeService.getInstance();
		Bike bike = biz.getBike(id);

		CartService cartService = new CartService();
		cartService.addCart(request,bike);
		
		ActionForward forward = new ActionForward();
		
		forward.setUrl("bikeCartList.do");
		forward.setRedirect(true);  //response.sendRedirect("bikeCartList.do");
									//	전달할 request 애트리뷰트가 없으므로
		return forward;
	}

}
