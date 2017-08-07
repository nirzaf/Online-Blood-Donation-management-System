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

public partial class Member_List_SilverMember : System.Web.UI.Page
{
    BloodDonationDetailBL donation = new BloodDonationDetailBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList2.DataSource = donation.ShowSilverMember();
            DataList2.DataBind();    
        }

    }
}
