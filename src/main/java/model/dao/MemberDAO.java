package model.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import model.DatabaseConnection;
import model.bean.Member;

public class MemberDAO {

	public Member getMemberById(String id) {

		Member s = new Member();
		try {
			Connection conn = DatabaseConnection.getConnection();
			Statement stmt = (Statement) conn.createStatement();

			String sql = "SELECT * FROM member";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				if (id.equals(rs.getString("id"))) {
					s.setId(id);
					s.setName(rs.getString("hoten"));
					s.setBirthday(rs.getDate("ngaysinh"));
					s.setPhone(rs.getString("sdt"));
					s.setEmail(rs.getString("email"));
					s.setAddress(rs.getString("diachi"));
					s.setContent(rs.getString("noidung"));

					if (id.equals("1")) {
						s.setImage("images/PhamTranThanhTruc.jpg");
					} else if (id.equals("2")) {
						s.setImage("images/PhanThanhNgan.jpg");

					} else if (id.equals("3")) {
						s.setImage("images/TruongQuangLoc.png");
					}
					return s;
				}
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			System.out.print(e);
		}
		return null;
	}

	public Member getMemberByLogin(String username, String password) {

		try {

			Connection conn = DatabaseConnection.getConnection();
			Statement stmt = (Statement) conn.createStatement();

			String sql = "SELECT * FROM user " + "INNER JOIN member ON user.id=member.id";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
					return getMemberById(rs.getString("id"));
				}
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			System.out.print(e);
		}
		return null;
	}

	public void updateMember(Member t) {
		Connection conn = null;
		Statement stmt = null;
		try {
			conn = DatabaseConnection.getConnection();
			stmt = conn.createStatement();

			String sql = "UPDATE member SET hoten=?, ngaysinh=?, sdt=?, email=?, diachi=?, noidung=? WHERE id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, t.getName());
			pstmt.setDate(2, new java.sql.Date(t.getBirthday().getTime()));
			pstmt.setString(3, t.getPhone());
			pstmt.setString(4, t.getEmail());
			pstmt.setString(5, t.getAddress());
			pstmt.setString(6, t.getContent());
			pstmt.setString(7, t.getId());

			int affectedRows = pstmt.executeUpdate();

			System.out.println("Updated rows: " + affectedRows);

		} catch (Exception e) {
			System.out.print(e);
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				System.out.println("Loi: " + se.getMessage().toString());
				se.printStackTrace();
			}
		}
	}

}
