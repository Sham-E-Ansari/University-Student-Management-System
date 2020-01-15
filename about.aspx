<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>About | AUST Student Management</title>
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
                  <asp:Button ID="Button4" runat="server" Text="View Profile" 
                        onclick="Button4_Click" />
                        <br />
                    <asp:Button ID="Button5" runat="server" Text="Log Out" 
                        onclick="Button5_Click" />
                  </nav>
                     <%}%>
					</form>
			</div>
			<article>
<div class="dv" style="margin-left:0px">
    
    <br />
	<table style="margin-left:80px">
	  <tr>
		<th style="background-color: gray">About AUST</th>
	  </tr>
	  <tr>
		<td style="background-color: LightGray"><p>Ahsanullah University of Science & Technology (AUST) follows a liberal arts approach to education which nurtures fresh ideas and gives new impetus to the 
		field of tertiary education. It ensures a high quality of education and aims to meet the demands of contemporary times.</p></td>
	  </tr>
	</table>

<br>
<br>

	<table style="margin-left:80px">
	  <tr>
		<th style="background-color: gray">Established</th>
		<th style="background-color: gray">Located</th>
	  </tr>
	  <tr>
		<td style="background-color: LightGray"><p>1995</p></td>
		<td style="background-color: LightGray"><p>Tejgaon, Dhaka</p></td>
	  </tr>
	</table>

</br>
</br>

<table style="margin-left:80px">
  <tr>
    <th style="background-color: gray">MISSION</th>
  </tr>
  <tr>
    <td style="background-color: LightGray"><p>The mission of AUST is to foster the national development process through the 
	creation of a centre of excellence in higher education that is responsive to society's needs, and able to develop creative leaders.
	It actively contributes to learning and the creation of knowledge.</p></td>
  </tr>
</table>

<br>
<br>

<table style="margin-left:80px">
  <tr>
    <th style="background-color: gray">GOAL</th>
  </tr>
  <tr>
    <td style="background-color: LightGray"><p>The goal of the University is to provide an excellent broad-based education with a focus on 
	professional development for students, in order to equip them with the knowledge and skills necessary for leading the country in its 
	quest for development. Along with this, the University provides an environment for faculty development to ensure a dynamic teaching 
	environment. Faculty will be provided with an environment in which they can further their teaching-learning abilities and contribute 
	to the creation of new knowledge by developing and using their research skills.</p></td>
  </tr>
</table>

        <br />

        </div>
        </article>


</div>

</br>

<footer>
	Copyright | AUST Student Management | 2018-2019
</footer>

</body>
</html>
