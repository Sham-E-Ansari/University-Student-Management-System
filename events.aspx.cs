using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("events.aspx");
    }
}