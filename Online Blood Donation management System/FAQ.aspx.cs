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

public partial class FAQ : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = FaqBusinessLayer.ShowQuestion();
            GridView1.DataBind();
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {           
                if (e.CommandName == "Select")
                {
                    int faqid = 0;
                    faqid=Convert.ToInt32(e.CommandArgument.ToString());
                    DataSet ds=new DataSet();
                    ds = FaqBusinessLayer.ShowAnswerByFaqId(faqid);
                    lblAnswer.Text = ds.Tables[0].Rows[0][0].ToString();

                }
           

        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
