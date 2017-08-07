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
public partial class Admin_AddNewBloodType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string TypeName = "";
        string TypeDesc = "";
        //Validation Assignment
        if (txtBloodType.Text.Trim().Length > 0)
            TypeName = txtBloodType.Text.Trim();
        else
            lblMsg.Text = "Enter Blood Type...";
        txtBloodType.Focus();

        if (txtBloodDesc.Text.Trim().Length > 0)
            TypeDesc = txtBloodDesc.Text.Trim();
        else
            lblMsg.Text = "Enter Description...";
        txtBloodDesc.Focus();

        //Calling Business Class
        BloodTypeBusinessLayer.InsertBloodType(TypeName, TypeDesc);
        lblMsg.Text = "Type Addded Successfully...!";
        txtBloodType.Focus();
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtBloodType.Text = "";
        txtBloodDesc.Text = "";
        lblMsg.Text = "";
        txtBloodType.Focus();
    }
}
