<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Page_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            height: 28px;
        }
        .auto-style10 {
            width: 764px;
            height: 168px;
        }
        .auto-style31 {
            width: 254px;
            height: 41px;
        }
        .auto-style32 {
            width: 255px;
            height: 41px;
        }
        .auto-style33 {
            width: 254px;
            height: 28px;
        }
        .auto-style34 {
            width: 255px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style1" colspan="3">Have you registered yet?</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">Login<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style31">Username</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a valid username!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">Password</td>
            <td class="auto-style32">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="ValidateLogin" />
            </td>
            <td class="auto-style34">
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style34">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidateLogin" style="margin-left: 12px" />
            </td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

