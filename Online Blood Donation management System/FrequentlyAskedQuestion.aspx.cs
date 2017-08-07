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
using System.Drawing;

public partial class FrequentlyAskedQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Panel2.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton1.Text;
        Label3.Text = "Blood donation gives, a proud feeling of touching someone’s life in such a beautiful way. Its an experience that no words can define. You have to donate blood yourself to find out. By keeping the blood line flowing, you will greatly contribute towards a healthier, happier society. Do remember, any one may require blood any time. Including ourselves and our dear ones. You also benefit in other ways by donating blood. It reduces the chances of ischemic heart diseases (beginning of heart problems) as frequent donations reduce the accumulated and unwanted iron load from the body. Your blood donation will also get you your blood insurance from us.";
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton2.Text;
        Label3.Text = "Drink some liquid like tea, cold drink, juice, etc. to replenish fluid and eat some snacks. All this will be available for you at the blood donation site.";

            
       
    }
   
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton4.Text;
        Label3.Text = "That is impossible. Only sterile disposables are used to collect your blood. These disposables can be used only one time. This totally eliminates any remote chance of catching any disease from blood donation.";

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton5.Text;
        Label3.Text = "Eligible donors (any body between 18 to 60 years of age and leading a healthy life) with weight above 50 kgs. can donate up to 450 ml of blood. Your body can replenish this volume within 24 hours."; 

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
         Panel3.Visible = true;
        Label1.Text = LinkButton6.Text;
        Label3.Text = "Male - Every 3 Months" + "<br>" + "Female - Every 4 Months";
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    { Panel3.Visible = true;
        Label1.Text = LinkButton7.Text;
        Label3.Text = "As you know, blood is a life saving medicine, which works wonders in certain medical treatments, and life threatening situations. It is an emergency medicine. Our society is today threatened by scarcity of blood. The only source of blood right now is human being." + "<br><br>" + "This issue has got further complexes by professional donors, who donate blood for money. These donors have contributed towards rapid spread of killer diseases like AIDS, Hepatitis B & Hepatitis C in the society. WHO strongly recommends the source of blood as only from a regular voluntary blood donor. Your regular donation will go a long way in salvaging the situation.";
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton8.Text;
        Label3.Text ="Giving blood is a very simple and straight forward process. On arrival at a blood drive, you will be asked to fill a few details on a donor form. Your medical history will be taken by a medical personnel in an area which provides adequate privacy. We routinely take a small drop of blood to ensure that you aren't anemic. After you pass this simple medical screening process, you will be escorted to a blood donation area. The actual blood donation takes about 10 minutes followed by a little rest and refreshments.";

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
 Panel3.Visible = true;
        Label1.Text = LinkButton9.Text;
        Label3.Text = "Anything, but preferably something. Eating light snacks and a drink (nonalcoholic) before blood donation makes you psychologically more comfortable.";

            }
protected void  LinkButton10_Click(object sender, EventArgs e)
{
    Panel3.Visible = true;
        Label1.Text = LinkButton10.Text;
        Label3.Text = "Your blood goes to a modern blood bank - Prathama Blood Center. Within 6 hours of Blood collection its processing starts at Prathama Blood Centre. It is separated into components viz. Red Cells, White Cells, Plasma & Platelets. These Blood components are made available to Ahmedabad Municipal Corporation Hospitals, Govt. Hospitals, Nursing Homes. Medical setups, which do not have blood storage facilities, send their samples to us for cross matching following which blood is sent to them directly. All this is to ensure fastest response to the patient’s need. This is how each time you donate blood you save up to 4 lives.";
}
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
            Panel3.Visible = true;
            Label1.Text = LinkButton11.Text;
            Label1.BackColor = Color.Red;
            Label1.ForeColor = Color.White;
            Label3.Text = "Eat and Drinks something before leaving." + "<br><br>" + "Drink more liquids than usual in next 4 hours." + "<br><br>" + "Avoid consuming alcohol until you have eating something." + "<br><br>" + "Don't smoke for next 30 minutes." + "<br><br>" + "Avoid climbing steps for next 30 minutes." + "<br><br>" + "If there is bleeding from the phlebotomy site, raise the arm and apply pressure." + "<br><br>" + "If fainting or dizziness occurs, either lie down or site with the head between the knees." + "<br><br>" + "Resume all normal activities if no symptoms occur." + "<br><br>" + "Remove bandage next day.";
     

     
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Label1.Text = LinkButton4.Text;
        Label3.Text = "That is impossible. Only sterile disposables are used to collect your blood. These disposables can be used only one time. This totally eliminates any remote chance of catching any disease from blood donation.";
    }
}
