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
public partial class AddNewCity : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        { 
        ddlState.DataSource=StateBusinessLayer.GetStateNameById();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateID";
        ddlState.DataBind();
        }
    }
   
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtCityCode.Text = "";
        txtCityDesc.Text = "";
        txtCityName.Text = "";
        txtCityName.Focus();
        lblMsg.Text = "";
    }
    protected void btnAddCity_Click(object sender, EventArgs e)
    {  //variable declaration
        string CityName, CityCode, CityDescription;
        int StateID;

        //varaible initialization 
        CityCode = "";
        CityDescription = "";
        CityName = "";
        StateID = 0;
       
        //control's value validation
        if (txtCityName.Text.Trim().Length > 0)
            CityName = txtCityName.Text.Trim();

        else
            lblMsg.Text = "Enter City Name";
        if (txtCityDesc.Text.Trim().Length > 0)
            CityDescription = txtCityDesc.Text.Trim();
        else
            lblMsg.Text = "Enter City Description";

        if (txtCityCode.Text.Trim().Length > 0)
            CityCode = txtCityCode.Text.Trim();
        else
            lblMsg.Text = "Enter City Code";

        StateID = int.Parse(ddlState.SelectedItem.Value);
        //Active = Convert.ToByte(lblActive.Text);
        //make call to business layer
        
       CityBusinessLayer.InsertCity(CityName, CityDescription, CityCode, StateID);
        lblMsg.Text = "City Added Successfully...";
        txtCityName.Focus();

    }
}
