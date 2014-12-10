<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: 32px;
    }
        .auto-style11 {
            font-size: 15px;
            width: 100%;
            height: 188px;
        }
        .auto-style17 {
            font-size: 15px;
            height: 18px;
        }
        .auto-style18 {
            font-size: 15px;
            height: 19px;
        }
        .auto-style20 {
            font-size: 15px;
            width: 42%;
            height: 19px;
        }

        #floatRight {
            background-color: #7e7e7e;
            border-radius: 42px;
            float: right;
            padding-left: 20px;
            width: 372px;
            margin-top: 20px;
        }

        #floatLeft {
            float: left;
        }




    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><img src="../Images/bookCollage.png" />
    <div id="floatLeft">
    <h2>
        <b><asp:Label ID="lblWelcome" runat="server"></asp:Label></b>
</h2>

	<h2>Who Are We?</h2>

    <p>At McNeilly Reid’s Books, the fruits of labour of Matthew McNeilly and Aaron Reid, we supply you the bookworm with a small but ever changing variety of books. Spanning any number of book genres and at the cheapest prices. Made available in the three major book types, mammoth, monkey and mouse… No we don’t, don’t be silly we offer paperback, hardback and e-book like any other bookstore. </p>

    <h2>Developments</h2>
    <p><i>12/12/14</i><br/>
    This is the mother of all deadlines, both for us the developers and for you the customer. On this date the website and all its planned functionality will be complete. During the process we aim to keep you updated on the latest implementations. </p>

    <p><i>07/12/14</i><br/>
    Books page now fully functioning get browsing!</p>

    <p><i>05/12/14</i><br/>
    Poll now fully functional – get voting! </p>

    <p><i>03/12/14</i><br/>
    Poll has been started. </p>

    <p><i>25/11/14</i><br/>
    Shopping cart preview added to books webpage. </p>

    <p><i>24/11/14</i><br/>
    Started development on books webpage. </p>

    <p><i>23/11/14</i><br/>
    Login & registration pages created and coded. </p>

    <p><i>22/11/14</i><br/>
    Login web form has been created. </p>

    <p><i>21/11/14</i><br/>
    Coding of registration page has begun. </p>

    <p><i>19/11/14</i><br/>
    Registration page webform has been created</p>

    <p><i>15/11/14</i><br/> 
    Development has officially begun:<br />
    Superhero bootstrap theme has been picked.
    Master and child pages have been made. </p>

    </div>


      <div id="floatRight">
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
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Votes</td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:RadioButtonList ID="radBookPoll" runat="server" Height="151px" Width="91px">
                <asp:ListItem Value="radPaperback">Paperback</asp:ListItem>
                <asp:ListItem Value="radHardback">Hardback</asp:ListItem>
                <asp:ListItem Value="radEBook">E-Book</asp:ListItem>
                <asp:ListItem Value="radDontmind">Don&#39;t mind</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="auto-style20">&nbsp;&nbsp;<asp:Label ID="lblPaperback" runat="server"></asp:Label>
            &nbsp;<br />
            <br />
            &nbsp;<asp:Label ID="lblHardback" runat="server"></asp:Label>
            &nbsp;&nbsp;<br />
            &nbsp;
            <br />
            &nbsp;<asp:Label ID="lblEbook" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="lblDontMind" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">Total Votes: </td>
        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblTotalVoteCount" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style20">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21" colspan="2">
            <asp:Button ID="btnVote" runat="server" Text="Vote" />
            &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblVoteError" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<p class="auto-style1">&nbsp;</p>

     </div>

</asp:Content>

