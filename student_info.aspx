<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_info.aspx.cs" Inherits="student_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>Student Profile | AUST Student Management</title>
	
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

    <form id="form1" runat="server">

<div class= "dv">
	<img src="images/15-01-04-044.jpg" alt="Profile Picture" width="130px" height="160px" class="float-img2" title = "AUST Student Management">
	<p"><b>Name: </b>
    <asp:Label ID="LabelName" runat="server" Text=""></asp:Label></p>
	<p><b>Department: </b>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
	<p><b>Semester: </b>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
    <br />
    <asp:Button ID="Button5" style="margin-left:100px;" Width="200px" runat="server" onclick="Button5_Click" Text="Log Out" />
    
</div>
</br>

	<table>	
	
		<tr>
			<th colspan="4">Results</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Year</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Semester</span></td>
			<td style="text-align: center"><span style="font-weight:bold">GPA</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Details</span></td>
		</tr>
		<tr>
			<td>1st</td>	
			<td>1st</td>
			<td>3.10</td>
			<td><button id="myBtn">Grades</button></td>	
		</tr>
        <tr>
			<td>1st</td>	
			<td>2nd</td>
			<td>3.20</td>
			<td><button id="Button1">Grades</button></td>	
		</tr>
        <tr>
			<td>2nd</td>	
			<td>1st</td>
			<td>3.30</td>
			<td><button id="Button2">Grades</button></td>	
		</tr>
        <tr>
			<td>2nd</td>	
			<td>2nd</td>
			<td>3.40</td>
			<td><button id="Button3">Grades</button></td>	
		</tr>
        <tr>
			<td>3rd</td>	
			<td>1st</td>
			<td>3.50</td>
			<td><button id="Button4">Grades</button></td>	
		</tr>
			
			  
	</table>
	
	<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>1st Year 1st Semester</h2>
    </div>
	<br>
    <div class="modal-body">
	  <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Grades</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Subject</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Credit</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Marks</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Letter Grade</span></td>
		</tr>
		<tr>
			<td>Software Development-I</td>	
			<td>1.50</td>
			<td>85</td>
			<td>A+</td>	
		</tr>
			
			  
	</table>
    </div>
	<br>
  </div>

</div>

	<!-- The Modal -->
<div id="Div1" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>1st Year 2nd Semester</h2>
    </div>
	<br>
    <div class="modal-body">
	  <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Grades</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Subject</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Credit</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Marks</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Letter Grade</span></td>
		</tr>
		<tr>
			<td>Software Development_II</td>	
			<td>1.50</td>
			<td>75</td>
			<td>A</td>	
		</tr>
			
			  
	</table>
    </div>
	<br>
  </div>

</div>

	<!-- The Modal -->
<div id="Div2" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>2nd Year 1st Semester</h2>
    </div>
	<br>
    <div class="modal-body">
	  <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Grades</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Subject</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Credit</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Marks</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Letter Grade</span></td>
		</tr>
		<tr>
			<td>Software Development-III</td>	
			<td>0.75</td>
			<td>82</td>
			<td>A+</td>	
		</tr>
			
			  
	</table>
    </div>
	<br>
  </div>

</div>

	<!-- The Modal -->
<div id="Div3" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>2nd Year 2nd Semester</h2>
    </div>
	<br>
    <div class="modal-body">
	  <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Grades</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Subject</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Credit</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Marks</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Letter Grade</span></td>
		</tr>
		<tr>
			<td>Software Development-IV</td>	
			<td>0.75</td>
			<td>72</td>
			<td>A-</td>	
		</tr>
			
			  
	</table>
    </div>
	<br>
  </div>

</div>

	<!-- The Modal -->
<div id="Div4" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>3rd Year 1st Semester</h2>
    </div>
	<br>
    <div class="modal-body">
	  <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Grades</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Subject</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Credit</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Marks</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Letter Grade</span></td>
		</tr>
		<tr>
			<td>Software Development-V</td>	
			<td>0.75</td>
			<td>88</td>
			<td>A+</td>	
		</tr>
			
			  
	</table>
    </div>
	<br>
  </div>

