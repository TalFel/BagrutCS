using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace bitcointry.pages
{
    public partial class admin : System.Web.UI.Page
    {
        public string message, usersTDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["username"] != null)
            {
                if (Session["username"].ToString() != "admin")
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

            string sqlusers = "SELECT * FROM Users";
            if (Request["search"] != null)
            {
                if(Request["user2serach"] != "")
                {
                    sqlusers = "SELECT * FROM Users WHERE Username= '" + Request["user2serach"] + "' ";
                }
            }
            if (Request["search1"] != null)
            {
                if (Request["Fullname"] != "")
                {
                    sqlusers = "SELECT * FROM Users WHERE FullName= '" + Request["Fullname"] + "' ";
                }
            }
            if (Request["reset"] != null)
            {
                sqlusers = "SELECT * FROM Users";
            }
            DataTable users = MyAdoHelper.ExecuteDataTable("cryptodb.accdb", sqlusers);
            if (users.Rows.Count == 0)
            {
                usersTDB = "<p class=\"table\" align=center> No users found <p>";
            }
            else
            {
                usersTDB += "<table class=\"table\" align=center>";
                usersTDB += "<tr><th>Username</th><th>Full Name</th><th>Gmail</th><th>Facvorite Crypto</th><th>Receipt of Mails</th><th>Year of Birth</th><tr>";
                for (int i = 0; i < users.Rows.Count; i++)
                {
                    usersTDB += "<tr> <td>" + users.Rows[i]["Username"] + "</td>";
                    usersTDB += "<td>" + users.Rows[i]["FullName"] + "</td>";
                    usersTDB += "<td>" + users.Rows[i]["Gmail"] + "</td>";
                    usersTDB += "<td>" + users.Rows[i]["FacvoriteCrypto"] + "</td>";
                    usersTDB += "<td>" + users.Rows[i]["ReceiptOfMails"] + "</td>";
                    usersTDB += "<td>" + users.Rows[i]["YearOfBirth"] + "</td></tr>";
                }
                usersTDB += "</table>";
            }

            if (Request["deleteBtn"] != null)
            {
                string user2delete = Request["user2delete"];
                string sqlDelete = "DELETE FROM Users WHERE Username='" + user2delete + "'";
                MyAdoHelper.DoQuery("cryptodb.accdb", sqlDelete);

                string sqlCheck = "SELECT * FROM Users WHERE Username= '" + user2delete + "' ";
                if(MyAdoHelper.IsExist("cryptodb.accdb", sqlCheck))
                {
                    message = "was not successful, please try again ):";
                }
                else message = "Username succesfully deleted!";
                Response.Write("<script>alert('" + message + "');</script>");
                Response.Redirect("admin.aspx");
            }
            
        }
    }
}