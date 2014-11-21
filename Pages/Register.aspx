<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Page_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 193px;
        height: 23px;
    }
    .auto-style7 {
        width: 344px;
        height: 23px;
            text-align: left;
        }
    .auto-style10 {
        height: 434px;
            margin-right: 136px;
            width: 425px;
        }
    .auto-style13 {
            height: 39px;
            width: 193px;
            text-align: center;
        }
    .auto-style17 {
        width: 193px;
        height: 100px;
    }
    .auto-style18 {
        width: 344px;
        height: 100px;
            text-align: left;
        }
    .auto-style19 {
            height: 40px;
            width: 193px;
            text-align: center;
        }
        .auto-style21 {
            height: 39px;
            width: 344px;
            text-align: left;
        }
        .auto-style22 {
            height: 40px;
            width: 344px;
            text-align: left;
        }
        .auto-style23 {
            width: 227px;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style25 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <span class="auto-style25">Welcome!</span><span class="auto-style24"><br />
    <br />
    * required field<br />
    </span>

    <br/>
<table class="auto-style10">
    <tr>
        <td class="auto-style13">
    &nbsp;&nbsp;
            *<asp:Label runat="server" Text="Title"></asp:Label>
        </td>
        <td class="auto-style21">
    <asp:DropDownList ID="cboTitle" runat="server">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cboTitle" ErrorMessage="Please select your Title!" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

            *<asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">

    &nbsp;&nbsp;

            *<asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
        </td>
        <td class="auto-style21">
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname" ForeColor="red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label3" runat="server" Text="*Address:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress1" ErrorMessage="Please enter your address!" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">

    &nbsp;&nbsp;

    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
        </td>
        <td class="auto-style21">
        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label5" runat="server" Text="*City/Town:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtCityTown" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCityTown" ErrorMessage="Please enter your City/Town" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="Validate">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label6" runat="server" Text="Country:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label7" runat="server" Text="*Post Code:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Please enter aa valid postcode!" ForeColor="#FB0000">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label9" runat="server" Text="Telephone Number:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtTelNum" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtTelNum" ErrorMessage="Please enter your telephone number" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="Validate">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid e-mail address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Validate">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">

            &nbsp;&nbsp;*Password:</td>
        <td class="auto-style22">
        <asp:TextBox ID="txtPassword1" runat="server" ValidationGroup="Validate"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Please enter a valid password" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Please enter a valid password" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style23">Passwords must:<br />
            - be at least 10 characters,<br />
            -contain at least one lower case letter,<br />
            -One upper case letter,<br />
            One digit and one specal character,<br />
            -Valid special characters are -@#$%^&amp;+=</td>
    </tr>
    <tr>
        <td class="auto-style19">

    &nbsp;&nbsp;

    <asp:Label ID="Label11" runat="server" Text="*Confirm Password:"></asp:Label>
        </td>
        <td class="auto-style22">
        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" ErrorMessage="Password's must be valid and match!" ForeColor="#FB0000">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Please enter a valid password" ForeColor="#FB0000" ValidationGroup="Validate">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        </td>
        <td class="auto-style18">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">

    <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="Validate" />

        </td>
        <td class="auto-style7">
            <asp:Button ID="btnReset" runat="server" Text="Reset " />
        </td>
    </tr>
</table>
<br/>

        <br/><br/>

        <br/><br/>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br><br>

    <br />
</asp:Content>

