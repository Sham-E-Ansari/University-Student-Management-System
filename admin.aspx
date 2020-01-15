<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>Admin | AUST Student Management</title>
	<link rel="stylesheet" href="styles/myStyle.css">
	
	
	<style>
	body {
		background-image: url("images/BBGG.jpg");
	
	}
	button[type=submit] {
		display: inline-block;
		color: Black;
		background-color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		min-width: 165px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		z-index: 1;
	}
	button[type=submit]:hover {
		background-color: DeepSkyBlue;
	}
	</style>
	
</head>
<body>
	<header>
		<img src="images/aust_logo.jpg" alt="Logo" width="80px" height="80px" class="float-img2" title = "AUST Student Management">
		<h1>AUST Student Management</h1>
	</header>
	<ul>
		<li><a class="active" href="Default.aspx">Home</a></li>
		<li><a href="AUST_news.aspx">AUST News</a></li>
		<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Department</a>
				<div class="dropdown-content">
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "CSE">CSE</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "EEE">EEE</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "IPE">IPE</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "CiviL">Civil</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "ME">ME</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "TE">TE</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "Architecture">Architecture</button>					
					</form>
					<form action="dept_info.aspx" method="get">
						<button type="submit" name="dept" value= "BBA">BBA</button>					
					</form>
					
					
				</div>
		</li>
		<li><a href="academic.aspx">Academic Calendar</a></li>
		<li><a href="events.aspx">Latest Event</a></li>
		<li><a href="about.aspx">About</a></li>
	</ul>
	
	</br>
	
	</br>
	
		<div class="dv">
			<div>
					<form id="form1" runat="server">
					<label for="fname" style="margin-left:400px;" Width="200px">ID</label>
                    <br />
					<asp:TextBox ID="TextBox1" style="margin-left:400px;" Width="200px" runat="server" placeholder="Enter Your ID..."></asp:TextBox>
					<!--<input type="text" id="yname" name="yourname" placeholder="Enter Your ID...">-->
                    <br />
					<label for="lname" style="margin-left:400px;" Width="200px">Password</label>
                    <br />
                    <asp:TextBox ID="TextBox2" style="margin-left:400px;" Width="200px" runat="server" placeholder="Enter Password..."></asp:TextBox>
					<!--<input type="text" id="msg" name="message" placeholder="Enter Password...">-->

					<!--<input type="submit" value="Submit">-->
                    <br />
                    <br />
                    <asp:Button ID="Button1" style="margin-left:400px;" Width="200px" runat="server" Text="Submit" />
					</form>
			</div>
			
		</div>
	<footer>
		Copyright | AUST Student Management | 2018-2019
	</footer>
	</body>
</html>
