package edu.kh.yosangso.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import edu.kh.yosangso.product.model.service.ProductService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/product/productDetail")
public class ProductDetailServlet extends HttpServlet{

	/**상품 정보 선택 Servlet
	 *
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int pro = Integer.parseInt(req.getParameter("ProductNo"));
			System.out.println(pro);
			
			ProductService service = new ProductService();
			
			List<Product> productList = service.selectProduct(pro);
			
			req.setAttribute("productList", productList);
			 
			 // 요청 위임
			String path = "/WEB-INF/views/product/productDetail";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			
			dispatcher.forward(req, resp);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
