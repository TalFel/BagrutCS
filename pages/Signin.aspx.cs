using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bitcointry
{
    public partial class Signinaspx : System.Web.UI.Page
    {
        public string username;
        public string password;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["Sign in"] != null)
            {
                username = Request["username"];
                password = Request["password"];
                
                if (username == "admin")
                {
                    string sqlcheckpass = "SELECT * FROM Users WHERE Username='" + username + "' AND password= '" + password + "'";
                    if (MyAdoHelper.IsExist("cryptodb.accdb", sqlcheckpass))
                    {
                        Session["username"] = "admin";
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        string sReturn = "incorrect password";
                        Response.Write("<script>alert('" + sReturn + "');</script>");
                    }
                }
                else
                {
                    string sqlLogin = "SELECT * FROM Users WHERE Username='" + username + "' AND password= '" + password + "'";
                    if(MyAdoHelper.IsExist("cryptodb.accdb", sqlLogin))
                    {
                        Session["username"] = username;
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        string message = "log in failed, inccorct username or password";
                        Response.Write("<script>alert('" + message + "');</script>");
                    }
                }
            }
        }
    }
}