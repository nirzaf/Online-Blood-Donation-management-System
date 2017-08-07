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

public partial class CallCenter_ChangePassword : System.Web.UI.Page
{
    CheckUser user = new CheckUser();
    EmployeeDetailBL emp = new EmployeeDetailBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            txtUserName.Text = Session["username"].ToString();
        }

    }
    protected void btnUpdateAccount_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserName.Text.Trim().Length > 0 && txtOldPwd.Text.Trim().Length > 0)
            {
                user.Username = txtUserName.Text.Trim();
                user.Password = txtOldPwd.Text.Trim();
                if (user.CheckEmployee() == true)
                {
                    string Acid = Session["Acid"].ToString();
                    emp.Accountid = int.Parse(Acid);
                    emp.Uname = txtUserName.Text.Trim();
                    emp.Password = txtPassword.Text.Trim();
                    emp.UpdateEmployeeAccountDetail();
                    lblMsg.Text = "Employee Account Updated Successfully...!";
                }
                else
                {
                    lblMsg.Text = "Plz Check Your Password...!";
                }
            }
            else
            {
                lblMsg.Text = "Plz Enter Value...!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}
