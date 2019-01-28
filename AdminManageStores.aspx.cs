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
            catfill();
            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "SELECT category.cat_name, stores.store_id,stores.store_name, stores.floor, stores.shop_owner, stores.phone, stores.e_mail, stores.web_address FROM category INNER JOIN stores ON category.cat_Id = stores.cat_id";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
       
    }
    public void catfill()
    {
        cmd = new SqlCommand();
        dt = new DataTable();
        cmd.CommandText = "select * from category";
        dt = con.data_return(cmd);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "cat_name";
        DropDownList1.DataValueField = "cat_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "cat_name";
        DropDownList2.DataValueField = "cat_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "insert into stores (store_name,cat_id,floor,shop_owner,phone,e_mail,web_address,username) values('" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','"+TextBox14.Text+"')";
        con.data_nonreturn(cmd);

        cmd = new SqlCommand();
        cmd.CommandText = "insert into login values('" + TextBox14.Text + "','" + TextBox15.Text + "','Store')";
        con.data_nonreturn(cmd);


        Response.Redirect("AdminManageStores.aspx");
    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "d")
        {
            cmd = new SqlCommand();
            cmd.CommandText = "delete from stores where store_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageStores.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox8.Text = e.Item.Cells[2].Text;
            TextBox9.Text = e.Item.Cells[3].Text;
            TextBox10.Text = e.Item.Cells[4].Text;
            TextBox11.Text = e.Item.Cells[5].Text;
            TextBox12.Text = e.Item.Cells[6].Text;
            TextBox13.Text = e.Item.Cells[7].Text;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "update stores set cat_id='"+DropDownList2.SelectedValue+"',store_name='"+TextBox8.Text+"',floor='"+TextBox9.Text+"',shop_owner='"+TextBox10.Text+"',phone='"+TextBox11.Text+"',e_mail='"+TextBox12.Text+"',web_address='"+TextBox13.Text+"' where store_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageStores.aspx");
    }
}