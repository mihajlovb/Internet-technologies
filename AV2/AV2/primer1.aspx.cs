using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV2
{
    public partial class primer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showBtn_Click(object sender, EventArgs e)
        {
            int totalDistance = 0;
            string destinations = "";
            foreach(ListItem item in destinationsList.Items)
            {
                if (item.Selected)
                {
                    destinations += item.Text + " ";
                    totalDistance += int.Parse(item.Value);
                }
            }
            destinationLabel.Text = "Селектиран град: " + destinations + "<br/>"
                + "Одалеченоста е: " + totalDistance;
        }
    }
}