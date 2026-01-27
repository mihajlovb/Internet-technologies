using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV4
{
    public partial class Proizvodi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                chosenTitle.Text = Request.QueryString["name"];
                //Database
                string[] cl =
                {
                    "Primer1",
                    "Primer2",
                    "Primer3",
                    "Primer4"
                };
                string[] clPrices =
                {
                    "10","152","12","100"
                };
                string[] mc =
                {
                    "Primer5","Primer6","Primer7","Primer8"
                };
                string[] mcPrices =
                {
                    "102","142","121","1230"
                };
                string[] fp =
                {
                    "Primer9","Primer10","Primer11","Primer12"
                };
                string[] fpPrices =
                {
                    "123","441","256","1111"
                };
                switch (Convert.ToInt32(Request.QueryString.Get("catId")))
                {
                    case 0:
                        productName.DataSource = cl;
                        productPrice.DataSource = clPrices;
                        break;
                    case 1:
                        productName.DataSource = mc;
                        productPrice.DataSource = mcPrices;
                        break;
                    case 2:
                        productName.DataSource = fp;
                        productPrice.DataSource = fpPrices;
                        break;
                }
                productName.DataBind();
                productPrice.DataBind();
            }
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            ArrayList list;
            if (Session["cart"] == null)
            {
                list = new ArrayList();
            }
            else
            {
                list = (ArrayList)Session["cart"];
            }
            list.Add(new ListItem(productName.SelectedItem.Text, productPrice.SelectedItem.Text));
            cartBox.DataSource = list;
            cartBox.DataBind();
            Session["cart"] = list;
        }

        protected void buyBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plakjanje.aspx");
        }

        protected void productName_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ViewState["total"] == null)
            {
                ViewState["total"] = 1;
            }
            else
            {
                ViewState["total"] = Convert.ToInt32(ViewState["total"]) + 1;
            }
            totalPrice.Text = ViewState["total"].ToString();
            productPrice.SelectedIndex = productName.SelectedIndex;
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog.aspx");
        }
    }
}