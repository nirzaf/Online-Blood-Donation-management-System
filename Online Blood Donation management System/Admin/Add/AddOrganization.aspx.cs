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
public partial class Admin_AddOrganization : System.Web.UI.Page
{
    OrganizationBusinessLayer org = new OrganizationBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        org.TypeName = txtOrgName.Text.Trim();
        org.TypeDescription = txtDescription.Text.Trim();
        if (FileUpload1.HasFile == true)
        {
            ViewState["Image"] = FileUpload1.FileName;
            org.OrgImage = ViewState["Image"].ToString();
            FileUpload1.SaveAs(Server.MapPath("~/Admin/OrganizationImages/"+FileUpload1.FileName));
        }
        else
	    {
          org.OrgImage ="";
          
	    }
        org.InsertOrganization();
        lblMsg.Text = "Added Successfully...!";
        txtOrgName.Focus();
    }   
   
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtOrgName.Text = "";
        txtDescription.Text = "";
        txtOrgName.Focus();
    }
}
