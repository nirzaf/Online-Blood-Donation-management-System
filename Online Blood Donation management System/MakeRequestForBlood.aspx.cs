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
    BloodRequestBL bloodreq = new BloodRequestBL();
    BloodGroupBusinessLayer group = new BloodGroupBusinessLayer();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = AddCountry.GetCountryName();
            BindDDL(ddlCountry, ds, "CountryName","CountryID");
            ddlCountry.Items.Insert(0, "---Select---");
            DataSet ds1 = BloodTypeBusinessLayer.ShowBloodType();
            DataSet ds2 = group.ShowAllBloodGroup();
            BindDDL(ddlBloodType, ds1, "TypeName", "BloodTypeID");
            ddlBloodType.Items.Insert(0, "---Select---");
            BindDDL(ddlBloodGroup, ds2, "BloodGroup","BloodGroupID");
            ddlBloodGroup.Items.Insert(0, "---Select---");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            bloodreq.Donodrid = 0;
            bloodreq.Orgid = 0;
            bloodreq.Name = txtName.Text.Trim();
            bloodreq.Email = txtMail.Text.Trim();
            bloodreq.Phone = txtPhone.Text.Trim();
            bloodreq.Country = ddlCountry.SelectedItem.Text;
            bloodreq.State = ddlState.SelectedItem.Text;
            bloodreq.City = ddlCity.SelectedItem.Text;
            bloodreq.Location = ddlLocation.SelectedItem.Text;
            bloodreq.Address = txtAddress.Text.Trim();
            bloodreq.Bloodtype = ddlBloodType.SelectedItem.Text;
            bloodreq.Bloodgroup = ddlBloodGroup.SelectedItem.Text;
            bloodreq.Appdate = GMDatePicker1.Date;
            bloodreq.Reqdate = GMDatePicker2.Date;
            bloodreq.Reqtype = "Consumer";
            bloodreq.InsertBloodRequest();
            Response.Redirect("~/RequestConfirmation.aspx");
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    private void BindDDL(DropDownList ddl, DataSet ds, string txtField,string txtvalue)
    {
        ddl.DataSource = ds;
        ddl.DataTextField = txtField;
        ddl.DataValueField = txtvalue;
        ddl.DataBind();
    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int CountryId = int.Parse(ddlCountry.SelectedItem.Value);
            DataSet ds = StateBusinessLayer.GetStateByCountryId(CountryId);
            BindDDL(ddlState, ds, "StateName", "StateID");
            ddlState.Items.Insert(0, "SELECT STATE");
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country Name";
        }
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            int StateId = int.Parse(ddlState.SelectedItem.Value);
            DataSet ds = CityBusinessLayer.GetCityByState(StateId);
            BindDDL(ddlCity, ds, "CityName", "CityID");
            ddlCity.Items.Insert(0, "SELECT CITY");
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State Name";
        }
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int CityId = int.Parse(ddlCity.SelectedItem.Value);
            DataSet ds = LocationBusinessLayer.GetLocationByCity(CityId);
            BindDDL(ddlLocation, ds, "LocationName", "LocationID");
            ddlLocation.Items.Insert(0, "SELECT LOCATION");
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
          lblMsg.Text = "Plz Select City...!";
        }
      
    }
}
