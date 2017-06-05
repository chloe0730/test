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
	
	
</head>


<body onload="javascript:onLoad();">


 
	<!-- Fixed header -->
	<!-- #include file ="navigation.asp" -->
	
		
	<!--div class="container"-->
		
		<div class="col-sm-3">
		<div class="jumbotron jumbotron-sidebar">
			<p id="pMainMenu" class="blue-text"><i class="fa fa-users" aria-hidden="true"></i> Personnel Main Menu</p>
					<ul id="pMenuList">
						<li ><span id="lhConfig" class=" blue-text" data-listid="liConfig">Configuration</span>
							<ul id="liConfig" class="with-left-border">
								<li><a href="#" class="black-text">Company Settings</a></li>
								<li><a href="#" class="black-text">Local Codes</a></li>
								<li><a href="#" class="black-text">Cost Center</a></li>
								<li><a href="#" class="black-text">Salary Structure</a></li>
							</ul>
						</li>
						<li><span id="lhOrgStruc" class=" blue-text" data-listid="liOrgStruc">Organization Structure</span>
							<ul class="with-left-border" id="liOrgStruc">
								<li>Organization Level</li>
								<li>Organization Structure Type</li>
								<li>Assign Position</li>
								<li>Assign Cost Center</li>
							</ul>
						</li>
						<li><span id="lhRespo" class=" blue-text" data-listid="liRespo">Responsibilities and Reporting</span>
							<ul class="with-left-border" id="liRespo">
								<li>Job Group</li>
								<li>Job Rank</li>
								<li>Position Title</li>
							</ul>
						</li>
						<li><span id="lhTrans" class=" blue-text" data-listid="liTrans">Personnel Transactions</span>
							<ul class="with-left-border" id="liTrans">
								<li>Employee Profile</li>
								<li>New Employee</li>
								<li>Disciplinary Action/Citation</li>
								<li>End of Employment</li>
								<li>Re-Employment</li>
							</ul>
						</li>
						<li><span id="lhLeaves" class=" blue-text" data-listid="liLeaves">Leaves and Absences</span>
							<ul class="with-left-border" id="liLeaves">
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
						<li><span id="lhProperties" class=" blue-text" data-listid="liProperties">Company Properties</span>
							<ul class="with-left-border" id="liProperties">
								<li>Item Category</li>
								<li>Company Asset</li>
								<li>Assign Company Asset</li>
							</ul>
						</li>
						<li><span id="lhMassUpdate" class=" blue-text" data-listid="liMassUpdate">Mass Updates</span>
							<ul class="with-left-border" id="liMassUpdate">
								<li>Leave Entitlement</li>
							</ul>
						</li>
						<li><span id="lhReports" class=" blue-text" data-listid="liReports">Reports</span>
							<ul class="with-left-border" id="liReports">

							</ul>
						</li>
					</ul>
			
				
		</div>
		</div>
	
			
		<div class="col-sm-9">

			<div class=" col-sm-3">
				<button id="btn1">#btn1</button>
				<div id="panel1" class="panel panel-primary">
					<div class="panel-heading">#panel1</div>
					<div class="panel-body">
						Content
					</div>
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


		$('#pMainMenu').on('click', function() {
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
	

		$('.blue-text').on('click', function() {
		var liItem = $(this).attr('data-listid');
		
		
			$('#'+liItem).slideToggle(650);
		
		});
		
		$('.blue-text').on('mouseover',function(){
		var liItem = $(this).attr('id');
			$('#'+liItem).css({
			color:'#1B3DBC'
			});
			
		});
		
		$('.blue-text').on('mouseleave',function(){
		var liItem = $(this).attr('id');
			$('#'+liItem).css({
			color:'#047BB7'
			});
		
		});
		
		
		
	
		$('#btn1').on('click', function() {
			$('#panel1 .panel-body').html('New Content');
		
		});
	
	
	</script>
	
	
</body>

</html>