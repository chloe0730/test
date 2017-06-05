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


function peakClick() {
	if (document.getElementById('txtNewPass').type = "password") 
	{document.getElementById('txtNewPass').type = 'password';}
	
	else if (document.getElementById('txtNewPass').type = "password") 
	{document.getElementById('txtNewPass').type = 'text';}
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
			<p id="pMainMenu" class="blue-text"><i class="fa fa-users" aria-hidden="true"></i>Account Settings</p>
					<ul id="pMenuList">
						<li ><span id="lhConfig" class=" blue-text" data-listid="liConfig">Menu</span>
							<ul id="liConfig" class="with-left-border">
								<li><a href="#" class="black-text" data-listDtl="Personal Information">Personal Information</a></li>
								<li><a href="#" class="black-text" data-listDtl="Change Password">Change Password</a></li>

							</ul>
						</li>

						
					</ul>
			
				
		</div>
		</div>
	
			
		<div class="col-sm-9">

	
				<div id="panel1" class="panel panel-hr2">
					<div class="panel-heading">#panel1</div>
					<div class="panel-body">
						<form name="frmSuperAsp" method="post" action="index.asp">
		
						  <div class="form-group input-group col-sm-12">
							<span class="input-group-addon">Current Password</span>
							<input name="txtOldPass" value="" class="form-control" type="password">       

							<span class="input-group-addon">New Password</span>
							<input id = "txtNewPass" name="txtNewPass" value=""  class="form-control" type="password">    	
							<span class="input-group-addon passPeak" display="block" onclick="peakClick(); return false"><i id="peakIco" class="glyphicon glyphicon-eye-open"></i></span>
							
						  </div>


						  <div class="form-group">
						  <input type="button" id="cmdChangePass" name="cmdChangePass" value="Change" class="btn btn-def btn-block">
						  
						
						  <input type="hidden" name="txtPageMode" value="">
						  <input type="hidden" name="txtPagePeak" id="txtPagePeak" value="text">
						</form>        

					</div>
				</div>
			
			
			
		</div>

				
				

	<!--/div-->
		
		

	
	

	
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
		

		
		$('.black-text').on('click', function() {
		var liItem = $(this).attr('data-listDtl');
		
			$('#panel1 .panel-heading').fadeToggle(250);
			$('#panel1 .panel-heading').html(liItem);
			$('#panel1 .panel-heading').fadeToggle(250);
		
			//$('#panel1 .panel-heading').fadeToggle(250).delay(500).html(liItem).fadeToggle(500);
		
		});
	
	
		$('.passPeak').on('click', function() {
			$('.passPeak').fadeToggle(100);
			$('.passPeak').fadeToggle(100);
		$("#peakIco").toggleClass('glyphicon glyphicon-eye-open glyphicon glyphicon-eye-close');
		$('#txtNewPass').prop("type", "text");
	
			//$('#panel1 .panel-heading').fadeToggle(250).delay(500).html(liItem).fadeToggle(500);
		
		});
	
	</script>
	
	
</body>

</html>