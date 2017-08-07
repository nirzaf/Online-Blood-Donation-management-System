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
public partial class Login : System.Web.UI.Page
{
    CheckUser user = new CheckUser();
    UserAccountBusinessLayer account = new UserAccountBusinessLayer();
    OrganizationAccountBusinessLayer org = new OrganizationAccountBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsername.Focus();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            user.Username = txtUsername.Text;
            user.Password = txtPassword.Text;
            //Check User
            
            if (user.GetUser() == true)
            {
                account.Username = txtUsername.Text;
                DataSet ds = new DataSet();
                ds = account.GetAccountId();
                string AcId = ds.Tables[0].Rows[0][0].ToString();
                Session["username"] = txtUsername.Text;
                Session["Acid"] = AcId;
                DataSet ds1 = new DataSet();
                account.Accountid =int.Parse(AcId);
                ds1 = account.GetAddressId();
                Session["addid"] = ds1.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/Donor/DonorHome.aspx");
            }
            else
                Image2.Visible = true;
            lblMsg.Text = "Your Login Attempt Is Failed Plz try Again....!";
            txtPassword.Text = "";
            txtUsername.Focus();
            //Checking Organization
            if (user.GetOrganization() == true)
            {
                account.Username = txtUsername.Text;
                DataSet ds = new DataSet();
                ds = account.GetAccountId();
                string AcId = ds.Tables[0].Rows[0][0].ToString();
                Session["username"] = txtUsername.Text;
                Session["Acid"] = AcId;
                DataSet ds1 = new DataSet();
                org.Orgid =int.Parse(AcId);
                ds1 = org.GetOrgAddressId();
                Session["addid"]=ds1.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/Organization/OrganizationHome.aspx");
            }
            else
                Image2.Visible = true;
            lblMsg.Text = "Your Login Atempt Is Failed Plz try Again....!";
            txtPassword.Text = "";
            txtUsername.Focus();
            //Employee Checking
            if (user.CheckEmployee() == true)
            {
                account.Username = txtUsername.Text;
                DataSet ds = new DataSet();
                ds = account.GetAccountId();
                string AcId = ds.Tables[0].Rows[0][0].ToString();
                Session["username"] = txtUsername.Text;
                Session["Acid"] = AcId;
                Response.Redirect("~/CallCenter/CallCenterHome.aspx");
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
