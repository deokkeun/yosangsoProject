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

	/** 상품 정보 service
	 * @return
	 */
	public List<Product> selectProduct(int productNo) {
		Connection conn = getConnection();
		
		List<Product> list = dao.selectProduct(conn, productNo);
		
		close(conn);
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
