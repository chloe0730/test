<html>
<body>
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
							<li><a href="myprofile.asp">Account Settings</a></li>
							<li class="divider"></li>
							<li><a href="index.asp">Log out</a></li>

						</ul>
					</li>
					
				</ul>
			</div> <!-- /nav collapse -->
		</div>
	</div>
</body>
</html>