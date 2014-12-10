<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Page_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style18 {
            height: 15px;
            width: 76%;
        }
        .auto-style22 {
            width: 100%;
            height: 404px;
        }
        .auto-style23 {
            font-size: large;
            height: 23px;
        }
        .auto-style24 {
            height: 15px;
        }
        .auto-style25 {
            font-size: large;
            height: 42px;
        }
        .auto-style26 {
            width: 76%;
            height: 42px;
        }
        .auto-style27 {
            width: 76%;
            height: 23px;
        }
        .auto-style28 {
            font-size: large;
            height: 119px;
        }
        .auto-style29 {
            width: 76%;
            height: 119px;
        }
        .auto-style30 {
            font-size: large;
            height: 28px;
        }
        .auto-style31 {
            width: 76%;
            height: 28px;
        }
        .auto-style33 {
            height: 42px;
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
    <table class="auto-style22">
        <tr>
            <td class="auto-style23" colspan="2">Contact Details</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="2">*Name&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="#FF3300" Operator="DataTypeCheck" ValidationGroup="ValidateContact">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="Red" ValidationGroup="ValidateContact">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="2">*Email&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your e-mail address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ValidateContact">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your e-mail address!" ForeColor="Red" ValidationGroup="ValidateContact">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="2">Telephone Number&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTelNum" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelNum" ErrorMessage="Please enter a valid telephone number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="ValidateContact">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="2">*Reason for submission&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black">
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">*Inquiry/ Feedback*Inquiry/ Feedback</td>
            <td class="auto-style26">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:TextBox ID="txtInquiry" runat="server" Height="115px" Width="356px"></asp:TextBox>
            </td>
            <td class="auto-style29">&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInquiry" ErrorMessage="Please leave your feedback or inquiry!" ForeColor="Red" ValidationGroup="ValidateContact">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:Label ID="lblInquirySuccess" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="ValidateContact" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

