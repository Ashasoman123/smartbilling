using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;


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
            cmd.CommandText = "select * from product where store_id='" + Session["storeid"] + "'";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();

            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "select cat_name from category where cat_Id='" + Session["catid"] + "'";
            dt = con.data_return(cmd);

            TextBox6.Text =dt.Rows[0][0].ToString();
            TextBox2.Text = Session["storename"].ToString();
            
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "insert into product(store_id,amount,description,status) values('" + Session["storeid"] + "','" + TextBox4.Text + "','" + TextBox5.Text + "','a')";
        con.data_nonreturn(cmd);

        cmd = new SqlCommand();
        cmd.CommandText = "select max(product_id) from product";
        dt = new DataTable();
        dt = con.data_return(cmd);
        int id = int.Parse(dt.Rows[0][0].ToString());



       // int otp = new Random().Next(100000, 999999);
        //string otp_val = otp.ToString() + "@asdfghjklqwertyuiozxcvbnm234567890dfghjkldfvgdbhfnjvmdfjvnjdfnvjdfvnjdfvasdfghjklqwertyuiozxcvbnm234567890dfghjkldfvgdbhfnjvmdfjvnjdfnvjdfvnjdfv";
        string remoteFileUrl = "https://chart.googleapis.com/chart?cht=qr&chs=150x150&chl=" + id + "&choe=UTF-8";

        WebClient wc = new WebClient();
        byte[] originalData = wc.DownloadData(remoteFileUrl);

        MemoryStream stream = new MemoryStream(originalData);
        Bitmap originalImage = new Bitmap(stream);

        originalImage.Save(Server.MapPath(@"Qr_Images/" + id + ".jpg"));

        Response.Redirect("StoreManageProduct.aspx");
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = Convert.ToInt32(e.Item.Cells[0].Text);
        if (e.CommandName == "d")
        {
            cmd = new SqlCommand();
            cmd.CommandText = "delete from product where product_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("StoreManageProduct.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox7.Text = e.Item.Cells[1].Text;
            TextBox8.Text = e.Item.Cells[2].Text;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "update product set amount='"+TextBox8.Text+"',description='"+TextBox7.Text+"' where product_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Redirect("StoreManageProduct.aspx");
    }
}