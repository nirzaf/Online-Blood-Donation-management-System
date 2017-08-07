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
public partial class Admin_AddNewFaq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string Question = "";
        string Answer = "";
        if (txtQuestion.Text.Trim().Length > 0)
            Question = txtQuestion.Text.Trim();
        else
            lblMsg.Text = "Enter Question...";
        txtQuestion.Focus();

        if (txtAnswer.Text.Trim().Length > 0)
            Answer = txtAnswer.Text.Trim();
        else
            lblMsg.Text = "Enter Answer...";
        txtAnswer.Focus();
        FaqBusinessLayer.InsertFaq(Question, Answer);
        lblMsg.Text = "Question Added Successfully...!";
        txtQuestion.Focus();
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        txtQuestion.Text = "";
        txtAnswer.Text = "";
        lblMsg.Text = "";
        txtQuestion.Focus();

    }
}
