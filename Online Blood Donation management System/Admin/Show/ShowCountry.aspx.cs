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

public partial class Admin_ManageCountry : System.Web.UI.Page
{
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
   
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {     
            Label l1;
           l1 = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lblCountryId");
           Response.Redirect("~/Admin/Manage/ManageCountry.aspx?cid=" + l1.Text);
      
    }
    public void ShowData()
    {
        GridView1.DataSource = AddCountry.GetCountry();
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }
    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CountryId = 0;
        Label l;
        l = (Label)GridView1.Rows[0].FindControl("lblCountryId");
        CountryId = int.Parse(l.Text);
        Response.Write("<script>confirm('Are You Sure?')</script>");
        lblMsg.Text = "Country Deleted Successfully";
        AddCountry.DeleteCountry(CountryId);
        ShowData();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        { 
        chk=(CheckBox)gr.FindControl("chkid");
        if (CheckBox1.Checked == true)
            chk.Checked = true;
        else
            chk.Checked = false;            
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int CountryId = 0;
       
                 CheckBox chk;
         foreach (GridViewRow gr in GridView1.Rows)
         {
             chk = (CheckBox)gr.FindControl("chkid");
             if (chk.Checked == true)
             {
                 Label l1;
                 l1 = (Label)gr.FindControl("lblCountryId");
                 chk.Text = l1.Text;
                 CountryId = int.Parse(chk.Text);
                 AddCountry.DeleteCountry(CountryId);
                 lblMsg.Text = "Country Deleted Successfully";
                 ShowData();
             }
         }
    }
   
}
