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
public partial class Admin_ManageFaq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        DataSet ds = new DataSet();
        if (!IsPostBack)
        {
            int FaqId = 0;
            FaqId = int.Parse(Request["cid"]);
            ds = FaqBusinessLayer.ShowQuestionById(FaqId);
            txtQuestion.Text = ds.Tables[0].Rows[0][0].ToString();
            txtAnswer.Text = ds.Tables[0].Rows[0][1].ToString();
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Show/ShowFaq.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int Faqid = 0;
        Faqid = int.Parse(Request["cid"]);
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

        FaqBusinessLayer.UpdateQuestion(Faqid, Question, Answer);
        lblMsg.Text = "Data Updated Successfully...!";
    }
}
