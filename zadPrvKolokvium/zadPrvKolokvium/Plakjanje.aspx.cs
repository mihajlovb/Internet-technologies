using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zadPrvKolokvium
{
    public partial class Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItemCollection list;
                decimal suma = 0;
                if (Session["kosnicka"] != null)
                {
                    list = (ListItemCollection)Session["kosnicka"];
                    foreach (ListItem li in list)
                    {
                        proizvodiZaPlakjanje.Items.Add(li);
                        suma += Convert.ToDecimal(li.Value);
                    }
                }
                vkupnaCena.Text = Convert.ToString(suma);
            }
        }
    }
}