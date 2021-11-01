package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberService;
import vo.BikeUser;

public class LoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		ActionForward forward = new ActionForward();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		String userid=request.getParameter("userid");
		String password = request.getParameter("password");
		
		forward.setUrl("index.jsp");
		
		BikeUser member = MemberService.getInstance().getMember(userid);
		
		if(member.getPassword().equals(password)) {
			
			session.setAttribute("userid", userid);
			session.setAttribute("roll", member.getRoll());
			return forward;
		}else {
			out.print("<script>");
			out.print("alert('로그인 정보가 틀립니다.!');");
			out.print("history.back(-1);");
			out.print("</script>");
		}
	
	
		return null;
	}

}
