package service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Bike;
import vo.Cart;


public class CartService {
	//장바구니에 상품 추가하기 - 선택한 상품이 Bike 클래스 객체로 전달.
	public void addCart(HttpServletRequest request, Bike bike) {
		//장바구니는 session 객체를 이용
		HttpSession session = request.getSession();
		
		//장바구니 애트리뷰트 cartList 가져오기
		ArrayList<Cart> cartList = 
		(ArrayList<Cart>) session.getAttribute("cartList"); 

		//null이면 새로 만들기
		if (cartList == null) { 
			cartList = new ArrayList<Cart>(); 
		}
		
		//Cart 객체 생성
		Cart cart = null; 
		boolean newCart = true;
		
		//현재 장바구니에 담은 상품이 기존 cartList에 있으면, 수량을 1증가
		for (int i = 0; i < cartList.size(); i++) {
			cart = cartList.get(i);
			if (bike.getKind().equals(cart.getKind())) { //추가한 bike와 cartList 항목이 같은지 비교
														
				newCart = false;
				cart.setQty(cart.getQty() + 1); 
												
			}
		}

		//cartList에 없는 새로운 상품이면 인수로 받은 bike 객체를 cart에 저장.
		if (newCart) {
			cart = new Cart();
			cart.setImage(bike.getImage());
			cart.setKind(bike.getKind());
			cart.setPrice(bike.getPrice());
			cart.setQty(1); 
			
			//ArrayList 에 항목 추가
			cartList.add(cart);
		}
		
		//변경된 cartList를 애트리뷰트에 저장.
		session.setAttribute("cartList", cartList); 
	}
	
	//장바구니 cartList 애트리뷰트 가져오기
	public ArrayList<Cart> getCartList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");

		return cartList;
	}

	//장바구니에서 상품 삭제 - String[] kinds 삭제하려고 선택한 상품명 배열로 받음.
	public void removeCartItem(HttpServletRequest request, String[] kinds) {

		HttpSession session = request.getSession();
		
		ArrayList<Cart> cartList = 
		(ArrayList<Cart>) session.getAttribute("cartList");
		
		//cartList에 있는 상품명과 kind(삭제할 상품명) 상품명이 같으면 삭제
		//이중 for - 
		for (int i = 0; i < kinds.length; i++) {
			for (int j = 0; j < cartList.size(); j++) {
				if (kinds[i].equals(cartList.get(j).getKind())) {  
					
					//ArrayList에서 항목 삭제 메소드
					cartList.remove(cartList.get(j));
				}
			}
		}

	}

}
