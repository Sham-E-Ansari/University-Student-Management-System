<%@ Page Language="C#" AutoEventWireup="true" CodeFile="events.aspx.cs" Inherits="events" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<title>Latest Events | AUST Student Management</title>
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
                     </div>

                     <article>
            <div class="dv" style="margin-left:0px">

            <br />

			<h3 style="text-align: center">LATEST EVENTS, FALL SEMESTER 2017</h3>
			<h4 style="text-align: center">BACHELOR DEGREE PROGRAMS</h4>
			<br>
			    <asp:GridView ID="GridView1" style="margin-left:90px" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="e_title" HeaderText="News Title" 
                            SortExpression="e_title" />
                        <asp:BoundField DataField="e_date" HeaderText="Posting Date" 
                            SortExpression="e_date" />
                        <asp:BoundField DataField="e_detail" HeaderText="Details" 
                            SortExpression="e_date" />
                        

                    </Columns>
                </asp:GridView>
                                        <!--<asp:ButtonField Text="Details" />--GridView er vetore hobe eta button jodi dei-->
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
                    ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
                    SelectCommand="SELECT * FROM [event]"></asp:SqlDataSource>

			<!--<table style="margin-left:120px">
			<tr>
				<th colspan="3">Latest Events</th>
			</tr>
			<tr>
				<td style="text-align: center"><span style="font-weight:bold">News Title</span></td>
				<td style="text-align: center"><span style="font-weight:bold">Posting Date</span></td>
				<td style="text-align: center"><span style="font-weight:bold">Details</span></td>
			</tr>
			
			<tr>
				<td>Only classes of this University on 09 January 2018 will remain suspended for smooth management of the "10th Convocation 2018"</td>
				<td>07/01/18</td>
				<td><button id="myBtn">Show Details</button></td>
			</tr>
			
			<tr>
				<td>Achievement of AUST students</td>
				<td>07/01/18</td>
				<td><button id="Button1">Show Details</button></td>
			</tr>
			
			<tr>
				<td>A Voluntary Blood Donation Program will be held on 25th January, 2018</td>
				<td>07/01/18.</td>
				<td><button id="Button2">Show Details</button></td>
			</tr>
			
			</table>-->
			
			</div>

			
			<!-- The Modal -->
<!--<div id="myModal" class="modal">-->

  <!-- Modal content -->
  <!--<div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Latest Events</h2>
    </div>
	<br>
    <div class="modal-body">
	  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 
	  1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but 
	  also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
	  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </div>
	<br>
  </div>

</div>-->

<!-- The Modal -->
<!--<div id="Div1" class="modal">-->

  <!-- Modal content -->
  <!--<div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Latest Events</h2>
    </div>
	<br>
    <div class="modal-body">
	  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 
	  1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but 
	  also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
	  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </div>
	<br>
  </div>

</div>-->

<!-- The Modal -->
<!--<div id="Div2" class="modal">-->

  <!-- Modal content -->
  <!--<div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Latest Events</h2>
    </div>
	<br>
    <div class="modal-body">
	  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 
	  1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but 
	  also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
	  containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </div>
	<br>
  </div>

</div>-->
			
    </article>
    </form>
</div>

	<footer>
		Copyright | AUST Student Management | 2018-2019
	</footer>
	
	<!--<script>
	    // Get the modal
	    var modal = document.getElementById('myModal');
	    var modal1 = document.getElementById('Div1');
	    var modal2 = document.getElementById('Div2');

	    // Get the button that opens the modal
	    var btn = document.getElementById("myBtn");
	    var btn1 = document.getElementById("Button1");
	    var btn2 = document.getElementById("Button2");

	    // Get the <span> element that closes the modal
	    var span = document.getElementsByClassName("close")[0];
	    var span1 = document.getElementsByClassName("close")[1];
	    var span2 = document.getElementsByClassName("close")[2];

	    // When the user clicks the button, open the modal 
	    btn.onclick = function () {
	        modal.style.display = "block";
	    }
	    btn1.onclick = function () {
	        modal1.style.display = "block";
	    }
	    btn2.onclick = function () {
	        modal2.style.display = "block";
	    }

	    // When the user clicks on <span> (x), close the modal
	    span.onclick = function () {
	        modal.style.display = "none";
	    }
	    span1.onclick = function () {
	        modal1.style.display = "none";
	    }
	    span2.onclick = function () {
	        modal2.style.display = "none";
	    }

	    // When the user clicks anywhere outside of the modal, close it
	    window.onclick = function (event) {
	        if (event.target == modal) {
	            modal.style.display = "none";
	        }
	    }
	    window.onclick = function (event) {
	        if (event.target == modal1) {
	            modal1.style.display = "none";
	        }
	    }
	    window.onclick = function (event) {
	        if (event.target == modal2) {
	            modal2.style.display = "none";
	        }
	    }
	
</script>-->


	
	</body>
</html>
