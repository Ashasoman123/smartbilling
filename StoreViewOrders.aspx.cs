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
            cmd.CommandText = "select * from order_master o,customer c where o.store_id='" + Session["storeid"] + "' and o.cust_id=c.cust_id and o.pay_status='Pending'";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "v")
        {
            MultiView1.SetActiveView(View2);
            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "select * from order_details od,product p where od.ormas_id='" + id + "' and od.product_id=p.product_id";
            dt = con.data_return(cmd);
            DataGrid2.DataSource = dt;
            DataGrid2.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "update order_master set pay_status='Verified' where ormas_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Redirect("StoreViewOrders.aspx");
    }
}