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
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View2);
            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "select c.cat_name,s.store_name,s.floor,s.shop_owner,s.phone,s.e_mail,s.web_address from stores s,category c where s.store_id='" + Session["storeid"] + "' and  c.cat_id=s.cat_Id";
            dt = con.data_return(cmd);
            TextBox9.Text=dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();
            TextBox6.Text = dt.Rows[0][5].ToString();
            TextBox7.Text = dt.Rows[0][6].ToString();
        }
    }
    
}