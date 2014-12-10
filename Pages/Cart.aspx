<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Page_Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .boxCheckout{
        background-color: #465967;
        border-radius: 20px;
        padding-left: 22px;
        padding-bottom: 33px;
        padding-top: 8px;
        margin-top: 32px;
        margin-right: 214px;
        }

        .boxDelivery{
        background-color: #465967;
        border-radius: 20px;
        padding-left: 22px;
        padding-bottom: 12px;
        padding-top: 23px;
        margin-top: 32px;
        margin-right: 493px;
        }

        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p class="auto-style1">
        Checkout</p>
    <div class="boxCheckout">
    <p class="auto-style">
        Your Items&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Item Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Total Cost"></asp:Label>
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="lblItem1Name" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblItem1Price" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblItem1Quantity" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblItem1Cost" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            </table>
        </p>
        </div>
    <br /><br />
    <p class="auto-style1">
        Delivery Details</p>
    <div class="boxDelivery">
    <p class="auto-style2">
        &nbsp;&nbsp;&nbsp; Please confirm your delivery details, if they need changed, please do so accordingly.<p class="auto-style2">
        &nbsp;<p class="auto-style2">
        <asp:Label ID="lblFirstName" runat="server" Text="*First Name   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" Width="143px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name!" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter a valid first name!" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateDelivery">*</asp:CompareValidator>
    </p>
    <p class="auto-style2">
        <asp:Label ID="lblSurname" runat="server" Text="*Surname   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSurname" runat="server" Width="146px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname!" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter a valid surname!" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateDelivery">*</asp:CompareValidator>
    </p>
    <p class="auto-style2">
        <asp:Label ID="lblAddress1" runat="server" Text="*Address Line 1   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress1" runat="server" Width="146px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress1" ErrorMessage="Please enter the first line of your address!" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
    </p>
    <p class="auto-style2">
        <asp:Label ID="lblCityTown" runat="server" Text="*City/Town   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCityTown" runat="server" Width="142px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCityTown" ErrorMessage="Please enter your City/Town" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtCityTown" ErrorMessage="Please enter a valid City/Town" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateDelivery">*</asp:CompareValidator>
    </p>
    <p class="auto-style2">
        <asp:Label ID="lblPostcode" runat="server" Text="*Postcode   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPostcode" runat="server" Width="142px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Please enter your postcode!" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Please enter a valid postcode!" ForeColor="Red" ValidationGroup="ValidateDelivery" ValidationExpression="^([A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\ [0-9][ABD-HJLNP-UW-Z]{2}|(GIR\ 0AA)|(SAN\ TA1)|(BFPO\ (C\/O\ )?[0-9]{1,4})|((ASCN|BBND|[BFS]IQQ|PCRN|STHL|TDCU|TKCA)\ 1ZZ))$">*</asp:RegularExpressionValidator>
    </p>
    <p class="auto-style2">
        <asp:Label ID="lblCountry" runat="server" Text="*Country   |"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCountry" runat="server" Width="141px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter your country!" ForeColor="Red" ValidationGroup="ValidateDelivery">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter a valid City/Town" ForeColor="Red" Operator="DataTypeCheck" ValidationGroup="ValidateDelivery">*</asp:CompareValidator>
    </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Button ID="btnConfirmAddress" runat="server" Text="Confirm Address" ValidationGroup="ValidateDelivery" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnResetDetails" runat="server" Text="Reset details" />
&nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="211px" />
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="lblDeliveryConfirmed" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="imgGreenTick" runat="server" Height="73px" ImageUrl="~/Images/GreenTick.png" Visible="False" Width="133px" />
                </td>
            </tr>
        </table>
        </div>
</asp:Content>

