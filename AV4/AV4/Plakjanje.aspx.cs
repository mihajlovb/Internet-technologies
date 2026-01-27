using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV4
{
    public partial class Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                int totalPrice = 0;
                ArrayList list = (ArrayList)Session["cart"];
                cartItems.DataSource = list;
                cartItems.DataBind();
                foreach (ListItem item in list)
                {
                    totalPrice += Convert.ToInt32(item.Value);
                }
                total.Text = totalPrice.ToString();
            }
        }
    }
}