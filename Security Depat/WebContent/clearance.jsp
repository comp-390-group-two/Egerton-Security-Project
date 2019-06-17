<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clearance Page</title>
<style>
            .headr
            {
               font-family:    Georgia;
                font-size:      40px;
                font-weight:    bold;
                background-color: #222;
                color: #ffffff;
            }
        </style>
</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<body style="background-color:#006666;">

<div class="headr" >


		<h2><center>EGERTON UNIVERSITY</center></h2>
		<h3><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>

</div>
<hr>
<nav>
	<div class="container">
			<div class="row">
					<div class="col-md-4">
					<a href="Accused.jsp"><button type="button" class="btn btn-primary" style="Height:50px;">
					  Accused Persons
					</button></a>
						</div>
					<div class="col-md-4"></div>
					<ul class="nav navbar-nav navbar-right">
					<div class="col-md-4">
	
						<a href="SecurityPanel.jsp" ><button type="submit" class="btn btn-danger">Back</button></a>
										
						
					</div>
					</ul>
			</div>
		</div>
	</nav>



<h2 style="color:#ffffff"><center>CLEARANCE CASES</center></h2>	
<div class="row">
	<div class="col-lg-8"></div>
		<div class="col-md-3">
		
			<form action="" method="get">
				<input type="text" name="search1" class="form-control" placeholder="Search by RegNo here" >
			</form>
		</div>
	</div>
	<div class="container">
		<div class="row">
						</br>
						<div class="col-lg-2 col-md-2 col-sm-2"></div>
							<div class="col-lg-9 col-md-9 col-sm-9">
								<table class="table table-bordered table-striped table-condensed align-center table-hover">
									  <thead class="thead-dark">
									    <tr>
										<th scope="col">No</th>
									      <th scope="col">Student RegNo</th>
									      <th scope="col"> Reason</th>
									      <th scope="col">Status</th>
									      <th style="width:5px">Request Action</th>
									     
									    </tr>
									  </thead>
					 
							  <%
							 try{
								 String url="jdbc:mysql://localhost:3306/comp390";
									String username="root";
									String password="gerry";
									
									PreparedStatement state;
									Connection conn=null;
									Statement stmt=null;
									ResultSet res=null; 
						 
							
							Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
							conn=DriverManager.getConnection(url,username,password);
							stmt=conn.createStatement();
							
							String data3;
							String q=request.getParameter("search1");
							if(q!=null){
								data3="SELECT * from clearance where regno like '%"+q+"%'";
							
								
							}
							
							else{
								 data3="SELECT * from clearance";
							}
							
						
							res=stmt.executeQuery(data3);
							
							
							while(res.next()==true ){
								
					 
					 
								  %>
								   <tbody>
								   <tr>
								   
								  		 <td><%=res.getString (1)%></td>
										   	<td><%=res.getString(2) %></td>
										   	<td><%=res.getString(3) %></td>
										   	<td><%=res.getString(4) %></td>
										   	
										  	 <td>
					<a href="handleClearance.jsp?u=<%=res.getString(1) %>" class="btn btn-warning">Handle</a>
										  	 </td>
										  	  
									 
								</tr>
					  				 </tbody>
					  <%
						}
						}catch(Exception ex){
							out.println("error1");
						}finally{
							
						}
					  
					  %> 
					 
							</table>
					</div>
				</div>	
				
					&nbsp
</div>
<hr>
<!-- To show person accused in cases -->

</body>

<footer style ="background-color: #222; color:#ffffff" class="site-footer" >
	<div class="container">

	
 <div class="row">
	<div class="col-md-4 ">
		<adress>
			Egerton University Security Department<br>
			P.O.BOX 536,<br>
			Egerton<br>
			PHONE NO_07XXXXXXXX
		</adress>
	</div>

	<div class="col-md-4 ">
		<address>
		Egerton University<br>
		<i>Transforming Lives Through Quality Education</i><br>
		NJORO Campus<br>
		www.egerton.ac.ke
		
		</address>
	</div>
	<div class="col-md-4" >
		 <adress >
       		Chief Security <br>
        	Egerton University-Kenya<br>
        	chiefsecurity@egerton.ac.ke<br>
		 </adress>
	</div>
	</div>
	<hr>
	<p>Website information</p>
	<div class="button-footer">
	<div class="col-md-8">©SecurityDepartmentEgertonUniverity .2019</div>
	</div>
	

   </div>

	</div>



</footer>
</html>