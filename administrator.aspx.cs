using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4
{
    public partial class administrator : System.Web.UI.Page
    {
        KarateSchoolDataContext dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Show data in GridViews
            RefreshData();
        }

        private void RefreshData()
        {
            // Connect to dbcon
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\tmmor\\OneDrive\\Desktop\\Modern Software Development\\Assignment4\\App_Data\\KarateSchool(1).mdf\";Integrated Security=True;Connect Timeout=30";
            dbcon = new KarateSchoolDataContext(connString);

            // LINQ for member GridView
            var memberQuery = from member in dbcon.Members
                              join netUsers in dbcon.NetUsers
                              on member.Member_UserID equals netUsers.UserID
                              select new { ID = member.Member_UserID, FirstName = member.MemberFirstName,
                              LastName = member.MemberLastName, DateJoined = member.MemberDateJoined };

            // Display in member GridView
            memberGridView.DataSource = memberQuery;
            memberGridView.DataBind();

            // LINQ for instructor GridView
            var instructorQuery = from instructor in dbcon.Instructors
                                  join netUsers in dbcon.NetUsers
                                  on instructor.InstructorID equals netUsers.UserID
                                  select new { ID = instructor.InstructorID, FirstName = instructor.InstructorFirstName,
                                  LastName = instructor.InstructorLastName };  

            // Display in instructor GridView
            instructorGridView.DataSource = instructorQuery;
            instructorGridView.DataBind();
        }
    }
}