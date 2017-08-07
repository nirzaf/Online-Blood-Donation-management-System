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


public partial class Registration_OrganizationRegistration : System.Web.UI.Page
{
    OrganizationBusinessLayer org = new OrganizationBusinessLayer();
    OrganizationAccountBusinessLayer account = new OrganizationAccountBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = AddCountry.GetCountryName();
            DataSet ds1 = org.ShowAllOrgType();
            BindDDL(ddlCountry, ds, "CountryName", "CountryID");
            BindDDL(ddlOrgType, ds1, "TypeName", "TypeID");
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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Trim().Length > 0)
        {
            account.Username = txtName.Text.Trim();
            account.Password = txtPassword.Text.Trim();
            if (account.GetUserName() == false)
            {
                account.Username = txtName.Text.Trim();
                account.Password = txtPassword.Text.Trim();
                account.HintQuestion = ddlHintQuestion.SelectedItem.Text;
                account.Answer = txtAnswer.Text;
                account.RoleId = 2;
                account.OrgName = txtOrgName.Text.Trim();
                account.OrgType = int.Parse(ddlOrgType.SelectedItem.Value);
                account.Email = txtEmail.Text.Trim();

                if (FileUpload1.HasFile == true)
                {
                    ViewState["Image"] = FileUpload1.FileName;
                    account.ImageURL = ViewState["Image"].ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/Organization/Images/" + FileUpload1.FileName));
                }
                else
                {
                    account.ImageURL = "";
                }

                account.Orgdescription = txtOrgDesc.Text.Trim();
                account.ContactNo1 = txtPhoneNo.Text.Trim();
                account.MobileNo = txtMobile.Text.Trim();
                account.Comment = txtComment.Text.Trim();
                account.Address = txtAddress.Text.Trim();
                account.Locationid = int.Parse(ddlLocation.SelectedItem.Value);
                account.Cityid = int.Parse(ddlCity.SelectedItem.Value);
                account.Stateid = int.Parse(ddlState.SelectedItem.Value);
                account.Countryid = int.Parse(ddlCountry.SelectedItem.Value);
                account.Zip = txtZipCode.Text.Trim().ToString();
                account.InsertOrgAccount();
                lblMsg.Text = "Added Successfully...!";
            }
            else if (account.GetUserName() == true)
            {
                Label17.Text = "Already Exists Plz Select Another User Name...!";
                txtName.Text = "";
                txtName.Focus();
            }
        }

    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            int CountryId = int.Parse(ddlCountry.SelectedItem.Value);
            DataSet ds = StateBusinessLayer.GetStateByCountryId(CountryId);
            BindDDL(ddlState, ds, "StateName", "StateID");
            ddlState.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country Name...";
        }

    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int StateId = int.Parse(ddlState.SelectedItem.Value);
            DataSet ds = CityBusinessLayer.GetCityByState(StateId);
            BindDDL(ddlCity, ds, "CityName", "CityID");
            ddlCity.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State Name...";
        }
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int CityId = int.Parse(ddlCity.SelectedItem.Value);
            DataSet ds = LocationBusinessLayer.GetLocationByCity(CityId);
            BindDDL(ddlLocation, ds, "LocationName", "LocationID");
            ddlLocation.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State Name...";
        }
    }
}
    