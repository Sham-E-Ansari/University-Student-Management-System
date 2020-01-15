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

public partial class teacher_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            LabelName.Text = Session["user"].ToString();
            Label1.Text = Session["Dept"].ToString();
        }
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
                cmd.CommandText = "Select m_id, dept_id, sem_name, c_id, chap_name, m_name FROM dbo.material";
                cmd.Connection = con;
                con.Open();
                GridView3.DataSource = cmd.ExecuteReader();
                GridView3.DataBind();
                con.Close();
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into result(s_id, dept_id, sem_name, c_id, credit, score, grade, gpa) values ('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("teacher_info.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("ID");
        Session.Remove("Pass");
        Session.Remove("Dept");
        Response.Redirect("Default.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string deptUpload = DropDownList5.SelectedItem.Text;
        string semUpload = DropDownList6.SelectedItem.Text;
        string courseUpload = TextBox5.Text;
        string chapUpload = TextBox6.Text;
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
                    string query = "insert into material(dept_id, sem_name, c_id, chap_name, m_name, m_contenttype, m_pdf) values(@dept_id, @sem_name, @c_id, @chap_name, @m_name, @m_contenttype, @m_pdf)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@dept_id", deptUpload);
                        cmd.Parameters.AddWithValue("@sem_name", semUpload);
                        cmd.Parameters.AddWithValue("@c_id", courseUpload);
                        cmd.Parameters.AddWithValue("@chap_name", chapUpload);
                        cmd.Parameters.AddWithValue("@m_name", filename);
                        cmd.Parameters.AddWithValue("@m_contenttype", contentType);
                        cmd.Parameters.AddWithValue("@m_pdf", bytes);
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
        string fileName, contentType;
        using (SqlConnection con = new SqlConnection(
           WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Select m_name, m_contenttype, m_pdf FROM material where m_id=@m_id";
                cmd.Parameters.AddWithValue("@m_id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader str = cmd.ExecuteReader())
                {
                    str.Read();
                    bytes = (byte[])str["m_pdf"];
                    contentType = str["m_contenttype"].ToString();
                    fileName = str["m_name"].ToString();
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
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
}