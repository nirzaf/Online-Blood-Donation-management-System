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
public partial class Admin_AddNewItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }  
    }

    protected void btnAddCountry_Click(object sender, EventArgs e)
    {
        
            //Variable Declaration
            string CountryName, CountryDesc, CountryCode;
            byte Active;
            //Initialization Variables
            CountryName = "";
            CountryDesc = "";
            CountryCode = "";
            //Validation Values
            if (txtCountryName.Text.Trim().Length > 0)
            {
                CountryName = txtCountryName.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Country Name";
            }
            if (txtCountryDesc.Text.Trim().Length > 0)
            {
                CountryDesc = txtCountryDesc.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Country  Description";
            }
            if (txtCountryCode.Text.Trim().Length > 0)
            {
                CountryCode = txtCountryCode.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Country Code";
            }
            Active =Convert.ToByte(Label1.Text);   
            AddCountry.InsertCountry(CountryName, CountryDesc, CountryCode);
            lblMsg.Text = "Country Added Successfully...!";  
        txtCountryName.Focus();
       
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtCountryName.Text = "";
        txtCountryDesc.Text = "";
        txtCountryCode.Text = "";
        lblMsg.Text = "";
        txtCountryName.Focus();
    }
}
