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
public partial class Registration_DonaorRegi : System.Web.UI.Page
{
   BloodGroupBusinessLayer blood = new BloodGroupBusinessLayer();
    //UserPersonalBusinessLayer user = new UserPersonalBusinessLayer();
   UserAccountBusinessLayer account = new UserAccountBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            //ViewState["Password"] = txtPassword.Text;
           
            DataSet ds = AddCountry.GetCountryName();
            DataSet ds1 = BloodTypeBusinessLayer.ShowBloodType();
            DataSet ds2 = blood.ShowAllBloodGroup();
            BindDDL(ddlCountry, ds, "CountryName", "CountryID");
            ddlCountry.Items.Insert(0, "---Select---");
            BindDDL(ddlBloodType, ds1, "TypeName", "BloodTypeID");
            BindDDL(ddlBloodGroup, ds2, "BloodGroup", "BloodGroupID");
        
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
            ddlState.Items.Insert(0, "---Select---");
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country...!";
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
            lblMsg.Text = "Plz Select State...!";
        }
            
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            int CityId = int.Parse(ddlCity.SelectedItem.Value);
            DataSet ds = LocationBusinessLayer.GetLocationByCity(CityId);
            BindDDL(ddlLocation, ds, "LocationName", "LocationID");
            //if (ddlCity.SelectedItem.Text == "hyderabad")
            //{
            //    ddlLocation.Items.Add("Ameerpet");
            //    ddlLocation.Items.Add("KPHB");
            //    ddlLocation.Items.Add("AmberPet");
            //    ddlLocation.Items.Add("chinthal");
            //}
            //else
            //{
            //    ddlLocation.Items.Add("ranipet");
            //    ddlLocation.Items.Add("spl");
            //}



         ddlLocation.Items.Insert(0, "---Select---");    
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select City...!";
        }
       
    }

    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
            if (txtUserName.Text.Trim().Length > 0 && txtPassword.Text.Trim().Length>0)
            {
                account.Username = txtUserName.Text.Trim();
                account.Password = txtPassword.Text.Trim();
                if (account.GetUserName() == false)
                {
                    //Account Detail
                    account.Username = txtUserName.Text.Trim();
                    //txtPassword.Text=(TextBox)ViewState["Password"].ToString();// txtPassword.Text.Trim();
                    if (txtPassword.Text != "")
                    {
                        account.Password = txtPassword.Text.Trim();
                    }
                    else
                    {
                        lblMsg.Text = "Plz Enter Password...!";
                        txtPassword.Focus();
                    }
                    account.HintQuestion = ddlHintQuestion.SelectedItem.Text;
                    account.Answer = txtHintAnswer.Text;
                    account.RoleId = 1;

                    //Personal Detail
                    account.FName = txtFName.Text.Trim();
                    account.MName = txtMName.Text;
                    account.LName = txtLName.Text.Trim();
                    account.Email = txtEmail.Text.Trim();
                    account.DOB = GMDatePicker1.Date;
                    account.Weight = float.Parse(txtWeight.Text);
                    string Gender = "";
                    if (radMale.Checked == true)
                        Gender = radMale.Text;
                    else
                        Gender = radFemale.Text;
                    account.Gender = Gender;
                    if (FileUpload1.HasFile)
                    {
                        account.ImageURL = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Donor/Images" + FileUpload1.FileName));
                    }
                    else
                    {
                        account.ImageURL= "";
                    }
                    account.BloodGroup = int.Parse(ddlBloodGroup.SelectedItem.Value);
                    account.BloodType = int.Parse(ddlBloodType.SelectedItem.Value);
                    account.ContactNo1 = txtPhoneOffice.Text.Trim();
                    account.ContactNo2 = txtPhoneHome.Text.Trim();
                    account.MobileNo = txtMobile.Text.Trim();
                    account.Address = txtAddress.Text.Trim();
                    account.LocationID = int.Parse(ddlLocation.SelectedItem.Value);
                    account.City = int.Parse(ddlCity.SelectedItem.Value);
                    account.State = int.Parse(ddlState.SelectedItem.Value);
                    account.Countryid = int.Parse(ddlCountry.SelectedItem.Value);
                    account.Zip = txtZipCode.Text.Trim().ToString();
                    account.InsertUserAccount();
                    lblMsg.Text = "Added Successfully...!";
                    Label24.Text = "";
                }
                else
                    if (account.GetUserName() == true)
                    {
                        Label24.Text = "Already Exists Plz Select Another User Name...!";
                        txtUserName.Text = "";
                        txtUserName.Focus();
                    }
            }
        
    }
        protected void btnPreferedTime_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        account.Username = txtUserName.Text.Trim();
        ds = account.GetAccountId();
       if (ds.Tables[0].Rows.Count > 0)
        {
           Session["Acid"] = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            Response.Redirect("~/DonorPreferenceTime.aspx");
        }
    }
   
}
