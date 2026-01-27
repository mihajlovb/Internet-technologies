using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV4
{
    public partial class Katalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=0&name=Collection+Catalog");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=1&name=Music+Catalog");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=2&name=Font+Catalog");
        }
    }
}