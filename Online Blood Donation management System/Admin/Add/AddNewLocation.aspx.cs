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
public partial class AddNewLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCity.DataSource = CityBusinessLayer.GetCityName();
            ddlCity.DataTextField = "CityName";
            ddlCity.DataValueField = "CityID";
            ddlCity.DataBind();
        }


    }

    protected void btnAddCity_Click(object sender, EventArgs e)
    {
        //Variable Declaration
        int CityId = 0;
        CityId = int.Parse(ddlCity.SelectedItem.Value);
        string Locname, LocDesc, LocCode, Pincode;
        //Initailization
        Locname = "";
        LocDesc = "";
        LocCode = "";
        Pincode = "";
        //Value Validation
        if (txtLocName.Text.Trim().Length > 0)
            Locname = txtLocName.Text.Trim();
        else
            lblMsg.Text = "Enter Location Name...";

        if (txtLocDesc.Text.Trim().Length > 0)
            LocDesc = txtLocDesc.Text.Trim();
        else
            lblMsg.Text = "Enter Location Description...";

        if (txtLocCode.Text.Trim().Length > 0)
            LocCode = txtLocCode.Text.Trim();
        else
            lblMsg.Text = "Enter Location Code...";

        if (txtPinCode.Text.Trim().Length > 0)
            Pincode = txtPinCode.Text.Trim();
        else
            lblMsg.Text = "Enter PinCode...";
        //Calling Location BusinessLayer

        LocationBusinessLayer.InsertLocation(Locname, LocDesc, LocCode, CityId, Pincode);
        lblMsg.Text = "Location Added Successfully...";
        txtLocName.Focus();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtLocName.Text = "";
        txtLocDesc.Text = "";
        txtLocCode.Text = "";
        txtPinCode.Text = "";
        lblMsg.Text = "";
        txtLocName.Focus();
    }
}
