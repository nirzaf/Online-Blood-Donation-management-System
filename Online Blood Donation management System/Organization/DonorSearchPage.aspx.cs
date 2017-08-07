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
public partial class Registration_DonorSearchPage : System.Web.UI.Page
{
    SelectOrgByLocation org = new SelectOrgByLocation();
    DonorPreferedOrganization donor = new DonorPreferedOrganization();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
           
            //lblUser.Text += Session["username"].ToString();
            Label5.Visible = true;
            // ddlCountry.Items.Insert(0, "SELECT COUNTRY");
            DataSet ds = new DataSet();
            ds = AddCountry.GetCountryName();
            BindDDL(ddlCountry, ds, "CountryName", "CountryID");
            ddlCountry.Items.Insert(0, "---Select---");
        }
    }
    private void BindDDL(DropDownList ddl, DataSet ds, string txtField, string valField)
    {
        ddl.DataSource = ds;
        ddl.DataTextField = txtField;
        ddl.DataValueField = valField;
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
        }
        catch (Exception)
        {
           lblMsg.Text="Plz Select Country Name";
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

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select City...!";
        }
      
    }
    protected void ddlLocation_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            Label5.Visible = false;
            org.Locationid = int.Parse(ddlLocation.SelectedItem.Value);
            GridView1.DataSource = org.GetDonorByLocationId();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
       

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            Label5.Visible = false;
            org.Locationid = int.Parse(ddlLocation.SelectedItem.Value);
            GridView1.DataSource = org.GetDonorByLocationId();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}
