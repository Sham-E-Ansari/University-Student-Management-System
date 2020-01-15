<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_info.aspx.cs" Inherits="teacher_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>Teacher Profile | AUST Student Management</title>
	
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
        <li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Task</a>
				<div class="dropdown-content">
					<form action="#dv1" method="get">
						<button type="submit" name="division" value= "Teacher Information">Teacher Information</button>					
					</form>
					<form action="#dv2" method="get">
						<button type="submit" name="division" value= "Add Student Marks">Add Student Marks</button>					
					</form>
					<form action="#dv3" method="get">
						<button type="submit" name="division" value= "Show Marks">Show Marks</button>					
					</form>
					<form action="#dv4" method="get">
						<button type="submit" name="division" value= "Upload section">Upload section</button>					
					</form>

					</div>
                    </li>
		
	</ul>
	
	</br>

    <form id="form1" runat="server">

<div class= "dv" id="dv1">
	<img src="images/aust_teacher.jpg" alt="Teacher" width="160px" height="200px" class="float-img2" title = "AUST Student Management">
	<p><b>Name: </b><asp:Label ID="LabelName" runat="server" Text=""></asp:Label></p>
	<p><b>Department: </b><asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
	<p><b>Designation: </b>Lecturer</p>
	<p><b>Details: </b>B.Sc, CSE, AUST.</p>
	<p><b>Area of Interest: </b>Machine Learning, Computer Vision, Quantum Computing, Web Application.</p>
    <br />
    <asp:Button ID="Button3" style="margin-left:200px;" Width="200px" runat="server" Text="Log Out" onclick="Button3_Click" />
</div>

