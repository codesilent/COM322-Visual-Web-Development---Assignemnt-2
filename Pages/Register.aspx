<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Page_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 193px;
        height: 307px;
    }
    .auto-style7 {
        width: 344px;
        height: 307px;
            text-align: left;
        }
    .auto-style10 {
        height: 855px;
            margin-right: 136px;
            width: 536px;
            margin-bottom: 0px;
        }
    .auto-style13 {
            height: 41px;
            width: 193px;
            text-align: center;
        }
    .auto-style17 {
        width: 193px;
        height: 43px;
    }
        .auto-style21 {
            height: 41px;
            width: 344px;
            text-align: left;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style25 {
            font-size: x-large;
        }
        .auto-style36 {
            height: 36px;
            width: 193px;
            text-align: center;
        }
        .auto-style37 {
            height: 36px;
            width: 344px;
            text-align: left;
        }
        .auto-style40 {
            height: 40px;
            width: 193px;
            text-align: center;
        }
        .auto-style41 {
            height: 40px;
            width: 344px;
            text-align: left;
        }
        .auto-style42 {
            height: 43px;
            width: 193px;
            text-align: center;
        }
        .auto-style43 {
            height: 43px;
            width: 344px;
            text-align: left;
        }
        .auto-style44 {
            height: 40px;
            width: 193px;
            text-align: center;
            font-size: x-large;
        }

        .boxContactDetails{
        background-color: #465967;
        border-radius: 20px;
        padding-left: 1px;
        padding-bottom: 12px;
        padding-top: 23px;
        margin-top: 32px;
        margin-right: 562px;
        }

        .boxLoginDetails{
        background-color: #465967;
        border-radius: 20px;
        padding-left: 22px;
        padding-bottom: 12px;
        padding-top: 23px;
        margin-top: 32px;
        margin-right: 493px;
        }


        .auto-style51 {
            height: 434px;
            margin-right: 136px;
            width: 536px;
            margin-bottom: 0px;
        }
        .auto-style52 {
            height: 44px;
            width: 193px;
            text-align: center;
        }
        .auto-style53 {
            height: 44px;
            width: 344px;
            text-align: left;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <span class="auto-style25">Welcome!<br />
    <br />
    Contact Details</span><span class="auto-style24">
        <br />
    </span>

    <br/>
  
         * required field<br />
    <div class="boxContactDetails">
<table class="auto-style51">
    <tr>
        
        <td class="auto-style42">
            
    &nbsp;&nbsp; <asp:Label runat="server" Text="Title"></asp:Label>
        </td>
        <td class="auto-style43">
    <asp:DropDownList ID="cboTitle" runat="server" ForeColor="Black">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cboTitle" ErrorMessage="Please select your Title!" ForeColor="#FB0000" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style42">

    &nbsp;&nbsp;

            *<asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
        </td>
        <td class="auto-style43">
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your name" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name" ForeColor="Red" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style42">

    &nbsp;&nbsp;

            *<asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
        </td>
        <td class="auto-style43">
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname" ForeColor="Red" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style42">

    &nbsp;&nbsp;

    <asp:Label ID="Label3" runat="server" Text="*Address:"></asp:Label>
        </td>
        <td class="auto-style43">
        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress1" ErrorMessage="Please enter your address!" ForeColor="#FB0000" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style42">

    &nbsp;&nbsp;

    <asp:Label ID="Label4" runat="server" Text="Address Line 2:"></asp:Label>
        </td>
        <td class="auto-style43">
        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="auto-style42">

    &nbsp;&nbsp;

    <asp:Label ID="Label5" runat="server" Text="*City/Town:"></asp:Label>
        </td>
        <td class="auto-style43">
        <asp:TextBox ID="txtCityTown" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCityTown" ErrorMessage="Please enter your city/town" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCityTown" ErrorMessage="Please enter your City/Town" ForeColor="red" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style52">

    &nbsp;&nbsp;

    <asp:Label ID="Label6" runat="server" Text="Country:"></asp:Label>
        </td>
        <td class="auto-style53">
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter your country" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style52">

    &nbsp;&nbsp;

    <asp:Label ID="Label7" runat="server" Text="*Post Code:"></asp:Label>
        </td>
        <td class="auto-style53">
        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Please enter a valid postcode!" ForeColor="Red" ValidationGroup="ValidateRegister" ValidationExpression="^([A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\ [0-9][ABD-HJLNP-UW-Z]{2}|(GIR\ 0AA)|(SAN\ TA1)|(BFPO\ (C\/O\ )?[0-9]{1,4})|((ASCN|BBND|[BFS]IQQ|PCRN|STHL|TDCU|TKCA)\ 1ZZ))$">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Please enter your postcode" ForeColor="Red" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style52">

    &nbsp;&nbsp;

    <asp:Label ID="Label9" runat="server" Text="Telephone Number:"></asp:Label>
        </td>
        <td class="auto-style53">
        <asp:TextBox ID="txtTelNum" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator9" runat="server" ControlToValidate="txtTelNum" ErrorMessage="Please enter your telephone number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style52">

    &nbsp;&nbsp;&nbsp;

            *<asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
        </td>
        <td class="auto-style53">
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid e-mail address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ValidateRegister">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>

    </table>
        </div>
    <p>
    </p>
    <table class="auto-style10">
        
    <tr>
        <td class="auto-style40">

            &nbsp;</td>
        <td class="auto-style41">
            &nbsp;</td>
    </tr>
      
    <tr>
        <td class="auto-style44">

            Login Details</td>
        <td class="auto-style41">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style36">
            *Username</td>
        <td class="auto-style37">
        <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="Validate"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a valid Username!" ForeColor="Red" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">

            &nbsp;&nbsp;*Password:       <td class="auto-style41">
        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Please enter a valid password" ForeColor="#FB0000" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">

    &nbsp;&nbsp;

    <asp:Label ID="Label11" runat="server" Text="*Confirm Password:"></asp:Label>
        </td>
        <td class="auto-style21">
        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" ErrorMessage="Password's must be valid and match!" ForeColor="#FB0000" ValidationGroup="ValidateRegister">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Please confirm your password" ForeColor="#FB0000" ValidationGroup="ValidateRegister">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style42">

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidateRegister" ForeColor="Yellow" />

        </td>
        <td class="auto-style43">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">

    <asp:Button ID="btnRegister" runat="server" Text="Register" BorderStyle="None" ValidationGroup="ValidateRegister" />

        </td>
        <td class="auto-style43">
            <asp:Button ID="btnReset" runat="server" Text="Reset " />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">

            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
    </tr>
</table>
<br/>

        <br/><br/>

        <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/><br/>

    <br/>
</asp:Content>

