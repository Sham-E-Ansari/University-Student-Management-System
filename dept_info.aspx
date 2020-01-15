<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dept_info.aspx.cs" Inherits="dept_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>Department | AUST Student Management</title>
	
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
		<li><a href="Default.aspx">Home</a></li>
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
	
<div class= "dv">
	<img src="images/aust_logo.jpg" alt="Logo" width="100px" height="125px" class="float-img2" title = "AUST Student Management">
	<p><b>Department Name: </b> CSE</p>
	<p><b>Description: </b>The department of Computer Science and Engineering, abbreviated CSE, is offering an undergraduate engineering degree program 
	since the establishment of the university in the year 1995 with a view to offer quality higher education to numerous worthy young fellows as well as 
	to meet the huge demand of highly qualified specialists in the field.</p>
</div>

<br>

<div class= "dv">
	<img src="images/cse_teacher.jpg" alt="Teacher" width="120px" height="160px" class="float-img2" title = "AUST Student Management">
	<p><b>Name: </b>Dr. Shahedur Rahman</p>
	<p><b>Designation: </b>Professor & Head</p>
	<p><b>Details: </b>B.Sc. Engg. (EEE), M.Sc(Digital Systems), Ph.D. (King's College London), PGCert HE, UK.[On Leave].</p>
	<p><b>Area of Interest: </b>Image processing applications, image retrieval in medical applications, speech and audio processing.</p>
</div>

<br>

<div class= "dv">
	<img src="images/aust_teacher.jpg" alt="Teacher" width="120px" height="160px" class="float-img2" title = "AUST Student Management">
	<p><b>Name: </b>Mr. Md. Aminur Rahman</p>
	<p><b>Designation: </b>Lecturer</p>
	<p><b>Details: </b>B.Sc, CSE, AUST.</p>
	<p><b>Area of Interest: </b>Machine Learning, Computer Vision, Quantum Computing, Web Application.</p>
</div>


<footer>
	Copyright | AUST Student Management | 2018-2019
</footer>

</body>
</html>
