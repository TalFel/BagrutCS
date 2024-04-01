using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bitcointry
{
    public partial class Signup : System.Web.UI.Page
    {
        public string message;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Signup"] != null)
            {
                string username = Request["Username"];
                string sqlCheck = "SELECT * FROM Users WHERE Username='" + username + "'";
                if (MyAdoHelper.IsExist("cryptodb.accdb", sqlCheck))
                {
                    message = "username already exists in the db";
                    Response.Write("<script>alert('" + message + "');</script>");
                }
                else
                {
                    username = Request["Username"];
                    string password = Request["Password"];
                    string fullname = Request["fullname"];
                    string mail = Request["mail"];
                    string favCrypto = Request["favCrypto"];
                    string stryear = Request["year"];
                    int year = int.Parse(stryear);
                    bool allowmail = false;
                    if (Request["allowmail"] != null)
                    {
                        if (Request["allowmail"].Equals("Allow"))
                        {
                            allowmail = true;
                        }
                        else
                        {
                            allowmail = false;
                        }
                    }
                    else
                    {
                        allowmail = false;
                    }
                    string sqlInsert = "INSERT INTO Users VALUES('" + username + "','" + password + "','" + fullname + "','"
                        + mail + "','" + favCrypto + "'," + allowmail + "," + year + ")";
                    Session["username"] = username;
                    MyAdoHelper.DoQuery("cryptodb.accdb", sqlInsert);
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}