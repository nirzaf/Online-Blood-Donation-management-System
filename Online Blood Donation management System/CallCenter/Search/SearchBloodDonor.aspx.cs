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

public partial class Admin_Report_AllotteBlood : System.Web.UI.Page
{
    DonorPreferenceDayTime daytime = new DonorPreferenceDayTime();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            daytime.Week = ddlWeekDay.SelectedItem.Text;
            daytime.TimeFrom =ddlTime1.SelectedItem.Text+ddlTimeFrom.SelectedItem.Text;
            daytime.TimeUpto =ddlTime2.SelectedItem.Text+ddltimeUpto.SelectedItem.Text;
            GridView1.DataSource = daytime.ShowDonorByDayTime();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }

    }
}
