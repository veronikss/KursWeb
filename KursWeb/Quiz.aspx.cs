using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace KursWeb
{
    public partial class Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calc(object sender, EventArgs e)
        {
            int score = 0;
            if(q1.SelectedItem.Value == "1")
                score += 1;
            if (q2.SelectedItem.Value == "2")
                score += 1;
            if (q3.SelectedItem.Value == "1")
                score += 1;
            rs.Text = "Your score is:" + score.ToString() + "Marks";
        }
    }
}