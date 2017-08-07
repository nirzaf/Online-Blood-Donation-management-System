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

public partial class Registration_BloodDonationDetail : System.Web.UI.Page
{
    UserAccountBusinessLayer user = new UserAccountBusinessLayer();
    OrganizationAccountBusinessLayer org = new OrganizationAccountBusinessLayer();
    EmployeeDetailBL emp = new EmployeeDetailBL();
    BloodDonationDetailBL donation = new BloodDonationDetailBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            ddlDonorName.DataSource = user.ShowDonorName();
            ddlDonorName.DataTextField="FirstName";
            ddlDonorName.DataValueField="UserAccountID";
            ddlDonorName.DataBind();
            ddlDonorName.Items.Insert(0, "---Select---");

            ddlOrgName.DataSource = org.ShowOrganizationName();
            ddlOrgName.DataTextField = "OrgName";
            ddlOrgName.DataValueField = "OrgID";
            ddlOrgName.DataBind();
            ddlOrgName.Items.Insert(0, "---Select---");

            ddlTakerName.DataSource = emp.ShowEmployeeName();
            ddlTakerName.DataTextField = "Name";
            ddlTakerName.DataValueField = "EmpId";
            ddlTakerName.DataBind();
            ddlTakerName.Items.Insert(0, "---Select---");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            donation.Donorid = int.Parse(ddlDonorName.SelectedValue);
            donation.Date = GMDatePicker1.Date;
            donation.Takerid = int.Parse(ddlTakerName.SelectedValue);
            donation.Orgid = int.Parse(ddlOrgName.SelectedValue);
            donation.Qty = txtQty.Text.Trim();
            donation.Comment = txtComment.Text.Trim();
            donation.InsertDonationDetail();
            lblMsg.Text = "Inserted...!";
            
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
