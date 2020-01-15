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

public partial class student_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            LabelName.Text = Session["user"].ToString();
            Label1.Text = Session["Dept"].ToString();
            Label2.Text = Session["Sem"].ToString();
        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Remove("ID");
        Session.Remove("Pass");
        Session.Remove("Dept");
        Session.Remove("Sem");
        Response.Redirect("Default.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string dept = Session["Dept"].ToString();
        string sem = Session["Sem"].ToString();

        using (SqlConnection con = new SqlConnection(
          WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Select m_id, chap_name, m_name FROM dbo.material where dept_id='" + dept + "'and sem_name='" + sem + "' ";
                cmd.Connection = con;
                con.Open();
                GridView3.DataSource = cmd.ExecuteReader();
                GridView3.DataBind();
                con.Close();
            }
        }
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
}