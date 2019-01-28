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
            cmd.CommandText = "select * from category";
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
        cmd.CommandText = "insert into category(cat_name)values('"+TextBox3.Text+"')";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageCategory.aspx");
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "d")
        {
            cmd = new SqlCommand();
            cmd.CommandText = "delete from category where cat_Id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageCategory.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox4.Text = e.Item.Cells[1].Text;
        }
    }
        


    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "update category set cat_name='"+TextBox4.Text+"' where cat_Id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageCategory.aspx");
    }


   
}