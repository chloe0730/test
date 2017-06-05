<%@language=vbscript%>
<%option explicit%>
<% 

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
	
	
</head>


<body onload="javascript:onLoad();">


 
	<!-- Fixed header -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand blue-text" href="home.asp"><span style="color:#568CFF;">Human </span>Response<sup>3</sup></a>
			</div>
			
			<div class="navbar-collapse collapse"> <!-- nav collapse -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="personnel.asp">Personnel</a></li>
					<li><a href="#TimeTrack">TimeTrack</a></li>
					<li><a href="#Payroll">Payroll</a></li>
					<li><a href="#Admin">Admin</a></li>
					<li><a href="#Tools">Tools</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=myUserFN%>&nbsp;<%=myUserLN%><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Account Settings</a></li>
							<li><a href="#">Change Password</a></li>
							<li class="divider"></li>
							<li><a href="index.asp">Log out</a></li>

						</ul>
					</li>
					
				</ul>
			</div> <!-- /nav collapse -->
		</div>
	</div>
	
		
	<!--div class="container"-->
		
		<div class="col-sm-3">
		<div class="jumbotron jumbotron-sidebar">
			<p id="pMainMenu" class="blue-text"><i class="fa fa-users" aria-hidden="true"></i> Personnel Main Menu</p>
					<ul id="pMenuList">
						<li ><span id="lhConfig" class="blue-text">Configuration</span>
							<ul id="liConfig" class="with-left-border">
								<li><a href="#" class="black-text">Company Settings</a></li>
								<li><a href="#" class="black-text">Local Codes</a></li>
								<li><a href="#" class="black-text">Cost Center</a></li>
								<li><a href="#" class="black-text">Salary Structure</a></li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Organization Structure</span>
							<ul class="with-left-border">
								<li>Organization Level</li>
								<li>Organization Structure Type</li>
								<li>Assign Position</li>
								<li>Assign Cost Center</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Responsibilities and Reporting</span>
							<ul class="with-left-border">
								<li>Job Group</li>
								<li>Job Rank</li>
								<li>Position Title</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Personnel Transactions</span>
							<ul class="with-left-border">
								<li>Employee Profile</li>
								<li>New Employee</li>
								<li>Disciplinary Action/Citation</li>
								<li>End of Employment</li>
								<li>Re-Employment</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Leaves and Absences</span>
							<ul class="with-left-border">
								<li>Leave Rule</li>
								<li>Leave Type</li>
								<li>Leave Package</li>
								<li>Enter Leave Request</li>
								<li>Approve Leave Request</li>
								<li>Leave Cancellation</li>
								<li>Leave Adjustment</li>
								<li>Upload Leave Request</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Company Properties</span>
							<ul class="with-left-border">
								<li>Item Category</li>
								<li>Company Asset</li>
								<li>Assign Company Asset</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Mass Updates</span>
							<ul class="with-left-border">
								<li>Leave Entitlement</li>
							</ul>
						</li>
						<li><span id="" class="blue-text">Reports</span></li>
					</ul>
			
				
		</div>
		</div>
	
			
		<div class="col-sm-9">
			<div class="jumbotron text-center">
				<div id="new-header">
					<script>
						$("#new-header").load("header.html");
					</script>
				</div>
			</div>
		</div>
		

	<!--/div-->
		
		

	
	
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
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<script>


		$("#pMainMenu").on('click', function() {
			$("#pMenuList").slideToggle(650);
		
		}).on('mouseover',function(){
			$("#pMainMenu").css({
			color:'#1B3DBC'
			});
		
		}).on('mouseleave',function(){
			$("#pMainMenu").css({
			color:'#047BB7'
			});
		
		});
	

		$("#lhConfig").on('click', function() {
			$("#liConfig").slideToggle(650);
		
		}).on('mouseover',function(){
			$("#lhConfig").css({
			color:'#1B3DBC'
			});
			
		}).on('mouseleave',function(){
			$("#lhConfig").css({
			color:'#047BB7'
			});
		
		});
	
	
	</script>
	
	
</body>

</html>