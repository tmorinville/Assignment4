using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
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

            // Allow for validation to be used
            UnobtrusiveValidationMode =UnobtrusiveValidationMode.None;
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

        protected void btnAssignToSection_Click(object sender, EventArgs e)
        {
            // Connect to database
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\tmmor\\OneDrive\\Desktop\\Modern Software Development\\Assignment4\\App_Data\\KarateSchool(1).mdf\";Integrated Security=True;Connect Timeout=30";
            dbcon = new KarateSchoolDataContext(connString);
                
        }

        protected void btnAddInstructor_Click(object sender, EventArgs e)
        {
            // Connect to database
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\tmmor\\OneDrive\\Desktop\\Modern Software Development\\Assignment4\\App_Data\\KarateSchool(1).mdf\";Integrated Security=True;Connect Timeout=30";
            dbcon = new KarateSchoolDataContext(connString);

            // Create empty NetUser
            NetUser myUser = new NetUser();

            // Change properties of myUser
            myUser.UserName = tbInsertInstructorUserName.Text;
            myUser.UserPassword = tbInsertInstructorPW.Text;
            myUser.UserType = "Instructor";

            // Insert record into NetUser table
            dbcon.NetUsers.InsertOnSubmit(myUser);
            dbcon.SubmitChanges();

            // Store myUser UserID
            int userID = myUser.UserID; 

            // Create empty Instructor
            Instructor myInstructor = new Instructor();

            // Change properties of myInstructor
            myInstructor.InstructorID = userID;
            myInstructor.InstructorFirstName = tbInsertInstructorFName.Text;
            myInstructor.InstructorLastName = tbInsertInstructorLName.Text;
            myInstructor.InstructorPhoneNumber = tbInsertInstructorPhone.Text;

            // Insert record into Instructor table
            dbcon.Instructors.InsertOnSubmit(myInstructor);
            dbcon.SubmitChanges();

            // Refresh DataGridViews
            RefreshData();
        }

        protected void btnAddMember_Click(object sender, EventArgs e)
        {
            // Connect to database
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\tmmor\\OneDrive\\Desktop\\Modern Software Development\\Assignment4\\App_Data\\KarateSchool(1).mdf\";Integrated Security=True;Connect Timeout=30";
            dbcon = new KarateSchoolDataContext(connString);

            // Create empty NetUser
            NetUser myUser = new NetUser();

            // Change properties of myUser
            myUser.UserName = tbInsertMemberUserName.Text;
            myUser.UserPassword = tbInsertMemberPassword.Text;
            myUser.UserType = "Member";

            // Insert record into NetUser table
            dbcon.NetUsers.InsertOnSubmit(myUser);
            dbcon.SubmitChanges(); 

            // Store myUser UserID
            int userID = myUser.UserID;

            // Create empty Member
            Member myMember = new Member();

            // Change properties of myMember
            myMember.Member_UserID = userID;
            myMember.MemberFirstName = tbInsertMemberFName.Text;
            myMember.MemberLastName = tbInsertMemberLName.Text;
            myMember.MemberDateJoined = DateTime.Now;
            myMember.MemberPhoneNumber = tbInsertMemberPhone.Text;
            myMember.MemberEmail = tbInsertMemberEmail.Text;

            // Insert record into Member table
            dbcon.Members.InsertOnSubmit(myMember);
            dbcon.SubmitChanges(); 

            // Refresh DataGridViews
            RefreshData();
        }
    }
}