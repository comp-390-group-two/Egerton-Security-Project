<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Security Register Details</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
            .headr
            {
               font-family:    Georgia;
                font-size:      40px;
                font-weight:    bold;
                background-color: #222;
                color:#ffffff;
            }
        </style>
</head>
<body style="background-color: #006666;">
	<div class="headr" >
			<h2><center>EGERTON UNIVERSITY</center></h2>
			<h3><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
	
	</div>
<h4 style="color:red"> ${Message} </h4>
<form action="shameRegistrationServlet" method="post">

    <div class="row">
        <div class="container-fluid">
            <div class="col-md-3"></div>
            <div class="col-lg-6 col-md-6 col-sm-4">
                <div class="jumbotron" style="background-color:#003366;color:orange;">

                    <br>
                    <h3>Register Details of accused here</h3>
                    
                    <div class="form-group">
                        <br/>
                        <label class="control-label" for="name">Student's Full Name</label>
                        <input type="text" name="full_name" class="form-control" placeholder="Enter full name">
                    </div>
                    
                      <div class="form-group">
                        <br/>
                        <label class="control-label" for="password">Registration No.</label>
                        <input type="text" name="regno" class="form-control" placeholder="Enter RegNO Here">
                    </div>
                    
                      <div class="form-group">
                        <br/>
                        <label class="control-label" for="name">Phone Number</label>
                        <input type="text" name="contact" class="form-control" placeholder="Enter phone number">
                    </div>                    
       
               

                    <div class="pull-center">
                        <br/>
                        <br/>
                        <button type="submit" name="register"
                      class="btn btn-primary">Add to Accused person(s)</button>

                    </div>

            </div>
                      
                

            </div>
        </div>
    </div>
 </form>
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
	<div class="col-md-8">�SecurityDepartmentEgertonUniverity .2019</div>
	</div>
	

   </div>

	</div>



</footer>
  

</body>
</html>