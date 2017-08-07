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
    BloodGroupBusinessLayer group = new BloodGroupBusinessLayer();
    UserAccountBusinessLayer user = new UserAccountBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            user.Username = Session["username"].ToString();
            DataSet ds = new DataSet();
            ds = user.GetAccountId();
            AcId = ds.Tables[0].Rows[0][0].ToString();
            user.Accountid = int.Parse(AcId);
            DataSet ds2 = new DataSet();
            ds2 = user.ShowDonorAllDetail();
            txtName.Text = ds2.Tables[0].Rows[0][0].ToString();
            txtMail.Text = ds2.Tables[0].Rows[0][1].ToString();
            txtPhone.Text = ds2.Tables[0].Rows[0][2].ToString();
            txtCountry.Text = ds2.Tables[0].Rows[0][3].ToString();
            txtState.Text = ds2.Tables[0].Rows[0][4].ToString();
            txtCity.Text = ds2.Tables[0].Rows[0][5].ToString();
            txtLocation.Text = ds2.Tables[0].Rows[0][6].ToString();
            txtBloodType.Text = ds2.Tables[0].Rows[0][7].ToString();
            txtBloodGroup.Text = ds2.Tables[0].Rows[0][8].ToString();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            user.Username = Session["username"].ToString();
            DataSet ds = new DataSet();
            ds = user.GetAccountId();
            AcId = ds.Tables[0].Rows[0][0].ToString();
            bloodreq.Donodrid = int.Parse(AcId); ;
            bloodreq.Orgid = 0;
            bloodreq.Name = txtName.Text.Trim();
            bloodreq.Email = txtMail.Text.Trim();
            bloodreq.Phone = txtPhone.Text.Trim();
            bloodreq.Country = txtCountry.Text.Trim();
            bloodreq.State = txtState.Text.Trim();
            bloodreq.City = txtCity.Text.Trim();
            bloodreq.Location = txtLocation.Text.Trim();
            bloodreq.Address = txtAddress.Text.Trim();
            bloodreq.Bloodtype = txtBloodType.Text.Trim();
            bloodreq.Bloodgroup = txtBloodGroup.Text.Trim();
            bloodreq.Appdate = GMDatePicker1.Date;
            bloodreq.Reqdate = GMDatePicker2.Date;
            bloodreq.Reqtype = "Donor";
            bloodreq.InsertBloodRequest();
            Response.Redirect("~/Donor/RequestConfirmation.aspx");
        }
        catch (Exception)
        {
            
            throw;
        }
}
}
