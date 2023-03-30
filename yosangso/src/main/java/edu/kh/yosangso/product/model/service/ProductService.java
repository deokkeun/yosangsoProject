package edu.kh.yosangso.product.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import java.util.List;

import edu.kh.yosangso.product.model.dao.ProductDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class ProductService {

	private ProductDAO dao = new ProductDAO();

	/** 상품 정보 선택 service
	 * @return
	 */
	public List<Product> selectProduct(int pro) throws Exception{
		Connection conn = getConnection();
		
		List<Product> productList = dao.selectProduct(conn, pro);
		
		close(conn);
		
		System.out.println(productList);
		
		return productList;
	}
	
	

	
	
	
	
}
