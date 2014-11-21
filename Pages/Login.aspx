<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Page_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1" colspan="3">Login<br />
            </td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a valid username!" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password!" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="Validate" />
            </td>
            <td>
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

