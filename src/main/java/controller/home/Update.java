package controller.home;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Member;
import model.bo.MemberBO;

@WebServlet("/home/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Update() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member t = new Member();
		String id = request.getParameter("id");
		t.setId(id);
		String hoten = request.getParameter("name");
		System.out.println("Update.java line 37: " + hoten );
		t.setName(hoten);
		System.out.println("hoten: " + hoten);

		String birthdayStr = request.getParameter("birthday");
		System.out.println("ngaysinh: " +  birthdayStr);

		if (birthdayStr != null && !birthdayStr.isEmpty()) {
		    try {
		        // Chuyển đổi chuỗi sang kiểu java.util.Date
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		        java.util.Date parsedDate = dateFormat.parse(birthdayStr);

		        // Chuyển đổi java.util.Date sang java.sql.Date
		        java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
		        t.setBirthday(sqlDate);

		        // Làm bất cứ điều gì bạn muốn với biến birthday (ví dụ: lưu vào database)

		    } catch (ParseException e) {
		        e.printStackTrace();
		    }
		}


		String sdt = request.getParameter("phone");
		t.setPhone(sdt);
		String email = request.getParameter("email");
		t.setEmail(email);
		String diachi = request.getParameter("address");
		t.setAddress(diachi);
		String noidung = request.getParameter("content");
		t.setContent(noidung);

		MemberBO memberBO = new MemberBO();
		memberBO.updateMember(t);

		Member i = memberBO.getMemberById(id);
		HttpSession session = request.getSession();
		session.setAttribute("memberInfor", i);
		response.sendRedirect("../home/PersonalUpdate.jsp");
	}

}
