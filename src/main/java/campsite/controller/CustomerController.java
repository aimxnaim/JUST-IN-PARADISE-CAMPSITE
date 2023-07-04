package campsite.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import campsite.dao.CustomerDAO;
import campsite.dao.StaffDAO;
import campsite.dao.UserDAO;
import campsite.model.Customer;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDAO dao;
	private UserDAO udao;
	String action = "";
	String forward = "";
	RequestDispatcher view;
	int staffid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
        super();
        dao = new CustomerDAO();
        udao = new UserDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("viewCustomer"))
		{
			forward = "viewCustomer.jsp";
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
		}
		if(action.equalsIgnoreCase("listCustomer"))
		{
			forward = "listCustomers.jsp";
			request.setAttribute("customers", CustomerDAO.getAllCustomers());
		}
		if(action.equalsIgnoreCase("deleteCustomer"))
		{
			forward = "listCustomers.jsp";
			int userid = Integer.parseInt(request.getParameter("userid"));
			udao.deleteUser(userid);
			request.setAttribute("customers", CustomerDAO.getAllCustomers());
		}
		if(action.equalsIgnoreCase("updateCustomer"))
		{
			forward = "updateCustomer.jsp";
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
		}
		if(action.equalsIgnoreCase("updateCustomerByStaff"))
		{
			forward = "updateCustomerStaff.jsp";
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
		}
		if(action.equalsIgnoreCase("backHome"))
		{
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			forward = "homeCustomer.jsp" ;
		}
		
		view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setCustname(request.getParameter("custname"));
		customer.setCustaddress(request.getParameter("custaddress"));
		customer.setCustphone(request.getParameter("custphone"));
		customer.setUserid(Integer.parseInt(request.getParameter("userid")));
		
		String custid = request.getParameter("custid");
		if(custid == null || custid.isEmpty())
			dao.addCustomer(customer);
		else
		{
			customer.setCustid(Integer.parseInt(custid));
			dao.updateCustomer(customer);
		}	
		
		if(action.equalsIgnoreCase("updateCustomer"))
		{
			forward = "homeCustomer.jsp";
			request.setAttribute("customer", CustomerDAO.getCustomerById(Integer.parseInt(custid)));
		}
		if(action.equalsIgnoreCase("updateCustomerByStaff"))
		{
			forward = "listCustomers.jsp";
			request.setAttribute("staff", StaffDAO.getStaffById(staffid));
			request.setAttribute("customers", CustomerDAO.getAllCustomers());
		}
		
		view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}
