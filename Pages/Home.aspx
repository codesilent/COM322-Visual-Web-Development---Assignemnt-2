<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-large;
    }
        .auto-style11 {
            width: 100%;
            height: 188px;
        }
        .auto-style17 {
            height: 18px;
        }
        .auto-style18 {
            height: 19px;
        }
        .auto-style19 {
            width: 104px;
            height: 19px;
        }
        .auto-style20 {
            width: 84%;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
</h2>

	<h2>Who the hell are we?</h2>

	<p>Here at Reid & McNeilly Books we offer a small selection of assorted animals, ranging from mice to elephants. No we don’t stupid, we obviously sell books. We strive on offering a small assortment of books covering a wide variety of genres at incredibly low prices.</p>

	<p>Hurry stocks won’t last and are constantly changing. So go on be a bookworm.</p> 

	<h2>News</h2>

	<p>We are currently under development, so bare with us more functionality, or at this point functionality, books and news will come soon.</p>
<p>&nbsp;</p>
<p class="auto-style1">Poll&nbsp;&nbsp;&nbsp; </p>
<table class="auto-style11">
    <tr>
        <td colspan="2" class="auto-style17">What style do you prefer to read?</td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style17">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Votes</td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style19">
            <asp:CheckBox ID="chkPaperback" runat="server" Text="Paperback" />
        </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblPaperback" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style19">
            <asp:CheckBox ID="chkHardback" runat="server" Text="Hardback" />
        </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblHardback" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">
            &nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style19">
            <asp:CheckBox ID="chkEBook" runat="server" Text="E-Book" />
        </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblEbook" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style19">Total Votes: </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblTotalVoteCount" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style19">
            <asp:Button ID="btnVote" runat="server" Text="Vote" />
        </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblVoteError" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<p class="auto-style1">&nbsp;</p>

</asp:Content>

