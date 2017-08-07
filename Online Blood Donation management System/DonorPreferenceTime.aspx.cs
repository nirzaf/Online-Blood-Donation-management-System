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
public partial class DonorPreferenceTime : System.Web.UI.Page
{
    DonorPreferenceDayTime donor = new DonorPreferenceDayTime();
    DonationFrequency frquency = new DonationFrequency();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds=frquency.ShowDonationFrequency();
            ddlFrequency.DataSource = ds.Tables[0];
            ddlFrequency.DataTextField = "Frequency";
            ddlFrequency.DataValueField = "FrequencyID";
            ddlFrequency.DataBind();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        donor.AcountId =int.Parse(Session["Acid"].ToString());
        donor.DonationFrequencyId = int.Parse(ddlFrequency.SelectedItem.Value);
        if (RadioButton1.Checked == true)
            donor.WanttoDonateWhiteCells =1;
        else
            donor.WanttoDonateWhiteCells =0;
        donor.Week = ddlWeekDay.SelectedItem.Text;
        string TimeFrom = "";
        string TimeUpto = "";
        TimeFrom = ddlTime1.SelectedItem.Text + ddlTimeFrom.SelectedItem.Text;
        donor.TimeFrom = TimeFrom;
        TimeUpto =  ddlTime2.SelectedItem.Text+ddltimeUpto.SelectedItem.Text;
        donor.TimeUpto = TimeUpto;
        donor.AcountId = int.Parse(Session["Acid"].ToString());
        donor.Comment = txtComment.Text;
       // Response.Write(Request["acid"].ToString());
        donor.InsertDayTime();
        donor.InsertDonorFrequency();
        lblMsg.Text = "Added Successfully...!";
    }
}
