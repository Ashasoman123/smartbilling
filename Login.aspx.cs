using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    DataTable dt = new DataTable();
    ConnectionClass1 con = new ConnectionClass1();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        cmd = new SqlCommand();
        dt = new DataTable();
        cmd.CommandText = "select * from login where username='" + username + "' and password='" + password + "'";
        dt = con.data_return(cmd);
        if (dt.Rows.Count > 0)
        {
            string un = dt.Rows[0][0].ToString();
            string pa = dt.Rows[0][1].ToString();
            if (un == TextBox1.Text && pa == TextBox2.Text)
            {
                string type1 = dt.Rows[0][2].ToString();
                if (type1 == "Admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                if (type1 == "Store")
                {
                    cmd = new SqlCommand();
                    dt = new DataTable();
                    cmd.CommandText = "select * from stores where username='" + username + "'";
                    dt = con.data_return(cmd);
                    Session["storeid"] = dt.Rows[0][0].ToString();
                    Session["storename"] = dt.Rows[0][1].ToString();
                    Session["catid"] = dt.Rows[0][2].ToString();

                    Response.Redirect("StoreHome.aspx");
                }

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Incorrect Username/Password !!!";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Incorrect Username/Password !!!";
        }
    }
}