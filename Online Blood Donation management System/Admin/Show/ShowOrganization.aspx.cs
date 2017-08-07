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
public partial class Admin_ShowOrganization : System.Web.UI.Page
{
    OrganizationBusinessLayer org = new OrganizationBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowOrgType();
        }
    }
    private void ShowOrgType()
    {

        GridView1.DataSource = org.ShowAllOrgType();
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
            chk = (CheckBox)gr.FindControl("chkid");
            if (chk.Checked == true)
            {
                Label l;
                l = (Label)gr.FindControl("lblorgid");
                org.TypeId=int.Parse(l.Text);
                org.DeleteOrgType();
                ShowOrgType();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblorgid");
        org.TypeId= int.Parse(l.Text);
        org.DeleteOrgType();
        ShowOrgType();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lblorgid");
        Response.Redirect("~/Admin/Manage/ManageOrganization.aspx?id=" + l.Text);
    }
}
