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
public partial class Registration_DonorAccountDetail : System.Web.UI.Page
{
    UserAccountBusinessLayer user = new UserAccountBusinessLayer();
    BloodGroupBusinessLayer blood = new BloodGroupBusinessLayer();
    CheckUser chkuser = new CheckUser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = AddCountry.GetCountryName();
            BindDDL(ddlCountry, ds, "CountryName", "CountryID");
            ddlCountry.Items.Insert(0, "---Select---");
            DataSet ds1 = BloodTypeBusinessLayer.ShowBloodType();
            DataSet ds2 = blood.ShowAllBloodGroup();
            BindDDL(ddlBloodType, ds1, "TypeName", "BloodTypeID");
            BindDDL(ddlBloodGroup, ds2, "BloodGroup", "BloodGroupID");

            DataSet ds3 = new DataSet();
            string Acid = Session["Acid"].ToString();
            user.Accountid = int.Parse(Acid);
            ds3 = user.GetPersonalDetail();
            ViewState["Url"] = ds3.Tables[0].Rows[0][15].ToString();

            
        }
        LinkButton4.Attributes.Add("onclick", "javascript:showImg();");
        LinkButton4.Attributes.Add("target", "");

        string strScript;
        strScript = "<script>function showImg() {";
        strScript += "var mywin=window.open('','Image','top=20,left=10,width=500,height=300,scrollbars=yes,resizable=yes,toolbar=no');";
        strScript += "mywin.document.write('<title>BDA</title>');";
        // strScript += "mywin.document.write('<img src=\"" + "../" + ConfigurationManager.AppSettings["MemberImage"].Replace("\\", "/") + ViewState["MemberIMAGE"].ToString() + "\">');";26005.jpg
        strScript += "mywin.document.write('<img src=\"" + "Images/" + ViewState["Url"].ToString() + "\">');";
        //  strScript += "mywin.document.write('<img src=\"" + "Donor/Images/" + "SFairytopia-Mermaidia-She.jpg" + "\">');";
        strScript += "mywin.focus();}</script>";
        Page.RegisterStartupScript("StartUp", strScript);
    }
    private void BindDDL(DropDownList ddl, DataSet ds, string txtField, string valField)
    {
        ddl.DataSource = ds;
        ddl.DataTextField = txtField;
        ddl.DataValueField = valField;
        ddl.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        DataSet ds = new DataSet();
        string Acid = Session["Acid"].ToString();
        user.Accountid = int.Parse(Acid);
        ds = user.GetAccountDetail();
        txtUserName.Text = ds.Tables[0].Rows[0][1].ToString();
        lblUpdatePersonal.Text = "";
        lblUpdateAddress.Text = "";
        lblMsg.Text = "";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        lblUpdatePersonal.Text = "";
        lblUpdateAddress.Text = "";
        lblMsg.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        DataSet ds = new DataSet();
        string Acid = Session["Acid"].ToString();
        user.Accountid = int.Parse(Acid);
        ds = user.GetPersonalDetail();
        txtFName.Text = ds.Tables[0].Rows[0][1].ToString();
        txtMName.Text = ds.Tables[0].Rows[0][2].ToString();
        txtLName.Text = ds.Tables[0].Rows[0][3].ToString();
        txtEmail.Text = ds.Tables[0].Rows[0][4].ToString();
        txtWeight.Text = ds.Tables[0].Rows[0][6].ToString();
        txtPhoneOffice.Text = ds.Tables[0].Rows[0][12].ToString();
        txtPhoneHome.Text = ds.Tables[0].Rows[0][13].ToString();
        txtMobile.Text = ds.Tables[0].Rows[0][14].ToString();
        Image1.ImageUrl ="~/Donor/Images/"+ds.Tables[0].Rows[0][15].ToString();
        ViewState["Url"] = ds.Tables[0].Rows[0][15].ToString();
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        lblUpdatePersonal.Text = "";
        lblUpdateAddress.Text = "";
        lblMsg.Text = "";
        string Acid = Session["Acid"].ToString();
        user.Accountid = int.Parse(Acid);
        DataSet ds = new DataSet();
        ds = user.GetUserAddressDetail();
        txtAddress.Text=ds.Tables[0].Rows[0][1].ToString();
        txtZipCode.Text=ds.Tables[0].Rows[0][6].ToString();
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void btnUpdateAccount_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserName.Text.Trim().Length > 0 && txtOldPwd.Text.Trim().Length>0)
            {
                chkuser.Username = txtUserName.Text.Trim();
                chkuser.Password = txtOldPwd.Text.Trim();
                if (chkuser.GetUser() == true)
                {
                    string Acid = Session["Acid"].ToString();
                    user.Accountid = int.Parse(Acid);
                    user.Username = txtUserName.Text.Trim();
                    user.Password = txtPassword.Text.Trim();
                    user.UpdateUserAccountDetail();
                    lblMsg.Text = "User Account Updated Successfully...!";
                }
                else
                {
                    lblMsg.Text = "Plz Check Your Password...!";
                }
            }
            else
            {
                lblMsg.Text = "Plz Enter Value...!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
       
           
        
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
                string Acid = Session["Acid"].ToString();
                user.Accountid = int.Parse(Acid);
                user.FName = txtFName.Text.Trim();
                user.MName = txtMName.Text.Trim();
                user.LName = txtLName.Text.Trim();
                user.Email = txtEmail.Text.Trim();
                user.DOB = Convert.ToDateTime(GMDatePicker1.Date.ToShortDateString());
                user.Weight = float.Parse(txtWeight.Text.Trim());
                string Gender = "";
                if (radMale.Checked == true)
                    Gender = radMale.Text;
                else
                    Gender = radFemale.Text;
                user.Gender = Gender;
         if (ViewState["Url"] != null && FileUpload1.HasFile==false)
        {
            user.ImageURL = ViewState["Url"].ToString();
        }
         else if(ViewState["Url"]==null || FileUpload1.HasFile==false )
        {
            lblUpdatePersonal.Text = "Plz Select Image...!";
           

        }
        else if (ViewState["Url"] != null && FileUpload1.HasFile == true)
        {
            user.ImageURL = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Donor/Images/" + FileUpload1.FileName));
            user.BloodGroup = int.Parse(ddlBloodGroup.SelectedItem.Value);
            user.BloodType = int.Parse(ddlBloodType.SelectedItem.Value);
            user.ContactNo1 = txtPhoneOffice.Text.Trim();
            user.ContactNo2 = txtPhoneHome.Text.Trim();
            user.MobileNo = txtMobile.Text.Trim();
            user.UpdateUserPersonalDetail();
            lblUpdatePersonal.Text = "User Personal Detail Changed Successfully...!";
        }
               
                

           }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCountry.Items[0].Enabled = false;
        int CountryId = int.Parse(ddlCountry.SelectedItem.Value);
        DataSet ds = StateBusinessLayer.GetStateByCountryId(CountryId);
        BindDDL(ddlState, ds, "StateName", "StateID");
        ddlState.Items.Insert(0, "---Select---");
        lblUpdateAddress.Text = "Plz Select State....";  
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlState.Items[0].Enabled = false;
        int StateId = int.Parse(ddlState.SelectedItem.Value);
        DataSet ds = CityBusinessLayer.GetCityByState(StateId);
        BindDDL(ddlCity, ds, "CityName", "CityID");
        ddlCity.Items.Insert(0, "---Select---");
       lblUpdateAddress.Text = "Plz Select City....";  
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCity.Items[0].Enabled = false;
        int CityId = int.Parse(ddlCity.SelectedItem.Value);
        DataSet ds = LocationBusinessLayer.GetLocationByCity(CityId);
        BindDDL(ddlLocation, ds, "LocationName", "LocationID");
        ddlLocation.Items.Insert(0, "---Select---");
       lblUpdateAddress.Text = "Plz Select Location....";  
    }

    protected void btnUpdateAddress_Click(object sender, EventArgs e)
    {
            int AddrId = 0;
            AddrId = Convert.ToInt32(Session["addid"]);
            user.Addressid = AddrId;
            user.Address = txtAddress.Text.Trim();
            if (ddlCountry.Text == "---Select---")
            {
                lblUpdateAddress.Text = "Plz Select Country...!";
                ddlCountry.Focus();

            }
            else
            {
                user.LocationID = int.Parse(ddlLocation.SelectedItem.Value);
                user.City = int.Parse(ddlCity.SelectedItem.Value);
                user.State = int.Parse(ddlState.SelectedItem.Value);
                user.Countryid = int.Parse(ddlCountry.SelectedItem.Value);
                user.Zip = txtZipCode.Text.Trim();
                user.UpdateUserAddressDetail();
                lblUpdateAddress.Text = "User Address Updated Successfully...!";
            }
            
        }
       
    }
    
