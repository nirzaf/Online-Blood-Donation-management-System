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
public partial class AddNewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCountry.DataSource=AddCountry.GetCountryName();
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryID";
            ddlCountry.DataBind();
            
        }

    }
    protected void btnAddState_Click(object sender, EventArgs e)
    {
        //VBARIABLE DECLARATION
        string StateName, StateCode, StateDesc;
        int CountryID;
        //VBARIABLE INITIALIZATION
        StateName = "";
        StateCode = "";
        StateDesc = "";
        CountryID = 0;
        
        //VALUES VALIDATION

        if (txtStateName.Text.Trim().Length > 0)
            StateName = txtStateName.Text.Trim();
        else
            lblMsg.Text = "Enter State Name";
        txtStateName.Focus();

        if (txtStateCode.Text.Trim().Length > 0)
            StateCode = txtStateCode.Text.Trim();
        else
            lblMsg.Text = "Enter State Code";
        txtStateCode.Focus();

        if (txtStateDesc.Text.Trim().Length > 0)
            StateDesc = txtStateDesc.Text.Trim();
        else
            lblMsg.Text = "Enter State Description";
        txtStateDesc.Focus();

        CountryID =int.Parse(ddlCountry.SelectedItem.Value);
       

        StateBusinessLayer.InsertNewState(StateName, StateCode, StateDesc, CountryID);
        lblMsg.Text = "New State Added Successfully...";
        txtStateName.Focus();

    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtStateName.Text = "";
        txtStateCode.Text = "";
        txtStateDesc.Text = "";
        txtStateName.Focus();
    }
}
