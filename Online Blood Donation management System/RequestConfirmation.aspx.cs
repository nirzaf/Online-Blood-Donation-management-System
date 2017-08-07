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

public partial class RequestConfirmation : System.Web.UI.Page
{
    BloodRequestBL req = new BloodRequestBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = req.ShowRequestID();
            lblId.Text = ds.Tables[0].Rows[0][0].ToString();
        }

    }
}
