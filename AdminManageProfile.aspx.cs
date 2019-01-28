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
            cmd.CommandText = "select * from mall_profile";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        cmd = new SqlCommand();
        cmd.CommandText = "insert into mall_profile values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "')";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageProfile.aspx");
    }


    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "d")
        {
            cmd = new SqlCommand();
            cmd.CommandText = "delete from mall_profile where profile_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageProfile.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            
            TextBox10.Text = e.Item.Cells[1].Text;
            TextBox11.Text = e.Item.Cells[2].Text;
            TextBox12.Text = e.Item.Cells[3].Text;
            TextBox13.Text = e.Item.Cells[4].Text;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "update mall_profile set contact_no='"+TextBox10.Text+"',email='"+TextBox11.Text+"',web_address='"+TextBox12.Text+"',facilities='"+TextBox13.Text+"' where profile_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageProfile.aspx");
    }
}