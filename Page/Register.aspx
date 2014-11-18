<%@ Page Title="" Language="VB" MasterPageFile="~/Master/index.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Page_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label runat="server" Text="Title"></asp:Label>
    <asp:DropDownList ID="cboTitle" runat="server">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList><br><br>

    <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name" ForeColor="red">*</asp:RequiredFieldValidator>
        <br><br>

    <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname" ForeColor="red">*</asp:RequiredFieldValidator>
        <br><br>

    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label4" runat="server" Text="*Address:"></asp:Label>
        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label6" runat="server" Text="Country:"></asp:Label>
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label7" runat="server" Text="Post Code:"></asp:Label>
        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label9" runat="server" Text="Telephone Number:"></asp:Label>
        <asp:TextBox ID="txtTelNum" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br><br>

    <asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox><br><br>

    <asp:Label ID="Label11" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox><br><br>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    <asp:Button ID="btnRegister" runat="server" Text="Register" />

</asp:Content>

