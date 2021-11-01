package action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import service.BikeService;
import vo.Bike;

public class BikeAddOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		ActionForward forward = new ActionForward();
		
		//1)bikeAdd.jsp 에서 input 파라미터 받아
		request.setCharacterEncoding("UTF-8");
		
		String uploadPath = request.getServletContext()
						.getRealPath("/image");   //image 폴더의 실제 경로
		
		int size = 1*1024*1024;  //image 최대 크기
		MultipartRequest multi =
		new MultipartRequest(request, uploadPath,
			size,"utf-8",new DefaultFileRenamePolicy());
		
		String kind = multi.getParameter("kind");
		String year = multi.getParameter("year");
		int price = Integer.parseInt(multi.getParameter("price"));
		String spec = multi.getParameter("spec");

		System.out.println(kind +"," + spec);
		
		//선택한 파일 서버업로드 및 파일명 저장
		Enumeration files = multi.getFileNames();
		//String file = (String)files.nextElement();
		//실제 업로드 파일명(중복 파일명은 변경되므로)
		String image = multi.getFilesystemName("image");
		
		Bike bike = new Bike();
		//2) 1)번데이터로 bike 객체 값 저장
		bike.setImage(image);
		bike.setKind(kind);
		bike.setPrice(price);
		bike.setSpec(spec);
		bike.setYear(year);
		bike.setReadcount(0);
		
		BikeService service =BikeService.getInstance();
		service.insert(bike);
		
		forward.setUrl("bikeList.do");
		return forward;
	}
	
}
