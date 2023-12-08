package controller.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Member;
import model.bo.MemberBO;

@WebServlet("/home/PersonalUpdateServlet")
public class PersonalUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PersonalUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		MemberBO memberBO=new MemberBO();
		Member t = memberBO.getMemberById(id);
		System.out.println(t.getName());
		request.setAttribute("memberInfor", t);
		RequestDispatcher rd=request.getRequestDispatcher("../home/PersonalUpdate.jsp");
		rd.forward(request, response);

	}

}
