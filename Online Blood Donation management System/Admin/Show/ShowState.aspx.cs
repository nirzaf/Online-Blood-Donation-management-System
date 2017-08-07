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
public partial class Admin_ManageState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ShowState();
        }
    }
  
    public void ShowState()
    {
        GridView1.DataSource = StateBusinessLayer.ShowAllState();
        GridView1.DataBind();
        
    }
  
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label l;
        l=(Label)GridView1.Rows[e.NewEditIndex].FindControl("lblStateId");
        Response.Redirect("~/Admin/Manage/ManageState.aspx?StateId=" + l.Text);

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowState();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
    //    string StateName, StateCode, StateDesc;
    //    int StateId;
    //    StateName = "";
    //    StateCode = "";
    //    StateDesc = "";
    //    StateId = 0;
    //    Label l;
    //    TextBox t1, t2, t3;
    //    l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblStateId");
    //    t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStateName");
    //    t2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStateCode");
    //    t3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStateDesc");
    //    StateId = int.Parse(l.Text);
    //    StateName = t1.Text;
    //    StateCode = t2.Text;
    //    StateDesc = t3.Text;
    //    StateBusinessLayer.UdateState(StateId, StateName, StateCode, StateDesc);
    //    lblMsg.Text = "State Updated Successfully";
    //    ShowState();
       
      
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int stateId = 0;
        Label l;
        l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblStateId");
        stateId = int.Parse(l.Text);
        StateBusinessLayer.DeleteState(stateId);
        lblMsg.Text = "State Deleted Successfully";
        ShowState();
      
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach(GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chkId");
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
            chk = (CheckBox)gr.FindControl("chkId");
            if (chk.Checked == true)
            {
                Label l;
                int StateId = 0;
                l = (Label)gr.FindControl("lblStateId");
                StateId = int.Parse(l.Text);
                StateBusinessLayer.DeleteState(StateId);
                lblMsg.Text = "State Deleted Successfully";
                ShowState();
               
            }
        }
    }
}
