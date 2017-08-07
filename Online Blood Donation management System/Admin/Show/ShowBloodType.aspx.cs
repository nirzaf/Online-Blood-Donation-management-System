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
public partial class Admin_ManageBloodType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowBloodType();
        }
    }
    public void ShowBloodType()
    {
        GridView1.DataSource = BloodTypeBusinessLayer.ShowBloodType();
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
        foreach (GridViewRow gr in GridView1.Rows)
        {
            CheckBox chk;
            chk = (CheckBox)gr.FindControl("chkid");
            if (chk.Checked == true)
            {
                Label l;
                l = (Label)gr.FindControl("lbltypeid");
                int BloodId = 0;
                BloodId = int.Parse(l.Text);
                BloodTypeBusinessLayer.DeleteBloodType(BloodId);
                ShowBloodType();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l;
        int BloodId = 0;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lbltypeid");
        BloodId = int.Parse(l.Text);
        BloodTypeBusinessLayer.DeleteBloodType(BloodId);
        ShowBloodType();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbltypeid");
        Response.Redirect("~/Admin/Manage/ManageBloodType.aspx?id="+l.Text);

    }
}
