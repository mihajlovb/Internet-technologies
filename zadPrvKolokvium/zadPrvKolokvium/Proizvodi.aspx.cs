using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zadPrvKolokvium
{
    public partial class Proizvodi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] proizvodi =
                {
                    "Proizvod eden","Proizvod DVA","PROIZVOD tri","PROIZVOD CETIRI","proizvod pet"
                };
                string[] ceniNaProizvodi =
                {
                    "45.1","192","223.30","305.5","5"
                };


                lbProizvodi.Items.Add(new ListItem("Proizvod eden", "45.1"));
                lbProizvodi.Items.Add(new ListItem("Proizvod DVA", "192"));
                lbProizvodi.Items.Add(new ListItem("PROIZVOD tri", "223.30"));
                lbProizvodi.Items.Add(new ListItem("PROIZVOD CETIRI", "305.5"));
                lbProizvodi.Items.Add(new ListItem("proizvod pet", "5"));
            }
            
        }

        protected void lbProizvodi_SelectedIndexChanged(object sender, EventArgs e)
        {
            cena.Text = lbProizvodi.SelectedValue;
        }

        protected void dodadiKopce_Click(object sender, EventArgs e)
        {
            ListItem izbranProdukt = lbProizvodi.SelectedItem;
            lbKosnicka.Items.Add(izbranProdukt);
        }

        protected void kupiKopce_Click(object sender, EventArgs e)
        {
            Session["kosnicka"] = lbKosnicka.Items;
            Response.Redirect("Plakjanje.aspx");
        }
    }
}