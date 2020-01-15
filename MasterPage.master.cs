using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
            
        }

        /*if (Session["ID"] != null)
        {
            TextID.Text = Session["ID"].ToString();
        }

        if (Session["Pass"] != null)
        {
            TextPass.Text = Session["Pass"].ToString();
        }*/
    }
    string login_type;
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["MyDbConn"].ToString());
        con.Open();

        //string userID = TextID.Text;
        //string userPass = TextPass.Text;
        //string type = ListBox1.Text;
        string type = DropDownList1.SelectedItem.Text;
        login_type = type;
        if (type == "Student")
        {

            string query = "select count(*) from student where s_id ='" + TextID.Text + "'and s_pass='" + TextPass.Text + "' ";

            string queryName = "select s_name from student where s_id ='" + TextID.Text + "' ";

            string queryID = "select s_id from student where s_id ='" + TextID.Text + "' ";

            string queryPass = "select s_pass from student where s_id ='" + TextID.Text + "' ";

            string queryDept = "select dept_id from student where s_id ='" + TextID.Text + "' ";

            string querySem = "select sem_name from student where s_id ='" + TextID.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {

                SqlCommand cmd1 = new SqlCommand(queryName, con);
                string output1 = cmd1.ExecuteScalar().ToString();
                Session["user"] = output1;
                Session["login"] = login_type;

                SqlCommand cmd2 = new SqlCommand(queryID, con);
                string output2 = cmd2.ExecuteScalar().ToString();
                Session["ID"] = output2;

                SqlCommand cmd3 = new SqlCommand(queryPass, con);
                string output3 = cmd3.ExecuteScalar().ToString();
                Session["Pass"] = output3;

                SqlCommand cmd4 = new SqlCommand(queryDept, con);
                string output4 = cmd4.ExecuteScalar().ToString();
                Session["Dept"] = output4;

                SqlCommand cmd5 = new SqlCommand(querySem, con);
                string output5 = cmd5.ExecuteScalar().ToString();
                Session["Sem"] = output5;


                Response.Redirect("student_info.aspx");
                //Server.Transfer("student_info.aspx");

            }
            else
            {
                Response.Write("Login Faild");
            }

        }
        if (type == "Admin")
        {

            string query = "select count(*) from admin where a_id ='" + TextID.Text + "'and a_pass='" + TextPass.Text + "' ";

            //string queryName = "select s_name from student where s_id ='" + TextID.Text + "' ";

            //string queryID = "select a_id from student where a_id ='" + TextID.Text + "' ";

            //string queryPass = "select a_pass from student where a_id ='" + TextID.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {

                //SqlCommand cmd1 = new SqlCommand(queryName, con);
               // string output1 = cmd1.ExecuteScalar().ToString();
                Session["user"] = output;
                Session["login"] = login_type;

                /*SqlCommand cmd2 = new SqlCommand(queryID, con);
                string output2 = cmd2.ExecuteScalar().ToString();
                Session["ID"] = output2;

                SqlCommand cmd3 = new SqlCommand(queryPass, con);
                string output3 = cmd3.ExecuteScalar().ToString();
                Session["Pass"] = output3;*/

                Response.Redirect("admin_page.aspx");
                //Server.Transfer("student_info.aspx");

            }
            else
            {
                Response.Write("Login Faild");
            }

        }


        if (type == "Teacher")
        {

            string query = "select count(*) from teacher where t_id ='" + TextID.Text + "'and t_pass='" + TextPass.Text + "' ";

            string queryName = "select t_name from teacher where t_id ='" + TextID.Text + "' ";

            string queryDept = "select dept_id from teacher where t_id ='" + TextID.Text + "' ";

            //string queryID = "select t_id from student where t_id ='" + TextID.Text + "' ";

            //string queryPass = "select t_pass from student where t_id ='" + TextID.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {

                SqlCommand cmd1 = new SqlCommand(queryName, con);
                string output1 = cmd1.ExecuteScalar().ToString();
                Session["user"] = output1;
                Session["login"] = login_type;

                /*SqlCommand cmd2 = new SqlCommand(queryID, con);
                string output2 = cmd2.ExecuteScalar().ToString();
                Session["ID"] = output2;

                SqlCommand cmd3 = new SqlCommand(queryPass, con);
                string output3 = cmd3.ExecuteScalar().ToString();
                Session["Pass"] = output3;*/

                SqlCommand cmd4 = new SqlCommand(queryDept, con);
                string output4 = cmd4.ExecuteScalar().ToString();
                Session["Dept"] = output4;

                Response.Redirect("teacher_info.aspx");
                //Server.Transfer("student_info.aspx");

            }
            else
            {
                Response.Write("Login Faild");
            }

        }

        

        
        //string query = "select * from student where s_id = userID and s_pass = userPass" ;

        
    }
    protected void TextPass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            if (Session["login"] == "Student")
            {
                Response.Redirect("student_info.aspx");
            }
            else if (Session["login"] == "Teacher")
            {
                Response.Redirect("teacher_info.aspx");
            }
            else if (Session["login"] == "Admin")
            {
                Response.Redirect("admin_page.aspx");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("Default.aspx");
    }
}
