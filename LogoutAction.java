package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print("alert('로그아웃 합니다.!');");
		out.print("location.href='/BikeShop';");
		out.print("</script>");
		
		HttpSession session = request.getSession();
		session.invalidate();
		return null;
	}

}
