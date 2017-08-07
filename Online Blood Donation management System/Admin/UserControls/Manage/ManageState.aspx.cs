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
public partial class Admin_ManageState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        DataSet ds = new DataSet();
        if (!IsPostBack)
        {
            int StateId =int.Parse(Request["StateId"]);
            ds=AddCountry.ShowStateByID(StateId);
            txtUpdateStateName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtUpdateStateCode.Text = ds.Tables[0].Rows[0][1].ToString();
            txtUpdateStateDesc.Text = ds.Tables[0].Rows[0][2].ToString();
            DataSet ds1 = new DataSet();
            ds1=AddCountry.GetCountryName();
            ddlCountry.DataSource = ds1.Tables[0];
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryID";
            ddlCountry.DataBind();
           
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int StateId = 0;
        int CountryId = 0;
        string StateName, StateCode, StateDesc;
        //Variable Initialization
        StateName="";
        StateCode="";
        StateDesc="";
        if(txtUpdateStateName.Text.Trim().Length>0)
                
            StateName = txtUpdateStateName.Text;
        
        else
        
            lblmsg.Text="Enter State Name";
    
        if(txtUpdateStateCode.Text.Trim().Length>0)

                    StateCode = txtUpdateStateCode.Text;
        else

            lblmsg.Text="Enter State Code";

        if(txtUpdateStateDesc.Text.Trim().Length>0)
                StateDesc = txtUpdateStateDesc.Text;
        else
                lblmsg.Text = "Enter State Description";

        StateId = int.Parse(Request["StateId"]);
        CountryId =int.Parse(ddlCountry.SelectedItem.Value);
       StateBusinessLayer.UdateState(StateId,StateName, StateCode, StateDesc, CountryId);
        lblmsg.Text = "State Updated Successfully....";
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Show/ShowState.aspx");
    }
}
