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

public partial class Admin_ShowFAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowQuestion();
        }
    }
    public void ShowQuestion()
    {
        GridView1.DataSource = FaqBusinessLayer.ShowQuestion();
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l1;
        l1 = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lblid");
        Response.Redirect("~/Admin/Manage/ManageFaq.aspx?cid=" + l1.Text);
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowQuestion();
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

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int FaqId = 0;
        Label l;
        l = (Label)GridView1.Rows[0].FindControl("lblid");
        FaqId = int.Parse(l.Text);
        //Response.Write("<script>confirm('R U Sure?')</script>");
        //lblMsg.Text = "Country Deleted Successfully";
        FaqBusinessLayer.DeleteQuestion(FaqId);
        ShowQuestion();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int FaqId = 0;

        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkid");
            if (chk.Checked == true)
            {
                Label l1;
                l1 = (Label)gr.FindControl("lblid");
                FaqId = int.Parse(l1.Text);
                FaqBusinessLayer.DeleteQuestion(FaqId);
               
                ShowQuestion();
            }
        }
    }
}
