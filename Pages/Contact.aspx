<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Page_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            height: 17px;
        }
        .auto-style5 {
            width: 391px;
        }
        .auto-style6 {
            height: 17px;
            width: 391px;
        }
        .auto-style7 {
            font-size: large;
            width: 391px;
        }
        .auto-style8 {
            width: 391px;
            height: 16px;
        }
        .auto-style9 {
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        Contact Us</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        Please feel free to fill out the form below leaving feedback or any inquiries that you have.
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td class="auto-style3" colspan="2">Contact Details</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5">*Name&nbsp; |</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="#FF3300" Operator="DataTypeCheck" ValidationGroup="ValidateContact">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="Red" ValidationGroup="ValidateContact">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">*Email&nbsp; |</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your e-mail address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ValidateContact">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your e-mail address!" ForeColor="Red" ValidationGroup="ValidateContact">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Telephone Number&nbsp; |</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtTelNum" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelNum" ErrorMessage="Please enter a valid telephone number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="ValidateContact">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">*Reason for submission&nbsp; |</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black">
                    <asp:ListItem>Feedback</asp:ListItem>
                    <asp:ListItem>General Inquiry</asp:ListItem>
                    <asp:ListItem>Request</asp:ListItem>
                    <asp:ListItem>Product</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">*Inquiry/ Feedback</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="115px" Width="356px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="ValidateContact" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

