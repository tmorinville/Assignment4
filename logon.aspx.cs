using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Assignment4.mywork
{
    public partial class logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        KarateSchoolDataContext dbcon;

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            // Store username and password entered by user
            string username = Login1.UserName;
            string password = Login1.Password;

            // Connect to dbcon
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\tmmor\\OneDrive\\Desktop\\Modern Software Development\\Assignment4\\App_Data\\KarateSchool(1).mdf\";Integrated Security=True;Connect Timeout=30";
            dbcon = new KarateSchoolDataContext(connString);

            // LINQ
            NetUser user = (from x in dbcon.NetUsers
                            where x.UserName == username && x.UserPassword == password
                            select x).FirstOrDefault();

            if(user == null)
            {
                // No user found, redirect to logon page
                Response.Redirect("logon.aspx", true);
            }
            else if (user.UserType == "Member")
            {
                // Redirect to Member page
                Response.Redirect("member/member.aspx", true);
            }
            else if(user.UserType == "Instructor") 
            {
                // Redirect to Instructor page
                Response.Redirect("instructor/instructor.aspx", true);
            }
            else // Administrator
            {
                // Redirect to administrator page
                Response.Redirect("administrator.aspx", true);
            }
        }
    }
}