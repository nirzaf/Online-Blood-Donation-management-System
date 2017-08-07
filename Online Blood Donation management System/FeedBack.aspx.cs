using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
     {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Server = RAMYA-2DCA5B123;database=BloodBequeathFederalAgent;integrated security=sspi");
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into FeedBack values('" + TextBox2.Text + "','" + TextBox3.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Server = RAMYA-2DCA5B123;database=BloodBequeathFederalAgent;integrated security=sspi");
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from FeedBack", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "FeedBack");
        GridView1.DataSource=ds.Tables["FeedBack"];
        GridView1.DataBind();
        cn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
}
