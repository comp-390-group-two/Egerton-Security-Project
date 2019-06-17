

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logins.AuthenticateOperationOfficerDAO;

/**
 * Servlet implementation class Authenticate_Operation_Security
 */
@WebServlet("/Authenticate_Operation_Security")
public class Authenticate_Operation_Security extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authenticate_Operation_Security() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		
		AuthenticateOperationOfficerDAO firstObject=new AuthenticateOperationOfficerDAO();
		
		if( firstObject.check(uname,password)) {
			
			HttpSession session=request.getSession();
			session.setAttribute("officer",uname);
			
			response.sendRedirect("OperationalDashboard.jsp");
			
		}
		else {
		
		}
	
	}

}
