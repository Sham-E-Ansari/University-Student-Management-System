using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldata();
        }
    }
    private void filldata()
    {
        using (SqlConnection con = new SqlConnection(
           WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Select ro_id, dept_id, sem_name, ro_name FROM dbo.routine";
                cmd.Connection = con;
                con.Open();
                GridView3.DataSource = cmd.ExecuteReader();
                GridView3.DataBind();
                con.Close();
            }
        }

    }
    /*protected void Page_Load(object sender, EventArgs e)
    {
        //ConnectDB();
    }

    public void ConnectDB()
    {
        SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();
      if (con.State == System.Data.ConnectionState.Open)
        {
            DisplayMessage(this, "Connection to the database successful");
        }
        else
        {
            DisplayMessage(this, "Connection Failed");
        }
       
    }*/
    static public void DisplayMessage(Control page, string msg)
    {
        string myScript = String.Format("alert('{0}')", msg);
        ScriptManager.RegisterStartupScript(page, page.GetType(), "MyScript", myScript, true);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*try
        {
            SqlConnection con = new SqlConnection(
                 WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
            con.Open();

            string query = "insert into student(s_id,_s_pass, dept_id, sem_name)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ListBox1.Text + "','" + ListBox2.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);
        }
        catch (Exception ex)
        {
            DisplayMessage(this, ex.ToString());
           
        }*/

        SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into student(s_id, s_pass, dept_id, sem_name) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("admin_page.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        /*try
        {
            SqlConnection con = new SqlConnection(
                 WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
            con.Open();

            string query = "insert into student(s_id,_s_pass, dept_id, sem_name)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ListBox1.Text + "','" + ListBox2.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);
        }
        catch (Exception ex)
        {
            DisplayMessage(this, ex.ToString());
           
        }*/

        SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into teacher(t_id, t_pass, dept_id) values ('" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList3.SelectedItem.Text + "')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("admin_page.aspx");

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        /*try
        {
            SqlConnection con = new SqlConnection(
                 WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
            con.Open();

            string query = "insert into student(s_id,_s_pass, dept_id, sem_name)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ListBox1.Text + "','" + ListBox2.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);
        }
        catch (Exception ex)
        {
            DisplayMessage(this, ex.ToString());
           
        }*/

        SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into event(e_title, e_date, e_detail) values ('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("admin_page.aspx");

    }


    protected void Button11_Click(object sender, EventArgs e)
    {
        /*SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT [s_id], [s_name], [s_pass] FROM [student] WHERE [dept_id]='" + ListBox4.Text+ "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;*/


        //string query = "select s_id, s_name,s_pass from student";
        //string queryName = "select s_name from student where s_id ='" + TextID.Text + "' ";

        //SqlCommand cmd = new SqlCommand(query, con);
        //string output = cmd.ExecuteScalar().ToString();
        /*SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT s_id, s_name, dept_id FROM student WHERE dept_id ='" + DropDownList4.SelectedItem.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView4.DataSource = dt;

        con.Close();*/
        //Response.Redirect("admin_page.aspx");
    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        string deptUpload = DropDownList8.SelectedItem.Text;
        string semUpload = DropDownList7.SelectedItem.Text;
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;

        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);

                using (SqlConnection con = new SqlConnection(
               WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString))
                {
                    string query = "insert into routine(dept_id, sem_name, ro_name, ro_contenttype, ro_pdf) values(@dept_id, @sem_name, @ro_name, @ro_contenttype, @ro_pdf)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@dept_id", deptUpload);
                        cmd.Parameters.AddWithValue("@sem_name", semUpload);
                        cmd.Parameters.AddWithValue("@ro_name", filename);
                        cmd.Parameters.AddWithValue("@ro_contenttype", contentType);
                        cmd.Parameters.AddWithValue("@ro_pdf", bytes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int id = int.Parse((sender as LinkButton).CommandArgument);
        byte[] bytes;
        string deptUpload, semUpload, fileName, contentType;
        using (SqlConnection con = new SqlConnection(
           WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Select dept_id, sem_name, ro_name, ro_contenttype, ro_pdf FROM routine where ro_id=@ro_id";
                cmd.Parameters.AddWithValue("@ro_id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader str = cmd.ExecuteReader())
                {
                    str.Read();
                    deptUpload = str["dept_id"].ToString();
                    semUpload = str["sem_name"].ToString();
                    bytes = (byte[])str["ro_pdf"];
                    contentType = str["ro_contenttype"].ToString();
                    fileName = str["ro_name"].ToString();
                }
                con.Close();
            }
        }
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = contentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
}


