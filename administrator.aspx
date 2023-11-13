<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="administrator.aspx.cs" Inherits="Assignment4.administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1142px;
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
                <td><strong>Add New Member<br />
                    </strong>User Name:<br />
                    Password:<strong><br />
                    </strong>First Name:<br />
                    Last Name:<br />
                    Date Joined:<br />
                    Phone Number:<br />
                    Email:<br />
                    <asp:Button ID="btnAddMember" runat="server" Text="Add Member" />
                </td>
                <td><strong>Add New Instructor<br />
                    </strong>User Name:<br />
                    Password:<strong><br />
                    </strong>First Name:<br />
                    Last Name:
                    <br />
                    Phone Number:<br />
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
                <td><strong>Delete Member or Instructor</strong><br />
                    User Type: <asp:RadioButtonList ID="userTypeRadioButtonList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Member        </asp:ListItem>
            <asp:ListItem>Instructor</asp:ListItem>
        </asp:RadioButtonList>
                    <br />
                    ID to Delete:<br />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>
