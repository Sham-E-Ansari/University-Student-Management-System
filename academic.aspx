<%@ Page Language="C#" AutoEventWireup="true" CodeFile="academic.aspx.cs" Inherits="academic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<title>Academic Calendar | AUST Student Management</title>
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
			
			<div class="homes">
        
			<div>

                    <form id="form1" runat="server">
                    <%if(Session["user"]!=null){%>
                    <nav>
                  <label for="flogin">Logged in</label>
                  <br />
                  <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
                  <br />
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="View Profile" 
                        onclick="Button1_Click" />
                        <br />
                    <asp:Button ID="Button2" runat="server" Text="Log Out" 
                        onclick="Button2_Click" />
                  </nav>
                     <%}%>
					</form>
			</div>

                     <article>
            
            <div class="dv" style="margin-left:0px">
			<h3 style="text-align: center">ACADEMIC CALENDAR, FALL SEMESTER 2017</h3>
			<h4 style="text-align: center">BACHELOR DEGREE PROGRAMS</h4>
			<p style="text-align: center">In pursuance of the decision of the emergency meeting of the Heads of the Departments/School/ Offices held on 16 October 2017, the Academic 
			Calendar for Fall-2017 Semester has now been finalized as follows:</p>
			<br>
			<table style="margin-left:90px">
			<tr>
				<th colspan="2">Academic Calendar</th>
			</tr>
			<tr>
				<td style="text-align: center"><span style="font-weight:bold">Program</span></td>
				<td style="text-align: center"><span style="font-weight:bold">Date</span></td>
			</tr>
			
			<tr>
				<td>Orientation, Classes and other relevant events</td>
				<td>Orientation & Reception for Freshers' only: 09-11-2017 (Thursday)<br>All Classes: From 11-11-2017 (Saturday) to 28-12-2017 (Thursday)
				<br>Midterm break:  From 29-12-2017 (Friday) to 05-01-2018 (Friday)<br>All Classes: From 06-01-2018 (Saturday) to 14-02-2018 (Wednesday)
				<br>Farewell for outgoing students only: 15-02-2018 (Thursday)</td>
			</tr>
			
			<tr>
				<td>Preparatory Leave</td>
				<td>From  16-02-2018 (Friday) to 02-03-2018 (Friday)</td>
			</tr>
			
			<tr>
				<td>Semester Final Examinations</td>
				<td>From   03-03-2018 (Saturday) to 22-03-2018 (Thursday)</td>
			</tr>
			
			<tr>
				<td>Result</td>
				<td>From   24-03-2018 (Saturday) to 05-04-2018 (Thursday)</td>
			</tr>
			
			<tr>
				<td>Clearance/Improvement/ Carryover Examinations</td>
				<td>From   07-04-2018 (Saturday) to 19-04-2018 (Thursday)</td>
			</tr>
			
			<tr>
				<td colspan = "2"><p><b>Clearance/Improvement/ Carryover Examinations</b></p></td>
			</tr>
			
			<tr>
				<td>Orientation and Reception</td>
				<td>21-04-2018 (Saturday)</td>
			</tr>
			
			<tr>
				<td>Classes</td>
				<td>22-04-2018 (Sunday)</td>
			</tr>
			
			</table>
			
			<br>
			<p style="text-align: center">N.B: The University authority reserves the right to re-fix the above dates, if needed.</p>
			
			</div>

            </article>
            </div>

	</br>

	<footer>
		Copyright | AUST Student Management | 2018-2019
	</footer>
	</body>
</html>
