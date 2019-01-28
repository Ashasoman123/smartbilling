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
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            cmd = new SqlCommand();
            dt = new DataTable();
            cmd.CommandText = "select * from customer";
            dt = con.data_return(cmd);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }

    }
}