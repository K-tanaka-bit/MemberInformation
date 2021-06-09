package jp.co.aforce.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jp.co.aforce.entity.MembersBean;

public class MembersDAO {

	public int insert(MembersBean members) throws SQLException, ClassNotFoundException {
		int count = 0;

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO members VALUES(?,?,?,?,?,?)")) {

			pstmt.setString(1, members.getMember_no());
			pstmt.setString(2, members.getName());
			pstmt.setInt(3, members.getAge());
			pstmt.setInt(4, members.getBirth_year());
			pstmt.setInt(5, members.getBirth_month());
			pstmt.setInt(6, members.getBirth_day());

			count = pstmt.executeUpdate();

		}
		return count;

	}

	public MembersBean select(String member_no) throws SQLException, ClassNotFoundException {

		MembersBean members = new MembersBean();

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("SELECT * FROM members WHERE member_no=?");) {
			pstmt.setString(1, member_no);
			ResultSet res = pstmt.executeQuery();

			if (res.next()) {
				members.setMember_no(res.getString("member_no"));
				members.setName(res.getString("name"));
				members.setAge(res.getInt("age"));
				members.setBirth_year(res.getInt("birth_year"));
				members.setBirth_month(res.getInt("birth_month"));
				members.setBirth_day(res.getInt("birth_day"));

			} else {
				return null;
			}
		}
		return members;
	}

	public int update(MembersBean members) throws SQLException, ClassNotFoundException {
		int count = 0;

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("UPDATE  members SET name=?,age=?,birth_year=?,birth_month=?,birth_day=? WHERE member_no=?");) {

			pstmt.setString(1, members.getName());
			pstmt.setInt(2, members.getAge());
			pstmt.setInt(3, members.getBirth_year());
			pstmt.setInt(4, members.getBirth_month());
			pstmt.setInt(5, members.getBirth_day());
			pstmt.setString(6, members.getMember_no());

			count = pstmt.executeUpdate();
		}
		return count;

	}

}
