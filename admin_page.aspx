<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_page.aspx.cs" Inherits="admin_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<title>Admin Page | AUST Student Management</title>
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
        <li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Task</a>
				<div class="dropdown-content">
					<form action="#dv1" method="get">
						<button type="submit" name="division" value= "Add Student">Add Student</button>					
					</form>
					<form action="#dv2" method="get">
						<button type="submit" name="division" value= "Add Teacher">Add Teacher</button>					
					</form>
					<form action="#dv3" method="get">
						<button type="submit" name="division" value= "Show Student">Show Student</button>					
					</form>
					<form action="#dv4" method="get">
						<button type="submit" name="division" value= "Show Teacher">Show Teacher</button>					
					</form>
					<form action="#dv5" method="get">
						<button type="submit" name="division" value= "Upload Section">Upload Section</button>					
					</form>

					</div>
                    </li>
	</ul>
	
		<!--<article style= "margin-left: 155px; border-left: none;">-->
		<br>

		    <form id="form1" runat="server">

            <!--<div class="dv">
            <a href="#dv1" style="margin-left:250px">Add Student</a>
            <a href="#dv2">Add Teacher</a>
            <a href="#dv3">Show Student</a>
            <a href="#dv4">Show Teacher</a>
            <a href="#dv5">Upload Section</a>
            </div>-->

            <div class="dv" id="dv1">

            <h2 style="text-align:center">Add Student</h2><br /><br />
			<!--<b>Student ID: </b><input type="text" name="match_id"><br>-->
            <b style="margin-left:350px">Student ID: </b><asp:TextBox ID="TextBox1" style="margin-left:50px" Width="200px" runat="server"></asp:TextBox><br />
            <br>
			<!--<b>Student Password: </b><input type="text" name="time_slot_id"><br>-->
            <b style="margin-left:350px">Student Password: </b><asp:TextBox ID="TextBox2" Width="200px" runat="server"></asp:TextBox><br />
            <br>
			<!--<b>Student Department: </b><input type="text" name="play_date"><br>-->
            <b style="margin-left:150px">Student Department: </b><asp:DropDownList 
                    ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>IPE</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>TE</asp:ListItem>
                    <asp:ListItem>Architecture</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                </asp:DropDownList>
              
            <b style="margin-left:30px">Student Semester: </b>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                    <asp:ListItem>1st year 1st semester</asp:ListItem>
                    <asp:ListItem>1st year 2nd semester</asp:ListItem>
                    <asp:ListItem>2nd year 1st semester</asp:ListItem>
                    <asp:ListItem>2nd year 2nd semester</asp:ListItem>
                    <asp:ListItem>3rd year 1st semester</asp:ListItem>
                    <asp:ListItem>3rd year 2nd semester</asp:ListItem>
                    <asp:ListItem>4th year 1st semester</asp:ListItem>
                    <asp:ListItem>4th year 2nd semester</asp:ListItem>
                </asp:DropDownList>
                
            <br />
            <br />
            <asp:Button ID="Button1" style="margin-left:400px;" Width="200px" runat="server" 
                    Text="Insert" onclick="Button1_Click" />
            <br />
            <!--<input type="submit" style="margin-left:400px;" value="Insert">
		    </article>-->

		</div>

		
		<div class="dv" id="dv2">
		<h2 style="text-align:center">Add Teacher</h2><br /><br />
			<!--<b>Teacher ID: </b><input type="text" name="match_id"><br>-->
            <b style="margin-left:350px">Teacher ID: </b><asp:TextBox ID="TextBox3" style="margin-left:50px" Width="200px" runat="server"></asp:TextBox><br />
            <br />
			<!--<b>Teacher Password: </b><input type="text" name="time_slot_id"><br>-->
            <b style="margin-left:350px">Teacher Password: </b><asp:TextBox ID="TextBox4" Width="200px" runat="server"></asp:TextBox><br />
            <br>
			<!--<b> Teacher Department: </b><input type="text" name="play_date"><br>-->
            <b style="margin-left:350px"> Teacher Department: </b>
            <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>IPE</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>TE</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" style="margin-left:400px;" Width="200px" runat="server" 
                Text="Insert" onclick="Button2_Click" />
            <br />
            <!--<input type="submit" style="margin-left:400px;" value="Insert">-->
		</div>


        <div class="dv" id="dv3">

            <h2 style="text-align:center">Show Student</h2><br /><br />
            <b style="margin-left:150px">Student Department: </b><asp:DropDownList 
                ID="DropDownList4" runat="server" Width="180px">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>IPE</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>TE</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            <b style="margin-left:30px">Student Semester: </b>
            <asp:DropDownList ID="DropDownList5" runat="server" Width="180px">
                <asp:ListItem>1st year 1st semester</asp:ListItem>
                <asp:ListItem>1st year 2nd semester</asp:ListItem>
                <asp:ListItem>2nd year 1st semester</asp:ListItem>
                <asp:ListItem>2nd year 2nd semester</asp:ListItem>
                <asp:ListItem>3rd year 1st semester</asp:ListItem>
                <asp:ListItem>3rd year 2nd semester</asp:ListItem>
                <asp:ListItem>4th year 1st semester</asp:ListItem>
                <asp:ListItem>4th year 2nd semester</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button11" style="margin-left:400px;" Width="200px" 
                runat="server" Text="Show" onclick="Button11_Click"/>
            <br />

            <!--<table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Studen Table</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Student ID</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Student Name</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Student Password</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Delete Student</span></td>
		</tr>
		<tr>
			<td>15-01-04-044</td>	
			<td>Shaminaj Towfika Disha</td>
			<td>12345</td>
			<td><button id="Button13">Delete</button></td>	
		</tr>
		  
	</table>-->

		    <asp:GridView ID="GridView1" style="margin-left:120px" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                DataKeyNames="s_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="s_id" HeaderText="Student ID" ReadOnly="True" 
                        SortExpression="s_id" />
                    <asp:BoundField DataField="s_name" HeaderText="Student Name" 
                        SortExpression="s_name" />
                    <asp:BoundField DataField="dept_id" HeaderText="Student Department" 
                        SortExpression="dept_id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
                ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
                
                
                SelectCommand="SELECT [s_id], [s_name], [dept_id] FROM [student] WHERE (([dept_id] = @dept_id) AND ([sem_name] = @sem_name))"
                UpdateCommand="UPDATE [student] SET [s_id]=@s_id, [s_name]=@s_name, [dept_id]=@dept_id WHERE [s_id]=@s_id"
                DeleteCommand="DELETE FROM [student] WHERE [s_id]=@s_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="dept_id" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList5" Name="sem_name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />

		    </div>


        <div class="dv" id="dv4">
		<h2 style="text-align:center">Show Teacher</h2><br /><br />
            <b style="margin-left:350px"> Teacher Department: </b>
            <asp:DropDownList ID="DropDownList6" runat="server" Width="180px">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>IPE</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>TE</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button5" style="margin-left:400px;" Width="200px" runat="server" Text="Show" />
            <br />
            
            <!--<input type="submit" style="margin-left:400px;" value="Insert">-->


            <!--<table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Teacher Table</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Teacher ID</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Teacher Name</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Teacher Password</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Delete Teacher</span></td>
		</tr>
		<tr>
			<td>10-11-12</td>	
			<td>Mr. Farhan Al Haque</td>
			<td>98765</td>
			<td><button id="Button12">Delete</button></td>	
		</tr>
		  
	</table>-->

		    <asp:GridView ID="GridView2" style="margin-left:120px" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                DataKeyNames="t_id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="t_id" HeaderText="Teacher ID" ReadOnly="True" 
                        SortExpression="t_id" />
                    <asp:BoundField DataField="t_name" HeaderText="Teacher Name" 
                        SortExpression="t_name" />
                    <asp:BoundField DataField="dept_id" HeaderText="Teacher Department" 
                        SortExpression="dept_id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
                ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
                
                SelectCommand="SELECT [t_id], [t_name], [dept_id] FROM [teacher] WHERE ([dept_id] = @dept_id)"
                UpdateCommand="UPDATE [teacher] SET [t_id]=@t_id, [t_name]=@t_name, [dept_id]=@dept_id WHERE [t_id]=@t_id"
                DeleteCommand="DELETE FROM [teacher] WHERE [t_id]=@t_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList6" Name="dept_id" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />

		</div>

		
		<div class="dv" id="dv5">

        <h2 style="text-align:center">Upload Section</h2>
        <br /> <br />
            <asp:DropDownList ID="DropDownList8" style="margin-left:300px" runat="server">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>IPE</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>TE</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList7" style="margin-left:100px" runat="server">
                <asp:ListItem>1st year 1st semester</asp:ListItem>
                <asp:ListItem>1st year 2nd semester</asp:ListItem>
                <asp:ListItem>2nd year 1st semester</asp:ListItem>
                <asp:ListItem>2nd year 2nd semester</asp:ListItem>
                <asp:ListItem>3rd year 1st semester</asp:ListItem>
                <asp:ListItem>3rd year 2nd semester</asp:ListItem>
                <asp:ListItem>4th year 1st semester</asp:ListItem>
                <asp:ListItem>4th year 2nd semester</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
		<!--<input type="submit" style="margin-left:400px;" value="Upload Routine">-->
        <asp:FileUpload ID="FileUpload1" style="margin-left:400px;" Width="200px" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button3" style="margin-left:400px;" Width="200px" runat="server" 
                Text="Upload Routine" OnClick="Button3_Click1" />
            <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#999999"  
                BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-top: 20px ; margin-left: 250px" 
                AutoGenerateColumns="False" Width="317px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            
            <Columns>
        <asp:BoundField DataField="ro_name" HeaderText="File Name"/>
        <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
               <asp:LinkButton ID="LinkButton1" runat="server" Text= "Download" CommandArgument='<%# Eval("ro_id") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
            
            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>
        <br />
        <br />
        
		    <asp:FileUpload ID="FileUpload2" style="margin-left:400px;" Width="200px" runat="server" />
		<br />
        <br />
		<!--<input type="submit" style="margin-left:400px;" value="Upload Academic Calendar">-->
        <asp:Button ID="Button4" style="margin-left:400px;" Width="200px" runat="server" Text="Upload Academic Calendar" />
        <br />
        <br />
        <b style="margin-left:50px">Event Title: </b><asp:TextBox ID="TextBox5" Width="200px" runat="server"></asp:TextBox>
        <b style="margin-left:100px">Posting Date: </b><asp:TextBox ID="TextBox6" Width="200px" runat="server"></asp:TextBox>
        <br />
        <br />
        <b style="margin-left:50px">Details: </b><asp:TextBox ID="TextBox7" runat="server" Height="134px" 
                Width="800px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button6" style="margin-left:400px;" Width="200px" runat="server" 
            Text="Upload Latest Events" onclick="Button6_Click"/>

            <br />

            <asp:GridView ID="GridView4" style="margin-left:120px" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource3" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
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
			    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
                    ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
                    SelectCommand="SELECT * FROM [event]"></asp:SqlDataSource>

                    <br />
        </div>

        </form>


        <!-- The Modal -->
        <!--<div id="myModal" class="modal">-->

          <!-- Modal content -->
          <!--<div class="modal-content">
            <div class="modal-header">
              <span class="close">&times;</span>
              <h2>1st Year 1st Semester</h2>
            </div>
	        <br>
            <div class="modal-body">
	          <table style="margin-left:120px">	
	
		<tr>
			<th colspan="4">Studen Table</th>
		</tr>
		<tr>
			<td style="text-align: center"><span style="font-weight:bold">Student ID</span></td>	
			<td style="text-align: center"><span style="font-weight:bold">Student Name</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Student Password</span></td>
			<td style="text-align: center"><span style="font-weight:bold">Delete Student</span></td>
		</tr>
		<tr>
			<td>15-01-04-044</td>	
			<td>Shaminaj Towfika Disha</td>
			<td>12345</td>
			<td><button id="Button7">Delete</button></td>	
		</tr>
			
			  
	</table>
            </div>
	        <br />
          </div>

        </div>-->
		

	<footer>
		Copyright | AUST Student Management | 2018-2019
	</footer>


     <!--<script>
         // Get the modal
         var modal = document.getElementById('myModal');

         // Get the button that opens the modal
         var btn = document.getElementById("Button5");

         // Get the <span> element that closes the modal
         var span = document.getElementsByClassName("close")[0];

         // When the user clicks the button, open the modal 
         btn.onclick = function () {
             modal.style.display = "block";
         }

         // When the user clicks on <span> (x), close the modal
         span.onclick = function () {
             modal.style.display = "none";
         }

         // When the user clicks anywhere outside of the modal, close it
         window.onclick = function (event) {
             if (event.target == modal) {
                 modal.style.display = "none";
             }
         }
	
    </script>-->

	</body>
</html>
