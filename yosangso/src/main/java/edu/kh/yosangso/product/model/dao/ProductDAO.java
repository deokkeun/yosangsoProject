package edu.kh.yosangso.product.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.product.model.vo.Product;

public class ProductDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public ProductDAO() {
		try {
			prop = new Properties();
			
			String filePath = ProductDAO.class.getResource("/edu/kh/yosangso/sql/product-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}

	public List<Product> selectProduct(Connection conn, int productNo) throws Exception {
		
		List<Product> list = new ArrayList<Product>();
		
		return null;
	}

	/** 인체페이지 상품 리스트
	 * @param conn
	 * @param type
	 * @return
	 */
	public List<Product> productList(Connection conn, String type) throws Exception{
		
		List<Product> productList = new ArrayList<>();
		
		try {
			Product product = new Product();
			
			String sql = prop.getProperty("productList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, type);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				product.setProductName(rs.getString("1"));
				product.setProductImage(rs.getString("2"));
				
				productList.add(product);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return productList;
	}
	
	
	
	
	
	
	
	
}