</div>

<br />
    <br />

    <div class="dv">
        
    </div>

    <div class= "dv">
    <h2 style="text-align:center">Results</h2><br /><br />
    <asp:GridView ID="GridView1" style="margin-left:120px" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="s_id" HeaderText="ID" SortExpression="s_id" />
            <asp:BoundField DataField="dept_id" HeaderText="Department" 
                SortExpression="dept_id" />
            <asp:BoundField DataField="sem_name" HeaderText="Semester" 
                SortExpression="sem_name" />
            <asp:BoundField DataField="c_id" HeaderText="Course" SortExpression="c_id" />
            <asp:BoundField DataField="credit" HeaderText="Credit" 
                SortExpression="credit" />
            <asp:BoundField DataField="score" HeaderText="Score" SortExpression="score" />
            <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
            <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
            ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
            SelectCommand="SELECT [s_id], [dept_id], [sem_name], [c_id], [credit], [score], [grade], [gpa] FROM [result] WHERE ([s_id] = @s_id)">
            <SelectParameters>
                <asp:SessionParameter Name="s_id" SessionField="ID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div class="dv" id="dv5">
            
        <h2 style="text-align:center">Download Section</h2>
        <br /> <br />
             <asp:DropDownList ID="DropDownList5" style="margin-left:400px" runat="server" DataSourceID="SqlDataSource2" DataTextField="c_id" DataValueField="c_id">
                
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" SelectCommand="SELECT [c_id] FROM [course] WHERE (([sem_name] = @sem_name) AND ([dept_id] = @dept_id))">
                <SelectParameters>
                    <asp:SessionParameter Name="sem_name" SessionField="Sem" Type="String" />
                    <asp:SessionParameter Name="dept_id" SessionField="Dept" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br /> <br />
      <asp:Button ID="Button6" style="margin-left:400px;" Width="200px" runat="server" 
                Text="Show Material" OnClick="Button6_Click" />
            <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#999999"  
                BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-top: 20px ; margin-left: 250px" 
                AutoGenerateColumns="False" Width="405px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            
            <Columns>
                <asp:BoundField DataField="chap_name" HeaderText="Chapter Name"/>
                <asp:BoundField DataField="m_name" HeaderText="Material Name"/>
               <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
               <asp:LinkButton ID="LinkButton1" runat="server" Text= "Download" CommandArgument='<%# Eval("m_id") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
            
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>
        <br />
        <br />
        </div>

    

<footer>
	Copyright | AUST Student Management | 2018-2019
</footer>

<script>
    // Get the modal
    var modal = document.getElementById('myModal');
    var modal1 = document.getElementById('Div1');
    var modal2 = document.getElementById('Div2');
    var modal3 = document.getElementById('Div3');
    var modal4 = document.getElementById('Div4');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");
    var btn1 = document.getElementById("Button1");
    var btn2 = document.getElementById("Button2");
    var btn3 = document.getElementById("Button3");
    var btn4 = document.getElementById("Button4");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    var span1 = document.getElementsByClassName("close")[1];
    var span2 = document.getElementsByClassName("close")[2];
    var span3 = document.getElementsByClassName("close")[3];
    var span4 = document.getElementsByClassName("close")[4];

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
    btn3.onclick = function () {
        modal3.style.display = "block";
    }
    btn4.onclick = function () {
        modal4.style.display = "block";
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
    span3.onclick = function () {
        modal3.style.display = "none";
    }
    span4.onclick = function () {
        modal4.style.display = "none";
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
    window.onclick = function (event) {
        if (event.target == modal3) {
            modal3.style.display = "none";
        }
    }
    window.onclick = function (event) {
        if (event.target == modal4) {
            modal4.style.display = "none";
        }
    }
</script>

</form>

</body>
</html>
