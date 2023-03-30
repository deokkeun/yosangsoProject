package edu.kh.yosangso.product.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.product.model.dao.ProductDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class ProductService {
	

	private ProductDAO dao = new ProductDAO();

	/** 상품 정보 service
	 * @return
	 */
	public List<Product> selectProduct(int productNo) throws Exception{
		Connection conn = getConnection();
		
		List<Product> list = dao.selectProduct(conn, productNo);
		
		close(conn);
		
		return list;
	}

	/** 인체페이지 제품 리스트
	 * @param type
	 * @return
	 */
	public List<Product> productList(String type) throws Exception{
		
		Connection conn = getConnection();
		
		List<Product> productList = dao.productList(conn, type);
		
		close(conn);
		
		return productList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
