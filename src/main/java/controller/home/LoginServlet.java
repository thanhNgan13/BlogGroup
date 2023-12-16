package controller.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Member;
import model.bo.MemberBO;

@WebServlet("/home/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username + "-" + password);
		
		MemberBO memberBO=new MemberBO();
		Member t = memberBO.getMemberByLogin(username, password);
		
		
		if(t!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("member", t);
			session.setAttribute("username", username);
			response.sendRedirect("../home/indexMember.jsp");
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("../home/error.jsp");
			rd.forward(request, response);
		}
	}

}
