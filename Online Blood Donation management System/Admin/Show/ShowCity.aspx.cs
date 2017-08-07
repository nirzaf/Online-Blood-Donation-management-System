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
            ShowCity();
        }
    }
   

    public void ShowCity()
    {
        GridView1.DataSource = CityBusinessLayer.ShowAllCity();
        GridView1.DataBind();
    }
    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkid");
            if (chkSelectAll.Checked == true)
                chk.Checked = true;
            else
                chk.Checked = false;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            Label l;
            l=(Label)gr.FindControl("lblCityId");
            int CityId=0;
            CityId=int.Parse(l.Text);
            chk = (CheckBox)gr.FindControl("chkid");
            if (chk.Checked == true)
            {
                CityBusinessLayer.DeleteCity(CityId);
                lblMsg.Text = "City Deleted Successfully...";
            }
            else
             
                lblMsg.Text = "No City Selected...";
            ShowCity();        
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblCityId");
        int CityId = 0;
        CityId = int.Parse(l.Text);
        CityBusinessLayer.DeleteCity(CityId);
        ShowCity();
        lblMsg.Text = "City Deleted Successfully...";
       
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l;
        l=(Label)GridView1.Rows[e.NewEditIndex].FindControl("lblCityId");
        Response.Redirect("~/Admin/Manage/ManageCity.aspx?CityId="+l.Text);
    }
}
