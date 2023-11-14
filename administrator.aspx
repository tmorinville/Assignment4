<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="administrator.aspx.cs" Inherits="Assignment4.administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1142px;
        }
        .auto-style2 {
            width: 993px;
        }
        .auto-style3 {
            width: 1114px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"><strong>Members</strong></td>
                <td><strong>Instructors</strong></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:GridView ID="memberGridView" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="instructorGridView" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
    </p>
    <p>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2"><strong>Add New Member<br />
                    </strong>User Name:
                    <br />
                    <asp:TextBox ID="tbInsertMemberUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbInsertMemberUserName" ErrorMessage="Please enter username" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    Password:<strong><br />
                    <asp:TextBox ID="tbInsertMemberPassword" runat="server"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderStyle="None" ControlToValidate="tbInsertMemberPassword" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <strong>
                    <br />
                    </strong>First Name:<br />
                    <asp:TextBox ID="tbInsertMemberFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbInsertMemberFName" ErrorMessage="Please enter first name" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    Last Name:<br />
                    <asp:TextBox ID="tbInsertMemberLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbInsertMemberLName" ErrorMessage="Please enter last name" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    Date Joined:<br />
                    <asp:TextBox ID="tbInsertMemberDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbInsertMemberDate" ErrorMessage="Please enter date joined" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    Phone Number:<br />
                    <asp:TextBox ID="tbInsertMemberPhone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbInsertMemberPhone" ErrorMessage="Please enter phone number" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    Email:<br />
                    <asp:TextBox ID="tbInsertMemberEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbInsertMemberEmail" ErrorMessage="Please enter email" ForeColor="Red" ValidationGroup="AddMember"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnAddMember" runat="server" Text="Add Member" ValidationGroup="AddMember" />
                </td>
                <td><strong>Add New Instructor<br />
                    </strong>User Name:<br />
                    <asp:TextBox ID="tbInsertInstructorUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbInsertInstructorUserName" ErrorMessage="Please enter username" ForeColor="Red" ValidationGroup="AddInstructor"></asp:RequiredFieldValidator>
                    <br />
                    Password:        
                    <br />
                    <asp:TextBox ID="tbInsertInstructorPW" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tbInsertInstructorPW" ErrorMessage="Please enter password" ForeColor="Red" ValidationGroup="AddInstructor"></asp:RequiredFieldValidator>
                    <br />
                    </strong>First Name:
                    <br />
                    <asp:TextBox ID="tbInsertInstructorFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tbInsertInstructorFName" ErrorMessage="Please enter first name" ForeColor="Red" ValidationGroup="AddInstructor"></asp:RequiredFieldValidator>
                    <br />
                    Last Name:<br />
                    <asp:TextBox ID="tbInsertInstructorLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tbInsertInstructorLName" ErrorMessage="Please enter last name" ForeColor="Red" ValidationGroup="AddInstructor"></asp:RequiredFieldValidator>
                    <br />
                    Phone Number:
                    <br />
                    <asp:TextBox ID="tbInsertInstructorPhone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tbInsertInstructorPhone" ErrorMessage="Please enter phone number" ForeColor="Red" ValidationGroup="AddInstructor"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnAddInstructor" runat="server" Text="Add Instructor" ValidationGroup="AddInstructor" />
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"><strong>Delete Member or Instructor</strong><br />
                    User Type:
                    <asp:RadioButtonList ID="userTypeRadioButtonList" runat="server">
                        <asp:ListItem>Member</asp:ListItem>
                        <asp:ListItem>Instructor</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="userTypeRadioButtonList" ErrorMessage="Please select user type" ForeColor="Red" ValidationGroup="DeleteMemberOrInstructor"></asp:RequiredFieldValidator>
                    <br />
                    ID to Delete:
                    <asp:TextBox ID="tbDeleteID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="tbDeleteID" ErrorMessage="Please enter ID to delete" ForeColor="Red" ValidationGroup="DeleteMemberOrInstructor"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" ValidationGroup="DeleteMemberOrInstructor" />
                </td>
                <td><strong>Assign Member to Section</strong><br />
                    Member ID:
                    <asp:TextBox ID="tbAssignMemberID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="tbAssignMemberID" ErrorMessage="Please enter member ID" ForeColor="Red" ValidationGroup="AssignToSection"></asp:RequiredFieldValidator>
                    <br />
                    Section:<asp:RadioButtonList ID="sectionRadioButtonList" runat="server">
                        <asp:ListItem>Karate Age-Uke</asp:ListItem>
                        <asp:ListItem>Karate Chudan-Uke</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="sectionRadioButtonList" ErrorMessage="Please select section" ForeColor="Red" ValidationGroup="AssignToSection"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnAssignToSection" runat="server" Text="Assign to Section" ValidationGroup="AssignToSection" />
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>
