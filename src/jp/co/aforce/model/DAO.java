package jp.co.aforce.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jp.co.aforce.entity.MembersBean;

public class DAO {
	
	public int insert(MembersBean members) throws SQLException, ClassNotFoundException {
		int count = 0;

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO members VALUES(?,?,?,?,?,?)")) {
			
			String number=members.getMember_no();
			number="A"+ Timestamp;
				
			pstmt.setString(1, number);
			pstmt.setString(2, members.getName());
			pstmt.setInt(3, members.getAge());
			pstmt.setInt(4, members.getBirth_year());
			pstmt.setInt(5, members.getBirth_month());
			pstmt.setInt(6, members.getBirth_day());
			

			count = pstmt.executeUpdate();

		}
		return count;

	}

	
	

}
