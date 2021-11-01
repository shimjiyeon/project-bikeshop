package action;

import javax.servlet.RequestDispatcher;

//페이지 이동 방법
//1)RequestDispatcher dispatcher =
//request.getRequestDispatcher("test.jsp");
//dispatcher.forward(request, response);

//2)response.sendRedirect("test.jsp");

public class ActionForward {
	private boolean redirect;
	//pageContext.forward(url);   , request.setAttribute() 사용 - false	
	//respose.sendRedirect(url);  - true
	
	private String url;   //View xxx.jsp 페이지를 설정.

	public boolean isRedirect() {
		return redirect;
	}

	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
