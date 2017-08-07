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

public partial class Admin_Add_EmployeeDetail : System.Web.UI.Page
{
    EmployeeDetailBL emp = new EmployeeDetailBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            emp.Name = txtName.Text.Trim();
            emp.Address = txtAddress.Text.Trim();
            emp.Phone = txtPhone.Text.Trim();
            emp.Email = txtMail.Text.Trim();
            emp.Uname = txtUserName.Text.Trim();
            emp.Password = txtPassword.Text.Trim();
            emp.Roleid = 3;
            emp.InsertEmployeeDetail();
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception)
        {
            
            throw;
        }

    }
}
