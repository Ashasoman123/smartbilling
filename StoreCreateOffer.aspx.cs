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
            MultiView1.SetActiveView(View1);
            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "select * from offer where store_id='" + Session["storeid"] + "'";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "insert into offer values('" + Session["storeid"] + "','" + TextBox3.Text + "','" + System.DateTime.Now.ToShortDateString()+ "','a','"+TextBox4.Text+"','"+TextBox5.Text+"')";
        con.data_nonreturn(cmd);
        Response.Redirect("StoreCreateOffer.aspx");
    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "d")
        {
            cmd = new SqlCommand();
            cmd.CommandText = "delete from offer where offer_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("StoreCreateOffer.aspx");
        }
        
    }
}