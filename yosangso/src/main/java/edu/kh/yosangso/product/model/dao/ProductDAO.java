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

	/**상품 정보 선택 DAO
	 * @param conn
	 * @param productNo
	 * @return
	 * @throws Exception
	 */
	public List<Product> selectProduct(Connection conn, int pro) throws Exception {
		
		List<Product> productList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectProduct");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pro);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int productNo = rs.getInt("PRODUCT_NO");
				String productName = rs.getString("PRODUCT_NM");
				String category = rs.getString("CATEGORY");
				int price = rs.getInt("PRICE");
				int stock = rs.getInt("STOCK");
				String productDate = rs.getString("PRODUCT_DATE");
				int sellRate = rs.getInt("SELL_RATE");
				String explain = rs.getString("EXPLAIN");
				String productImage = rs.getString("PRODUCT_IMAGES");
				String part = rs.getString("PART");
				
				productList.add(
						new Product(productNo, productName, category, price, stock, productDate, sellRate,
								explain, productImage, part)
						);
			} 
			
		} finally {
			close(rs);
			close(stmt);
		}
		
		System.out.println(productList);
		System.out.println(conn);
		
		return productList;
		

	}
	
	
	
	
	
	
	
	
}
