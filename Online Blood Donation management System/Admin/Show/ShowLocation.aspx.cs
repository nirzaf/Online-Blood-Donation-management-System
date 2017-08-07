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

public partial class Admin_ManageLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowLocation();
        }
    }
    public void ShowLocation()
    {
        GridView1.DataSource = LocationBusinessLayer.ShowLocation();
        GridView1.DataBind();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkid");
            if (CheckBox1.Checked == true)
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
            chk = (CheckBox)gr.FindControl("chkid");
            if (chk.Checked == true)
            {
                int LocId = 0;
                Label l;
                l = (Label)gr.FindControl("lblLocationId");
                LocId = int.Parse(l.Text);
                LocationBusinessLayer.DeleteLocation(LocId);
                ShowLocation();
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
       
        Label l;
        l = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lblLocationId");
        Response.Redirect("~/Admin/Manage/ManageLocation.aspx?LocId=" + l.Text);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int LocId = 0;
        Label l;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblLocationId");
        LocId = int.Parse(l.Text);
        LocationBusinessLayer.DeleteLocation(LocId);
        ShowLocation();
    }
}
