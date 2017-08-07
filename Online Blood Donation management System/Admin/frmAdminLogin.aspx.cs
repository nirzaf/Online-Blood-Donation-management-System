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

public partial class Admin_frmAdminLogin : System.Web.UI.Page
{
    CheckUser user = new CheckUser();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            user.Username = txtUsername.Text;
            user.Password = txtPassword.Text;
            if (user.GetAdmin() == true)
            {
                Session["Name"] = txtUsername.Text;
                Response.Redirect("~/Admin/AdminDefaultPage.aspx");
            }
            else
                Image2.Visible = true;
            lblMsg.Text = "Your Login Atempt Is Failed Plz try Again....!";
            txtPassword.Text = "";
            txtUsername.Focus();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }

    
}
