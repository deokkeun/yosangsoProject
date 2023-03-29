package edu.kh.yosangso.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import edu.kh.yosangso.board.model.service.ReviewService;
import edu.kh.yosangso.board.model.vo.ReviewImage;
import edu.kh.yosangso.common.MyRenamePolicy;

@WebServlet()
public class ReviewServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 리뷰 등록 써블릿
		
		
		
		
		// DML 구문이니 결과 받을 리절트 변수 선언 및 초기화
		
		int result = 0;
		ReviewService service = new ReviewService();
		
		try {
			
			int maxSize = 1024 * 1024 * 100;
			HttpSession session = req.getSession(); // session 얻어오기 
			String root = session.getServletContext().getRealPath("/"); // webapp 폴더까지 경로
			String folderPath = "/resources/image/review/"; // 파일 저장 폴더 경로
			String filePath = root + folderPath;
			
			String encoding = "UTF-8"; // 파라미터중 파일을 제외한 파라미터(문자열)의 인코딩 지정
			
			// MultipartRequest 객체 -> 이 객체가 생성됨과 동시에 파라미터로 전달된 파일이 지정된 걍로에 저장(업로드)된다. 
			
			MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
			
			// MultipartRequest.getFileNames()
			// - 요청 파라미터 중 모든 file 타입 태그의 name 속성 값을 얻어와서
			// Enumeration 형태로 반환 (Iterator의 과거 버전)
			// -> 해당 객체에 여러 값이 담겨 있고, 순서대로 얻어오는 방법 제공
			// 		(보통 순서가 없는 모음(Set과 같은 경우)에서 하나씩 꺼낼 때 사용)
			
			Enumeration<String> files = mpReq.getFileNames();
			
			// 업로드된 이미지 정보 모아둘 리스트
			List<ReviewImage> imageList = new ArrayList<ReviewImage>();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement(); // 다음 요소 (name 속성 값)
				
				String rename = mpReq.getFilesystemName(name); // 변경된 파일
				String original = mpReq.getOriginalFileName(name); // 원본 파일명
				
				if(rename != null) { // 파일이 업로드 된 경우 
					
					ReviewImage image = new ReviewImage();
					
					image.setImageOriginal(original); // 원본명 
					image.setImageReName( folderPath + rename); // 폴더 경로 + 변경명
					image.setImageLevel(Integer.parseInt(name));
					
					imageList.add(image);
					// 이미지 끝
				} // if 끝
			} // while 끝
			
			// 리뷰 내용 받아오기
			String reviewContent = mpReq.getParameter("reivewAdd");
			// 리뷰 평점 받아오기
			int reviewRate = Integer.parseInt(mpReq.getParameter("reviewAddRate"));
			
			result = service.reviewAdd(reviewContent, reviewRate, imageList);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
