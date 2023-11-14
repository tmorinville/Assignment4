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
                    <asp:TextBox ID="tbInsertUserUserName" runat="server"></asp:TextBox>
                    <br />
                    Password:<strong><br />
                    <asp:TextBox ID="tbInsertUserPassword" runat="server"></asp:TextBox>
                    <br />
                    </strong>First Name:<br />
                    <asp:TextBox ID="tbInsertUserFName" runat="server"></asp:TextBox>
                    <br />
                    Last Name:<br />
                    <asp:TextBox ID="tbInsertUserLName" runat="server"></asp:TextBox>
                    <br />
                    Date Joined:<br />
                    <asp:TextBox ID="tbInsertMemberDate" runat="server"></asp:TextBox>
                    <br />
                    Phone Number:<br />
                    <asp:TextBox ID="tbInsertMemberPhone" runat="server"></asp:TextBox>
                    <br />
                    Email:<br />
                    <asp:TextBox ID="tbInsertMemberEmail" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnAddMember" runat="server" Text="Add Member" />
                </td>
                <td><strong>Add New Instructor<br />
                    </strong>User Name:<br />
                    <asp:TextBox ID="tbInsertInstructorUserName" runat="server"></asp:TextBox>
                    <br />
                    Password:        
                    <br />
                    <asp:TextBox ID="tbInsertInstructorPW" runat="server"></asp:TextBox>
                    <br />
                    </strong>First Name:
                    <br />
                    <asp:TextBox ID="tbInsertInstructorFName" runat="server"></asp:TextBox>
                    <br />
                    Last Name:<br />
                    <asp:TextBox ID="tbInsertInstructorLName" runat="server"></asp:TextBox>
                    <br />
                    Phone Number:
                    <br />
                    <asp:TextBox ID="tbInsertInstructorPhone" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnAddInstructor" runat="server" Text="Add Instructor" />
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
                    ID to Delete:
                    <asp:TextBox ID="tbDeleteID" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
                <td><strong>Assign Member to Section</strong><br />
                    Member ID:
                    <asp:TextBox ID="tbAssignMemberID" runat="server"></asp:TextBox>
                    <br />
                    Section:<asp:RadioButtonList ID="sectionRadioButtonList" runat="server">
                        <asp:ListItem>Karate Age-Uke</asp:ListItem>
                        <asp:ListItem>Karate Chudan-Uke</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Button ID="btnAssignToSection" runat="server" Text="Assign to Section" />
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>
