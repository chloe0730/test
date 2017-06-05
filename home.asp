<%@language=vbscript%>
<%option explicit%>
<% 
	' Passing Values from form to asp variables then to html page
	dim myInt1, myInt2, myInt3, myUsername, myUserID, myUserString
	dim myUserFN, myUserLN
	
	myUsername = session("userUsername")
	myUserID = session("userID")
	myUserFN = session("ufn")
	myUserLN = session("uln")
	if myUsername = "" then myUsername = session("userUsername")
	if myUserID = "" then myUserID = session("userID")
	if myUserFN = "" then myUserFN = session("ufn")
	if myUserLN = "" then myUserLN = session("uln")
	

%>

<html>


<SCRIPT language="javascript">
function onLoad(){
		
}

</SCRIPT>


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>HR3</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Customizations -->
    <link href="css/customizations.css" rel="stylesheet">
	<link href="css/customLogin.css" rel="stylesheet">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
</head>


<body onload="javascript:onLoad();">


 
	<!-- Fixed header -->
	<!-- #include file ="navigation.asp" -->
	
		
	<div class="container">
		
		<div class="col-sm-12">
			<div class="jumbotron text-center">
				<h2>Welcome, <%=myUserFN%></h2>
			</div>
			
		</div>
		
		<div class="col-sm-4">
			<div class="jumbotron text-center">
				<h2>Personnel Peek</h2>
			</div>
		</div>
			
		<div class="col-sm-4">
			<div class="jumbotron text-center">
				<h2>TimeTrack Peek</h2>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="jumbotron text-center">
				<h2>Payroll Peek</h2>
			</div>
		</div>
		
	</div>
		
		

	
	
		<input type="hidden" name="txtPageMode" value="">
	

	
	<!-- Fixed footer -->
	<div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
		<div class="container">
			<div class="navbar-text pull-left">
				<p><b class="glyphicon glyphicon-copyright-mark"></b> 2017 Dummy Pages.</p>
			</div>
			
			<div class="navbar-text pull-right">
				<a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
				<a href="#"><i class="fa fa-twitter fa-2x"></i></a>
				<a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript
	======================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	
	<!-- Modal Forms -->
	<div class="modal fade" id="contact" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form class="form-horizontal" role="form">
					<div class="modal-header">
						<h4>Contact</h4>
					</div>
					<div class="modal-body">	
						<div class="form-group">
							<label for="contact-name" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="contact-name" placeholder="First & Last Name">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-email" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="contact-name" placeholder="example@domain.com">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-message" class="col-sm-2 control-label">Message</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="4"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<a class="btn btn-default" data-dismiss="modal">Close</a>
						<button type="submit" class="btn btn-primary">Send</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>