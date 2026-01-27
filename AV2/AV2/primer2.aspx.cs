using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AV2
{
    public partial class primer2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            ListItem currency = new ListItem(currInput.Text, valInput.Text);
            listCurrencies.Items.Add(currency);
            currentState.Text = listCurrencies.Items.Count.ToString();

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            ListItem currency = listCurrencies.SelectedItem;
            listCurrencies.Items.Remove(currency);
            currentState.Text = listCurrencies.Items.Count.ToString();
        }

        protected void listCurrencies_SelectedIndexChanged(object sender, EventArgs e)
        {
            int value = Convert.ToInt32(listCurrencies.SelectedValue);
            status.Text = Convert.ToString(value * Convert.ToInt32(convert.Text));
        }
    }
}