package campsite.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import campsite.dao.UserDAO;
import campsite.model.User;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO dao; 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        dao = new UserDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("sign-up.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();
		
		user.setUseremail(request.getParameter("useremail"));
		user.setUserpassword(request.getParameter("userpassword"));
		user.setUserrole(request.getParameter("userrole"));
		
		user = UserDAO.getUser(user);
		
		if(!user.isValid())
		{
			try {
				dao.add(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
		RequestDispatcher view = request.getRequestDispatcher("index.html");
		view.forward(request, response);
	}

}