<div class="dv" id="dv2">
		<h2 style="text-align:center">Add Student Marks</h2><br /><br />
            <b style="margin-left:150px">Student ID: </b><asp:TextBox ID="TextBox1" style="margin-left:50px" Width="200px" runat="server"></asp:TextBox>
            <b style="margin-left:30px">Department: </b><asp:DropDownList ID="DropDownList1" style="margin-left:42px" Width="200px" runat="server">
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
            <b style="margin-left:150px">Semester: </b><asp:DropDownList ID="DropDownList2" style="margin-left:62px" Width="200px" runat="server">
                    <asp:ListItem>1st Year 1st Semester</asp:ListItem>
                    <asp:ListItem>1st Year 2st Semester</asp:ListItem>
                    <asp:ListItem>2nd Year 1st Semester</asp:ListItem>
                    <asp:ListItem>2nd Year 2nd Semester</asp:ListItem>
                    <asp:ListItem>3rd Year 1st Semester</asp:ListItem>
                    <asp:ListItem>3rd Year 2nd Semester</asp:ListItem>
                    <asp:ListItem>4th Year 1st Semester</asp:ListItem>
                    <asp:ListItem>4th Year 2nd Semester</asp:ListItem>
                </asp:DropDownList>

                <b style="margin-left:30px">Course: </b><asp:TextBox ID="TextBox2" style="margin-left:75px" Width="200px" runat="server"></asp:TextBox><br />
                <br />
                <b style="margin-left:150px">Credit: </b><asp:TextBox ID="TextBox4" style="margin-left:80px" Width="200px" runat="server"></asp:TextBox>
            <b style="margin-left:30px">Score: </b><asp:TextBox ID="TextBox3" style="margin-left:88px" Width="200px" runat="server"></asp:TextBox><br />
            <br />
            <b style="margin-left:150px">Grade: </b><asp:DropDownList ID="DropDownList3" style="margin-left:80px" Width="200px" runat="server">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>C+</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                </asp:DropDownList>
            <b style="margin-left:30px">GPA: </b><asp:DropDownList ID="DropDownList4" style="margin-left:92px" Width="200px" runat="server">
                    <asp:ListItem>4.00</asp:ListItem>
                    <asp:ListItem>3.75</asp:ListItem>
                    <asp:ListItem>3.5</asp:ListItem>
                    <asp:ListItem>3.25</asp:ListItem>
                    <asp:ListItem>3.00</asp:ListItem>
                    <asp:ListItem>2.75</asp:ListItem>
                    <asp:ListItem>2.5</asp:ListItem>
                    <asp:ListItem>2.25</asp:ListItem>
                    <asp:ListItem>2.00</asp:ListItem>
                    <asp:ListItem>0.00</asp:ListItem>
                </asp:DropDownList><br />
            <br />
            <br />
            <asp:Button ID="Button2" style="margin-left:400px;" Width="200px" 
            runat="server" Text="Insert" onclick="Button2_Click" />
            <br />
            <br />
            <!--<input type="submit" style="margin-left:400px;" value="Insert">-->
		</div>

        <div class="dv" id="dv3">

            <h2 style="text-align:center">Show Student Marks</h2><br /><br />
            <b style="margin-left:150px">Student Department: </b><asp:DropDownList 
                ID="DropDownList7" style="margin-left:20px" runat="server" Width="200px">
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
            <asp:DropDownList ID="DropDownList8" style="margin-left:20px" runat="server" Width="200px">
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
            <b style="margin-left:150px">Course ID: </b><asp:TextBox ID="TextBox7" style="margin-left:88px" Width="200px" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button11" style="margin-left:400px;" Width="200px" 
                runat="server" Text="Show" onclick="Button11_Click"/>
            <br />

		    <asp:GridView ID="GridView2" style="margin-left:120px" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="r_id" HeaderText="Result ID" 
                        SortExpression="r_id" />
                    <asp:BoundField DataField="s_id" HeaderText="Sudent ID" 
                        SortExpression="s_id" />
                    <asp:BoundField DataField="dept_id" HeaderText="Department" 
                        SortExpression="dept_id" />
                    <asp:BoundField DataField="sem_name" HeaderText="Semester" 
                        SortExpression="sem_name" />
                    <asp:BoundField DataField="c_id" HeaderText="Course ID" SortExpression="c_id" />
                    <asp:BoundField DataField="credit" HeaderText="credit" 
                        SortExpression="credit" />
                    <asp:BoundField DataField="score" HeaderText="Score" SortExpression="score" />
                    <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
                    <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
                ProviderName="<%$ ConnectionStrings:MyDbConn.ProviderName %>" 
                
                
                
                
                SelectCommand="SELECT * FROM [result] WHERE (([dept_id] = @dept_id) AND ([sem_name] = @sem_name) AND ([c_id] = @c_id))"
                UpdateCommand="UPDATE [result] SET [s_id]=@s_id, [dept_id]=@dept_id, [sem_name]=@sem_name, [c_id]=@c_id, [credit]=@credit, [score]=@score, [grade]=@grade, [gpa]=@gpa WHERE [r_id]=@r_id"
                DeleteCommand="DELETE FROM [result] WHERE [r_id]=@r_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList7" Name="dept_id" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList8" Name="sem_name" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox7" Name="c_id" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

		    </div>


        <div class="dv" id="dv4">

        <h2 style="text-align:center">Upload Section</h2>
        <br /> <br />
            <b style="margin-left:150px">Course ID: </b><asp:TextBox ID="TextBox5" style="margin-left:50px" Width="200px" runat="server"></asp:TextBox>
        <b style="margin-left:30px">Chapter Name: </b><asp:TextBox ID="TextBox6" style="margin-left:50px" Width="200px" runat="server"></asp:TextBox>
        <br />
        <br />
            <b style="margin-left:150px">Department: </b><asp:DropDownList ID="DropDownList5" style="margin-left:35px" Width="200px" runat="server">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>IPE</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>TE</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            <b style="margin-left:30px">Semester: </b><asp:DropDownList ID="DropDownList6" style="margin-left:88px" Width="200px" runat="server">
                <asp:ListItem>1st Year 1st Semester</asp:ListItem>
                <asp:ListItem>1st Year 2nd Semester</asp:ListItem>
                <asp:ListItem>2nd Year 1st Semester</asp:ListItem>
                <asp:ListItem>2nd Year 2nd Semester</asp:ListItem>
                <asp:ListItem>3rd Year 1st Semester</asp:ListItem>
                <asp:ListItem>3rd Year 2nd Semester</asp:ListItem>
                <asp:ListItem>4th Year 1st Semester</asp:ListItem>
                <asp:ListItem>4th Year 2nd Semester</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
		<!--<input type="submit" style="margin-left:400px;" value="Upload Routine">-->
        <asp:FileUpload ID="FileUpload1" style="margin-left:400px;" Width="200px" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button4" style="margin-left:400px;" Width="200px" runat="server" 
                Text="Upload Material" OnClick="Button4_Click" />
            <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#999999"  
                BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-top: 20px ; margin-left: 70px" 
                AutoGenerateColumns="False" Width="351px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            
            <Columns>
                <asp:BoundField DataField="dept_id" HeaderText="Department"/>
                <asp:BoundField DataField="sem_name" HeaderText="Semester"/>
                <asp:BoundField DataField="c_id" HeaderText="Course Name"/>
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

</form>

</body>
</html>
