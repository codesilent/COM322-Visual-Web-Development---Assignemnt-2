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
        .auto-style36 {
        width: 417px;
        height: 28px;
        font-size: x-large;
    }
    .auto-style37 {
        width: 258px;
        height: 41px;
    }
    .auto-style39 {
        width: 258px;
        height: 28px;
    }
    .auto-style41 {
            width: 417px;
            height: 28px;
            font-size: small;
        }
        .auto-style42 {
            width: 506px;
            height: 41px;
        }
        .auto-style43 {
            width: 506px;
            height: 28px;
        }
        .boxExisting {
        background-color: #465967;
        border-radius: 20px;
        padding-left: 22px;
        padding-bottom: 33px;
        margin-top: 32px;
        margin-right: 650px;
       }
        .boxNewCustomers{
        background-color: #465967;
        border-radius: 20px;
        padding-left: 22px;
        padding-bottom: 33px;
        padding-top: 0px;
        margin-top: 32px;
        margin-right: 650px;
        }


        .auto-style44 {
            width: 417px;
            height: 28px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="boxExisting"> 
        <table class="auto-style10">
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">Existing Customers<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style37">Username</td>
                <td class="auto-style42">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a valid username!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">Password</td>
                <td class="auto-style42">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password!" ValidationGroup="ValidateLogin" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="ValidateLogin" />
                </td>
                <td class="auto-style43">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" />
                </td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidateLogin" style="margin-left: 12px" />
                </td>
            </tr>
            </table>
        </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

    <div class="boxNewCustomers">
    <table class="auto-style10">
        <tr>
            <td class="auto-style44">
                <br />
            </td>
            <td class="auto-style43">
                &nbsp;</td>
        </tr>

        
        <tr>
            
                
            <td class="auto-style36">
                New Customers</td>
            <td class="auto-style43">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                <asp:Button ID="btnRegister" runat="server" Text="Register" />
            </td>
            <td class="auto-style43">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style43">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">
                Having trouble logging in?<br />
                Please feel free to
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Contact.aspx">contact us</asp:HyperLink>
&nbsp;for assistance.</td>
            <td class="auto-style43">
                &nbsp;</td>
            
        </tr>
    </table>
        </div>
</asp:Content>

