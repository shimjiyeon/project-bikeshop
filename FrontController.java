package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import action.BikeAddAction;
import action.BikeAddOKAction;
import action.BikeCartAddAction;
import action.BikeCartListAction;
import action.BikeCartRemoveAction;
import action.BikeListAction;
import action.BikeViewAction;
import action.LoginAction;
import action.LoginOkAction;
import action.LogoutAction;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String requestURI = request.getRequestURI();
    	// /MyShop/bikeList.do
    	
    	String contextPath = request.getContextPath();
    	// /MyShop  , 길이 7
    	
    	String command = 
        requestURI.substring(contextPath.length());
    	
    	//System.out.println(requestURI);
    	//System.out.println(contextPath);
    	//System.out.println(command);
    	Action action = null;
    	ActionForward forward = null;
    	
    	if (command.equals("/bikeList.do")){
    		action = new BikeListAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	} else if(command.equals("/bikeView.do")){
    		action = new BikeViewAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	} else if(command.equals("/bikeCartAdd.do")){
    		action = new BikeCartAddAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	} else if(command.equals("/bikeCartRemove.do")){
    		action = new BikeCartRemoveAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	} else if(command.equals("/bikeCartList.do")){
    		action = new BikeCartListAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	}else if(command.equals("/bikeAdd.do")){
    		action = new BikeAddAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	}else if(command.equals("/bikeAddOk.do")){
    		action = new BikeAddOKAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}else if(command.equals("/login.do")){
    		action = new LoginAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}else if(command.equals("/loginOk.do")){
    		action = new LoginOkAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}else if(command.equals("/logout.do")){
    		action = new LogoutAction();
    		
    		
    		
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}else if(command.equals("/c_boardView.do")){
    		action = new LogoutAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}else if(command.equals("/q_boardView.do")){
    		action = new LogoutAction();
    		
    		
    		
    		
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e ) {
				e.printStackTrace();
			}
    	}
    	

    	//페이지 이동
    	if(forward != null) {
	    	if(forward.isRedirect()){
	    		response.sendRedirect(forward.getUrl());
	    	}else { //애트리뷰트를 전달하는 경우
	    		RequestDispatcher dispatcher =
	    			request.getRequestDispatcher(forward.getUrl());
	    		dispatcher.forward(request, response);
	    	}
    	}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}

