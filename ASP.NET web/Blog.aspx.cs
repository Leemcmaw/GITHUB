using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void loadBlog()
        {
            String[] strBlog =
                 File.ReadAllLines(Server.MapPath("~/Files/txtBlog.txt"));
            txtBlog.Text = "";

            foreach (String line in strBlog)
            {
                txtBlog.Text += line;
                txtBlog.Text += "\n";
            }
        } // loadBlog

        protected void Page_Load(object sender, EventArgs e)
        {
            loadBlog();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            {

                txtBlog.Text += txtEntry.Text + "\n";
                File.WriteAllText(Server.MapPath("~/Files/txtBlog.txt"), txtBlog.Text);

            } // btnSubmit
            string user = "unknown";
            if (User.Identity.IsAuthenticated)
            {
                user = User.Identity.Name;
            }

            txtBlog.Text += user + " >> " + DateTime.UtcNow.ToShortTimeString() +
                          " >> " + txtEntry.Text + "\n";
            File.WriteAllText(Server.MapPath("~/Files/txtBlog.txt"), txtBlog.Text);
        } // btnSubmit

    }
}
