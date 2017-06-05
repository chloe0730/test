<%@language=vbscript%>
<%option explicit%>
<% 
	' Passing Values from form to asp variables then to html page
	Dim myInt1, myInt2, myInt3, myUsername, myPassword
	Dim pageMode, notifStatus
	
	if myUsername = "" then myUsername = Request.Form("txtUsername")
	if myPassword = "" then myPassword = Request.Form("txtPassword")
	
	pageMode = Request.Form("txtPageMode")
	if pageMode = "" then
	pageMode = "pageload"
	notifStatus = "none" 	
	end if

%>

<% On Error Resume Next
'Database Manipulation -- Setting up connection
Dim dataset
Dim user
Dim password
Dim database
Dim connString 
Dim conn





dataset = "IST-CHARLES\SQL2014EXP"
user = "sa"
password = "P@sswordSQL"
database = "Alcordo_Store"

Set  conn = Server.CreateObject("ADODB.Connection")
connString = "Provider=SQLOLEDB; Data Source=" & dataset & _
			 ";Network Library= DBMSSOCN;Initial Catalog =" & database & ";User Id=" _
			 & user & ";Password=" & password & ";"
conn.Open connString

If conn.Errors.Count > 0 Then
	response.write "Error: Unable to Connect " & Err.Description
else
	'response.write "no error occured"
End if
conn.Close connString

'Database Manipulation -- Accessing data from database
if pageMode = "login" then

Dim adoRecordSet
Set adoRecordSet = Server.CreateObject("ADODB.Recordset")
conn.Open connString
Set adoRecordSet = conn.Execute("exec usp_Login " & myUsername & ", " & myPassword)

if err.number > 0 then
	if not adoRecordSet.BoF and not adoRecordSet.EoF then
	session("userID") = adoRecordSet(0)'id"
	session("userUsername") = adoRecordSet(1)
	session("ufn") = adoRecordSet(3) 'first Name
	session("uln") = adoRecordSet(5) 'last name
	notifStatus = "none"
	Response.Redirect "home.asp"
	end if
else
	'response.write "invalid user account"	
	notifStatus = "block"
end if


'Response.Redirect "home.asp"
'response.write "db"
adoRecordSet.Close
conn.Close
Set conn = Nothing

end if





%>

<html>

<SCRIPT language="javascript">
function doLogin(){
		document.frmSuperAsp.txtPageMode.value  = "login";
		document.frmSuperAsp.submit();
}

function onLoad(){
		var e = document.getElementById('notifMessage');
		var visibility = "<%=notifStatus%>";
		e.style.display = visibility;
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
    <!--<link href="css/custom.css" rel="stylesheet">-->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){ //On completion of page load
		$("#cmdLogin").click(function(){
			doLogin();
			//alert("executing login action");
			//alert("reached external JQuery");
			//$(this).hide();
			
		});
		//$("#loginForm").hide(0).show(500);
		//$("#textCont").hide(0).delay(350).show(1000);
		//$("#pageContainer").hide(0).slideUp(500);
		//$("#pageContainer").hide(0).slideDown(1000);
		//$("#textCont").delay(250).slideToggle(500).slideToggle(500);
		//$("#textCont").delay(250).fadeToggle(500).fadeToggle(500);
		//$("#loginForm").css({color:'red'});
		//$("#HdConfig").html('charles pogi');
		//$("#txtPassword").onblur(function (e) {
		 //var key = e.which;
		 //if(key == 13)  // the enter key code
		  //{
			//$('input[name = cmdLogin]').click();
			//return false;  
			//alert("sample");
		  //}
		//});   
		//
		
	});
	
	$(document).keypress(function(e) {
		if(e.which == 13) {
			//alert('You pressed enter!');
			$("#cmdLogin").click();
		}
	});
	
	</script>
	
</head>
<body onload="javascript:onLoad();">


 
	<!-- Fixed header -->
	<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container">
		<a class="navbar-brand" href="index.asp"><span style="color:#568CFF;">Human </span>Response<sup>3</sup></a>
	  </div>
	  
      <div class="col-sm-12 col-md-10 col-md-offset-1">
        <form name="frmSuperAsp" method="post" action="index.asp">
		
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input name="txtUsername" value="<%=myUsername%>" class="form-control" placeholder="Username">        
          </div>
		  
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input name="txtPassword" value="<%=myPassword%>"  class="form-control" type="password" placeholder="Password">    
          </div>

          <div class="form-group">
		  <input type="button" id="cmdLogin" name="cmdLogin" value="Login" class="btn btn-def btn-block">
          
          </div>
          <div class="form-group text-center">
            <a href="#">Forgot Password</a>&nbsp;|&nbsp;<a href="#">Support</a>
          </div>
		  
		  <input type="hidden" name="txtPageMode" value="<%=myMode%>">
        </form>        
      </div>  
    </div>    
  </div>
</div>
	
	
	
	<div id="notifMessage" class="alert alert-danger" role="alert">
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	  </button>
	<strong>Invalid Username or Password.</strong> Change a few things up and try logging again.
	</div>
					
	
		

	
	
		
	

	
	<!-- Fixed footer -->
	
	
		<input type="hidden" name="txtPageMode" value="<%=myMode%>">
	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>