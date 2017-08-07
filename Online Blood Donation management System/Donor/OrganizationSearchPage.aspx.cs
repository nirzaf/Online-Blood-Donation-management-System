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
        Label5.Visible = false;
        org.Locationid = int.Parse(ddlLocation.SelectedItem.Value);
        GridView1.DataSource = org.GetOrgByLocationId();
        GridView1.DataBind();

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkid");
            if (CheckBox1.Checked)
                chk.Checked = true;
            else
                chk.Checked = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            CheckBox chk;
            foreach (GridViewRow gr in GridView1.Rows)
            {
                Label l;
                l = (Label)gr.FindControl("lblid");
                chk = (CheckBox)gr.FindControl("chkid");
                if (chk.Checked)
                {
                    donor.Acid = int.Parse(Session["Acid"].ToString());
                    donor.Orgid = int.Parse(l.Text);
                    donor.AddDonorPreferedOrganization();
                    lblMsg.Text = "Added Successfully.....!";
                }
                else if (chk.Checked == false)
                {
                    lblMsg.Text = "No Organization Selected....!";
                }
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
       
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Select")
            {
                donor.Acid = int.Parse(Session["Acid"].ToString());
                donor.Orgid =int.Parse(e.CommandArgument.ToString());
                donor.AddDonorPreferedOrganization();
                lblMsg.Text = "Added Successfully.....!";
            }
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
    