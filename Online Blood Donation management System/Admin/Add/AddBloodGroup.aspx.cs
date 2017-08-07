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

public partial class Admin_Add_AddBloodGroup : System.Web.UI.Page
{
    BloodGroupBusinessLayer objBloodGroup = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            InsertBloodGroup();
            Page.RegisterClientScriptBlock("Blood", "<script>alert('Blood Group Inserted')</script>");
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }

    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtBloodGroup.Text = "";
        txtGroupDesc.Text = "";
        txtBloodGroup.Focus();

    }
    public void InsertBloodGroup()
    {
        objBloodGroup = new BloodGroupBusinessLayer();
        objBloodGroup.BloodGroup = txtBloodGroup.Text;
        objBloodGroup.BloodDescription = txtGroupDesc.Text;
        objBloodGroup.InsertBloodGroup();
    }
}
