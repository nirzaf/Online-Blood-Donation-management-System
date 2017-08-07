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
public partial class Admin_ShowDonationFrequency : System.Web.UI.Page
{
    DonationFrequency frequency = new DonationFrequency();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowData();
        }
    }
    private void ShowData()
    {
        GridView1.DataSource = frequency.ShowDonationFrequency();
        GridView1.DataBind();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkid");
            if (CheckBox1.Checked)
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
            if (chk.Checked)
            {
                Label l;
                l = (Label)gr.FindControl("lblfreqid");
                frequency.Freqid = int.Parse(l.Text);
                frequency.DeleteFrequency();
                ShowData();
            }
         
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblfreqid");
        frequency.Freqid = int.Parse(l.Text);
        frequency.DeleteFrequency();
        ShowData();

    }

      protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l;
        l = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lblfreqid");
        Response.Redirect("~/Admin/Manage/ManageDonationFrequency.aspx?freqid=" + l.Text);
    }
}
