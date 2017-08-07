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

public partial class Admin_Report_ShowBloodRequest : System.Web.UI.Page
{
    int id;
    BloodRequestBL req = new BloodRequestBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            ddlReqType.DataSource = req.ShowRequestType();
            ddlReqType.DataTextField = "RequestType";
            ddlReqType.DataBind();
            ddlReqType.Items.Insert(0, "---Select---");
        }

    }
       protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       
        foreach (GridViewRow gr in GridView1.Rows)
        {
            if (e.NewSelectedIndex==gr.RowIndex)
            {
                id = int.Parse(gr.Cells[1].Text);
                Session["Reqid"] = id;
                Response.Redirect("~/Callcenter/Search/SearchDonorAccordingToRequest.aspx");
            }
        }
    }
  
    protected void ddlReqType_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            req.Appdate = GMDatePicker1.Date;
            req.Reqtype = ddlReqType.SelectedItem.Text;
            GridView1.DataSource = req.ShowRequestByDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {

            throw;
        }

    }
}
