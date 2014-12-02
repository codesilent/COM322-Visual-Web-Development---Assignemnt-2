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
        .auto-style32 {
            width: 255px;
            height: 41px;
        }
        .auto-style34 {
            width: 255px;
            height: 28px;
        }
    .auto-style36 {
        width: 258px;
        height: 28px;
        font-size: x-large;
    }
    .auto-style37 {
        width: 258px;
        height: 41px;
    }
    .auto-style38 {
        width: 251px;
        height: 41px;
    }
    .auto-style39 {
        width: 258px;
        height: 28px;
    }
    .auto-style40 {
        width: 251px;
        height: 28px;
    }
    .auto-style41 {
        width: 258px;
        height: 28px;
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style1" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">Existing Customers<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Username</td>
            <td class="auto-style38">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a valid username!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">Password</td>
            <td class="auto-style38">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="ValidateLogin" />
            </td>
            <td class="auto-style40">
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidateLogin" style="margin-left: 12px" />
            </td>
            <td class="auto-style34">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style39">
                <br />
            </td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">
                New Customers</td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                <asp:Button ID="btnRegister" runat="server" Text="Register" />
            </td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                Having trouble logging in?<br />
                Please feel free to
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Contact.aspx">contact us</asp:HyperLink>
&nbsp;for assistance.</td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

