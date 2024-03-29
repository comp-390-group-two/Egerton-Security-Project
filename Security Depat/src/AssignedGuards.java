

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import logins.reasonDAO;

/**
 * Servlet implementation class AssignedGuards
 */
@WebServlet("/AssignedGuards")
public class AssignedGuards extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignedGuards() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String ssn=request.getParameter("ssn");
		String phone_no=request.getParameter("phone_no");
		String place=request.getParameter("place");
		String date=request.getParameter("date");
		String time_from=request.getParameter("timefrom");
		String time_to=request.getParameter("timeto");
		
		 Date today=new Date();

		 LocalDate two=LocalDate.now();
		
		
		if(name==""||name.equals(null)||ssn ==""||ssn.equals(null)||phone_no.equals(null)||phone_no==""||place.equals(null)||place==""||date.equals(null)||date==""||time_from.equals(null)||time_from==""||time_to==""||time_to.equals(null)) {
			request.setAttribute("Message","ALL FIELDS ARE MANDATORY .ASSIGNMNENT FAILED");
			getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
			
		}
		else if (date.compareTo(two.toString())!=0){
			
			request.setAttribute("Message","Enter today's :Failed to assign "+name);
			getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
			
		}
		else {
			
			try{
				 
				 String url="jdbc:mysql://localhost:3306/COMP390";
					String username="root";
					String password="gerry";
					 Connection conn;
					 Statement stmt;
					 ResultSet res;
				 
				 
					
					Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
					conn=DriverManager.getConnection(url,username,password);
					stmt=conn.createStatement();
					
					String data3;
				     data3="SELECT * from assigned where ssn='"+ssn+"'and date='"+date+"'";
				
					res=stmt.executeQuery(data3);
					
						
						if(res.next()) {
							request.setAttribute("Message",name+" is already assigned today");
							getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
							
						}
						else {
							
							reasonDAO one_GUARD_assigned=new reasonDAO();
							
							HttpSession session=request.getSession();
							String officer=(String)session.getAttribute("officer");
						
							System.out.println(officer);
							String sql;
							sql= "INSERT INTO assigned (name, ssn, phoneno, place, date, time_from, time_to, assigned_by ) VALUES('"+name+"','"+ssn+"','"+phone_no+"','"+place+"','"+date+"','"+time_from+"','"+time_to+"','"+officer+"')";
							
							one_GUARD_assigned.insertToDB(sql);
							
							getServletContext().getRequestDispatcher("/GuardsAssigned.jsp").forward(request,response);
							
						}
					
					
			
			
			
		}
			 catch(Exception e) {
				 
			 }
		
			
			
		}
		
	}

}
