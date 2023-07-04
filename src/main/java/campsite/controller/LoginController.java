package campsite.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import campsite.dao.*;
import campsite.model.Staff;
import campsite.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO dao;
	HttpSession session;
	RequestDispatcher view;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        dao = new UserDAO();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {

			User user = new User();
			//retrieve and set email and password
			user.setUseremail(request.getParameter("useremail"));
			user.setUserpassword(request.getParameter("userpassword"));

			user = UserDAO.login(user);

			//set user session if user is valid
			if(user.isValid()){
				session = request.getSession(true);
				session.setAttribute("sessionId", user.getUserid());
				session.setAttribute("sessionEmail", user.getUseremail());  //set current session based on email
				session.setAttribute("sessionRole", user.getUserrole()); 
			
				
				if(user.getUserrole().equalsIgnoreCase("staff")) {
					request.setAttribute("user", UserDAO.getUserByEmail(user.getUseremail()));
					request.setAttribute("staff", StaffDAO.getStaffId(user.getUserid()));
					view = request.getRequestDispatcher("homeStaff.jsp");
					view.forward(request, response);
					System.out.println("Staff");
				}
				else {
					request.setAttribute("user", UserDAO.getUserByEmail(user.getUseremail()));
					request.setAttribute("customer", CustomerDAO.getCustomerId(user.getUserid()));
					view = request.getRequestDispatcher("homeCustomer.jsp");
					view.forward(request, response);	
					System.out.println("Customer");
				}
				
							
			}
			//redirect to invalidLogin.jsp if user is not valid
			else{
				response.sendRedirect("invalidLogin.jsp");
			}		
		}

		catch (Throwable ex) {
			System.out.println(ex);
		}
	}

}
