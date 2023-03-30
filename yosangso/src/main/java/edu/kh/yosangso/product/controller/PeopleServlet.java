package edu.kh.yosangso.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import edu.kh.yosangso.product.model.service.ProductService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/product/peoplePage")
public class PeopleServlet extends HttpServlet{
	
	ProductService service = new ProductService();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
		List<Product> productList = new ArrayList<>();
		
		String type = req.getParameter("type");
		
		productList = service.productList(type);
		
		new Gson().toJson("productList", resp.getWriter());
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}

}
