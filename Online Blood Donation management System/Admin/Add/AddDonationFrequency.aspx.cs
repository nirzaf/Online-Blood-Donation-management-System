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
public partial class Admin_AddDonationFrequency : System.Web.UI.Page
{
    DonationFrequency frquency = new DonationFrequency();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        frquency.Freq = txtFrequency.Text.Trim();
        frquency.Freqdesc = txtDescription.Text.Trim();
        frquency.AddFrequency();
        lblMsg.Text = "Added Successfully....!";
        txtFrequency.Focus();
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtFrequency.Text = "";
        txtDescription.Text = "";
        txtFrequency.Focus();
    }
}
