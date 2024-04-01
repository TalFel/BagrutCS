using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace bitcointry.pages
{
    public partial class profile : System.Web.UI.Page
    {
        public string username, pass, msg = "", fname, gmail, favcrypto, receiptmail, year ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else if(Session["username"].ToString() == "admin")
            {
                Response.Redirect("Home.aspx");
            }

            string sqldetails = "SELECT * FROM Users WHERE username= '" + Session["username"].ToString() + "' ";
            DataTable dt = MyAdoHelper.ExecuteDataTable("cryptodb.accdb", sqldetails);
            username = dt.Rows[0]["Username"].ToString();
            fname = dt.Rows[0]["FullName"].ToString();
            gmail = dt.Rows[0]["Gmail"].ToString();
            pass = dt.Rows[0]["Password"].ToString();
            favcrypto = dt.Rows[0]["FacvoriteCrypto"].ToString();
            if (dt.Rows[0]["ReceiptOfMails"].ToString() == "True")
            {
                receiptmail = "Allows the receipt of mails";
            }
            else
            {
                receiptmail = "Doesn't allow the receipt of mails";
            }
            year = dt.Rows[0]["YearOfBirth"].ToString();

            if (Request["updatepass"]!= null)
            {
                
                string Sqlcheck = "SELECT Password FROM Users WHERE Username= '" + username + "' AND Password= '" + Request["pass"].ToString() + "' ";
                if (!MyAdoHelper.IsExist("cryptodb.accdb", Sqlcheck))
                {
                    msg = "incorrect pass";
                    Response.Write("<script>alert('" + msg + "');</script>");
                }
                else
                {
                    string newpass = Request["newpass"].ToString();
                    string newpass2 = Request["newpass2"].ToString();
                    if (newpass == pass)
                    {
                        msg = "new password and old password are identical";
                    }
                    else if (newpass!=newpass2)
                    {
                        msg = "passwords arent identical";
                    }
                    else
                    {
                        string sqlreplace = "UPDATE Users SET [Password] = '" + newpass + "' WHERE Username = '" + username + "' ";
                        MyAdoHelper.DoQuery("cryptodb.accdb", sqlreplace);
                        msg = "Great success!";
                    }
                    Response.Write("<script>alert('" + msg + "');</script>");
                }
            }

        }
    }
}