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
public partial class Admin_ManageCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            int CityId = int.Parse(Request["CityId"]);
            ds = CityBusinessLayer.GetCityByID(CityId);
            txtCityName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtCityDesc.Text = ds.Tables[0].Rows[0][1].ToString();
            txtCityCode.Text = ds.Tables[0].Rows[0][2].ToString();
            ddlState.DataSource = StateBusinessLayer.GetStateNameById();
            ddlState.DataTextField = "StateName";
            ddlState.DataValueField = "StateID";
            ddlState.DataBind();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int CityId = int.Parse(Request["CityId"]);
        string CityName, CityDesc, CityCode;
        //Initialization
        CityName = "";
        CityDesc = "";
        CityCode = "";
        int StateId = 0;
        StateId = int.Parse(ddlState.SelectedItem.Value);
        //Assigning Values
        if (txtCityName.Text.Trim().Length > 0)
            CityName = txtCityName.Text.Trim();
        else
            lblMsg.Text = "Enter City Name...";
        if (txtCityDesc.Text.Trim().Length > 0)
            CityDesc = txtCityDesc.Text.Trim();
        else
            lblMsg.Text = "Enter City Description...";
        if (txtCityCode.Text.Trim().Length > 0)
            CityCode = txtCityCode.Text.Trim();
        else
            lblMsg.Text = "Enter City Code...";

        //Calling CityBusinessLayer

        CityBusinessLayer.UpdateCity(CityId, CityName, CityDesc,CityCode,StateId);
        lblMsg.Text = "City Updated Successfully...";

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Show/ShowCity.aspx");
    }
}
