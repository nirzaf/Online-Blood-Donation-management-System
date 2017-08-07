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

public partial class MakeRequestForBlood : System.Web.UI.Page
{
    string AcId; 
    BloodRequestBL bloodreq = new BloodRequestBL();
    BloodGroupBusinessLayer blood = new BloodGroupBusinessLayer();
  
    OrganizationAccountBusinessLayer org = new OrganizationAccountBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds3 = BloodTypeBusinessLayer.ShowBloodType();
            DataSet ds4 = blood.ShowAllBloodGroup();
            BindDDL(ddlBloodType, ds3, "TypeName", "BloodTypeID");
            BindDDL(ddlBloodGroup, ds4, "BloodGroup", "BloodGroupID");
            org.Username = Session["username"].ToString();
           
            DataSet ds = new DataSet();
            ds = org.GetAccountId();
            AcId = ds.Tables[0].Rows[0][0].ToString();
            org.Orgid = int.Parse(AcId);
            
            DataSet ds2 = new DataSet();
            ds2 = org.ShowOrganizationAllDetail();
            txtName.Text = ds2.Tables[0].Rows[0][0].ToString();
            txtMail.Text = ds2.Tables[0].Rows[0][1].ToString();
            txtPhone.Text = ds2.Tables[0].Rows[0][2].ToString();
            txtCountry.Text = ds2.Tables[0].Rows[0][3].ToString();
            txtState.Text = ds2.Tables[0].Rows[0][4].ToString();
            txtCity.Text = ds2.Tables[0].Rows[0][5].ToString();
            txtLocation.Text = ds2.Tables[0].Rows[0][6].ToString();
          
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            org.Username = Session["username"].ToString();
            DataSet ds = new DataSet();
            ds = org.GetAccountId();
            AcId = ds.Tables[0].Rows[0][0].ToString();
            bloodreq.Donodrid = 0;
            bloodreq.Orgid = int.Parse(AcId);
            bloodreq.Name = txtName.Text.Trim();
            bloodreq.Email = txtMail.Text.Trim();
            bloodreq.Phone = txtPhone.Text.Trim();
            bloodreq.Country = txtCountry.Text.Trim();
            bloodreq.State = txtState.Text.Trim();
            bloodreq.City = txtCity.Text.Trim();
            bloodreq.Location = txtLocation.Text.Trim();
            bloodreq.Address = txtAddress.Text.Trim();
            bloodreq.Bloodtype = ddlBloodType.SelectedItem.Text.Trim();
            bloodreq.Bloodgroup = ddlBloodGroup.SelectedItem.Text.Trim();
            bloodreq.Appdate = GMDatePicker1.Date;
            bloodreq.Reqdate = GMDatePicker2.Date;
            bloodreq.Reqtype = "Organization";
            bloodreq.InsertBloodRequest();
            Response.Redirect("~/Organization/RequestConfirmation.aspx");
        }
        catch (Exception)
        {

            throw;
        }
    }
        private void BindDDL(DropDownList ddl, DataSet ds, string txtField, string valField)
    {
        ddl.DataSource = ds;
        ddl.DataTextField = txtField;
        ddl.DataValueField = valField;
        ddl.DataBind();
    }
}

