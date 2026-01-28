using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string[] ocenki = {
                    "6","7","8"
                };
                lbPredmeti.Items.Add(new ListItem("IT", "DAME"));
                lbPredmeti.Items.Add(new ListItem("SI", "Najebem"));
                lbPredmeti.Items.Add(new ListItem("OOP", "mame"));
                lbOcenki.DataSource = ocenki;
                lbOcenki.DataBind();

            }
        }

        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            profesor.Text = lbPredmeti.SelectedValue;
            lbOcenki.SelectedIndex = lbPredmeti.SelectedIndex;
        }

        protected void glasajKopce_Click(object sender, EventArgs e)
        {
            //glassjLabela.Text = "Predmet: " + lbPredmeti.SelectedItem.Text + " Ocenka:" + lbOcenki.SelectedItem.Text;
            Response.Redirect("UspeshnoGlasanje.aspx"); 
        }

        protected void dodadiKopce_Click(object sender, EventArgs e)
        {
            ListItem key = new ListItem(predmetInput.Text);
            ListItem value = new ListItem(ocenkaInput.Text);
            lbPredmeti.Items.Add(key.Text);
            lbOcenki.Items.Add(value.Text);
        }

        protected void izbrisiKopce_Click(object sender, EventArgs e)
        {
            ListItem lp = lbPredmeti.SelectedItem;
            ListItem lo = lbOcenki.SelectedItem;
            lbPredmeti.Items.Remove(lp);
            lbOcenki.Items.Remove(lo);
            profesor.Text = "idegas";
        }

        
    }
}