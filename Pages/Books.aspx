<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Page_Books"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        /* Floats all images to the left*/
        .bookImage {
            float: left;
        }
       
        /* Floats the description (title, summary and button) to the left against the book image*/
        .bookContent {
            float: left;
            margin-bottom: 30px;
            margin-left: 20px;
            width: 594px;
        }

        p {
            width: 536px;
        }

        /* Container with a width for each book (image, title, summary and button)*/
        .bookContainer {
            width: 935px;
        }

        /* Container for the shopping cart (title, image, num of items, subtotal, check & empty cart buttons)*/
        #cart {
            width: 300px;
            height: 383px;
            float: right;
            text-align: center;
            background-color: #7e7e7e;
            border-radius: 42px;
            padding-top: 18px;
        }

        /* centers and resizes shopping cart image*/
        .cartImage {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 120px;
        }

        .price {
            font-size: 32px;
            color: orange;
        }

        .highlight {
            font-size: 24px;
            color: orange;
        }


    </style>

    <div id="cart">
        <h2>Shopping Cart</h2>
        <img class="cartImage" src="../Images/ShoppingCart.png"/>
        <asp:Label ID="Label16" runat="server" Text="Number Of Items: "></asp:Label><asp:Label ID="lblNumItems" class="highlight" runat="server" Text="0"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Subtotal: "></asp:Label><asp:Label ID="lblSubtotal" class="highlight" runat="server" Text=""></asp:Label><br /><br />
        <asp:Button ID="btnCheckout" runat="server" Text="Go To Checkout" BackColor="Orange"/><br /><br />
        <asp:Button ID="btnEmptyCart" runat="server" Text="Empty Cart" />
        <br />
        <br />
        <asp:Label ID="lblCartError" runat="server"></asp:Label>
    </div>

    <h1>Biographies</h1>

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books/Biographies/AlexFergusonMyAutobiography.jpeg" />
        <div class="bookContent">
            <b><asp:Label ID="lblBookName" runat="server" Text="Alex Ferguson My Autobiography By Alex Ferguson" Font-Size="Large"></asp:Label></b>
            <p>The celebratory, revealing, inspiring and entertaining autobiography of the greatest manager in the history of British football.</p>
            <p>My Goodness, this is fascinating. (Evening Standard) <br /> His book is really a piece of oral history, and his life is a conduit to a time when a working-class man of talent could, not by the magical alchemy of elite education or the stardust of celebrity, but by a lifetime of hard work and hard thinking, rise to the very top and, flaws aside, remain true to the best of the world he came from. (The Guardian)</p>
            <asp:Label ID="lblLabel" runat="server" Text="Price: £"></asp:Label><asp:Label ID="lblPrice" class="price" runat="server" Text="4.99"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="cboBookType" runat="server" ForeColor="#000066" AutoPostBack="true">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="txtQuantity" runat="server" Width="35px" Text="1"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter a quantity between 1 & 100" ControlToValidate="txtQuantity" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Please enter a quantity" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btnAdd" runat="server" Text="Add To Cart"/>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </div>
    <br />
    <br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books/Biographies/JohnCleeseSoAnyway.jpeg" />
        <div class="bookContent">
            <b><asp:Label ID="lblBookName1" runat="server" Text="So, Anyway... The Autobiography By John Cleese" Font-Size="Large"></asp:Label></b>
            <p>The autobiography of a comedy giant.</p>
            <p><b>"Vivid, ridiculously entertaining, and, at times, explosively funny...</b> Cleese is a master of crisp comic prose: his elegant syntax and sudden absurdities would have PG Wodehouse raising a martini glass. So, Anyway... glows with fairness, kindness, gentleness and loyalty. Have we been wrong, all these years, about which member of the Python team should actually be known as the nice one?" (Nicholas Barber Sunday Express)</p>
            <p>"Left me wiping away tears." (Helen Brown Sunday Telegraph)</p>
            <asp:Label ID="Label18" runat="server" Text="Price: £"></asp:Label><asp:Label ID="lblPrice1" class="price" runat="server" Text="4.99"></asp:Label><br />
            <asp:Label ID="Label20" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#000066" AutoPostBack="true">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label21" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="txtQuantity1" runat="server" Width="35px" Text="1"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please enter a quantity between 1 & 100" ControlToValidate="txtQuantity" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Please enter a quantity" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
        </div>
    </div>
    <br />
    <br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books/Biographies/KevinBridgesWeNeedToTalkAbout.jpeg" />
        <div class="bookContent">
            <b><asp:Label ID="Label4" runat="server" Text="We Need to Talk About . . . Kevin Bridges" Font-Size="Large"></asp:Label></b>
            <p>Kevin Bridges, Scotland's 'young comedy prodigy' (Guardian), has followed a meteoric path, from his first five-minute set in The Stand comedy club in Glasgow to selling out the SECC to a record-breaking 100,000 fans. Born in Clydebank he still lives in Glasgow. Now, at the tender age of just twenty-seven, Kevin puts pen to paper to tell his story so far in his brilliant memoir, We Need to Talk About . . . Kevin Bridges. </p>
            <p>Kevin Bridges might just become the best stand-up in the land . . . he will go and deliver a one-liner that you want to jot down and frame (The Times)</p>
            <p>A wonderfully dry and deadpan Glaswegian comic . . . one the most exciting talents to have emerged from Scotland since Billy Connolly (Guardian)</p>
            <asp:Label ID="Label5" runat="server" Text="Price: £"></asp:Label><asp:Label ID="Label6" class="price" runat="server" Text="4.99"></asp:Label><br />
            <asp:Label ID="Label17" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="DropDownList2" runat="server" ForeColor="#000066" AutoPostBack="true">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label19" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="txtQuanityt2" runat="server" Width="35px" Text="1"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Please enter a quantity between 1 & 100" ControlToValidate="txtQuantity" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Please enter a quantity" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Add To Cart" />
            <asp:ValidationSummary ID="ValidationSummary3" runat="server" />
        </div>
    </div>
    <br />
    <br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books/Biographies/RobBrydonSmallManInABook.jpeg" />
        <div class="bookContent">
            <h4>Small Man In A Book By Rob Brydon</h4>
            <p>Rob Brydon is the award winning star of many critically acclaimed comedy series, from the darkly funny Human Remains and immensely popular Gavin and Stacey to his recent outing alongside Steve Coogan in Michael Winterbottom's The Trip, as well as host of Would I Lie to You? and The Rob Brydon Show. Rob has five children and lives in London. </p>
            <p>Brydon guides us wittily through his early years. He's excellent at describing the nitty-gritty of being on stage --Independent on Sunday Independent on Sunday The Times</p>
            <asp:Label ID="Label10" runat="server" Text="Price £1.00"></asp:Label><br />
            <asp:Label ID="Label11" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="DropDownList4" runat="server" ForeColor="#000066">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="35px" Text="1"></asp:TextBox><br /><br />
            <asp:Button ID="Button4" runat="server" Text="Add To Cart" />
        </div>
    </div>
    <br />
    <br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books/Biographies/StephenFryMoreFoolMe.jpeg" />
        <div class="bookContent">
            <h4>More Fool Me By Stephen Fry</h4>
            <p>Stephen Fry is a leading light in film, theatre, radio and television the world over, receiving accolades in spades and plaudits by the shovel. As a writer, producer, director, actor and presenter he has featured in works as varied and adored as the movie Wilde, the TV series Blackadder and Jeeves and Wooster, the sketch show A Bit of Fry and Laurie, the panel game QI, the radio series Fry's English Delight, Shakespeare's Globe's celebrated 2012 production of Twelfth Night (as Malvolio) and documentaries on countless subjects very close to his heart.</p>
            <asp:Label ID="Label13" runat="server" Text="Price £1.00"></asp:Label><br />
            <asp:Label ID="Label14" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="DropDownList5" runat="server" ForeColor="#000066">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label15" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="35px" Text="1"></asp:TextBox><br /><br />
            <asp:Button ID="Button5" runat="server" Text="Add To Cart" />
        </div>
    </div><br />

    <!--
    <h1>Children's Books</h1>
    <img src="../Images/Books/Childrens Books/BeanoAnnual2015.jpeg" />
    <img src="../Images/Books/Childrens Books/JeffKinneyTheLongHaul.jpeg" />
    <img src="../Images/Books/Childrens Books/LaurenChildFeelTheFear.jpeg" />
    <img src="../Images/Books/Childrens Books/MichaelBondLoveFromPaddington.jpeg" />
    <img src="../Images/Books/Childrens Books/NatalieRussellRabbitsInTheSnow.jpeg" />

    <h1>Computing  &amp; Internet</h1>
    <img src="../Images/Books/Computing/AndrewHodgesAlanTuringTheEnigma.jpeg" />
    <img src="../Images/Books/Computing/DaveGormanTooMuchInformation.jpeg" />
    <img src="../Images/Books/Computing/JonDuckettJavaScript&JQuery.jpeg" />
    <img src="../Images/Books/Computing/SeanMcManusRaspberryPiForDummies.jpeg" />
    <img src="../Images/Books/Computing/WalterIssacsonTheInnovators.jpeg" />

    <h1>Food &amp; Drink</h1>
    <img src="../Images/Books/Food & Drink/HughFearnleyWhittingstallRiverCottageLightAndEasy.jpeg" />
    <img src="../Images/Books/Food & Drink/JamieOliverJamiesComfortFood.jpeg" />
    <img src="../Images/Books/Food & Drink/JamiesMartinHomeComforts.jpeg" />
    <img src="../Images/Books/Food & Drink/TomKerridgeBestEverDishes.jpeg" />
    <img src="../Images/Books/Food & Drink/YotamOttolenghiPlentyMore.jpeg" />

    <h1>History</h1>
    <img src="../Images/Books/History/AlanJohnsonPleaseMisterPostman.jpeg" />
    <img src="../Images/Books/History/AndrewRobertsNapoleonTheGreat.jpeg" />
    <img src="../Images/Books/History/BorisJohnsonTheChurchillFactor.jpeg" />
    <img src="../Images/Books/History/DavidMcCandlessKnowledgeIsBeautiful.jpeg" />
    <img src="../Images/Books/History/PeterAckroydCivilWarTheHistoryOfEngland.jpeg" />
    <img src="../Images/Books/History/YuvalNoahHarariSapiensABriefHistoryOfHumankind.jpeg" />

    <h1>Home &amp; Garden</h1>
    <img src="../Images/Books/Home & Garden/AlanBuckinghamAllotmentMonthByMonth.jpeg" />
    <img src="../Images/Books/Home & Garden/AlanTitchmarshTheQueensHouses.jpeg" />
    <img src="../Images/Books/Home & Garden/CathKidstonSewingBook.jpeg" />
    <img src="../Images/Books/Home & Garden/DebbieShoreHalfYardHome.jpeg" />
    <img src="../Images/Books/Home & Garden/RichardMabeyFoodForFree.jpeg" />

    <h1>Horror</h1>
    <img src="../Images/Books/Horror/AdamNevillNoOneGetsOut.jpeg" />
    <img src="../Images/Books/Horror/AprylBakerTheGhostFiles.jpeg" />
    <img src="../Images/Books/Horror/JoeHillHorns.jpeg" />
    <img src="../Images/Books/Horror/SibelHodgeLookBehindYou.jpeg" />
    <img src="../Images/Books/Horror/StephenKingRevival.jpeg" />

    <h1>Literature</h1>
    <img src="../Images/Books/Literature/DaniAtkinsTheStoryOfUs.jpeg" />
    <img src="../Images/Books/Literature/JodiPicoultLeavingTime.jpeg" />
    <img src="../Images/Books/Literature/KristinaOhlssonTheDisappeared.jpeg" />
    <img src="../Images/Books/Literature/MarianKeyesTheWomanWhoStoleMyLife.jpeg" />
    <img src="../Images/Books/Literature/SylviaDayCaptivatedByYou.jpeg" />

    <h1>Mystery</h1>
    <img src="../Images/Books/Mystery/AWHartoinAGoodManGone.jpeg" />
    <img src="../Images/Books/Mystery/GillianFynnGoneGirl.jpeg" />
    <img src="../Images/Books/Mystery/HarlanCobenTheWoods.jpeg" />
    <img src="../Images/Books/Mystery/KendraElliotVanished.jpeg" />
    <img src="../Images/Books/Mystery/PeterRobinsonTheHangingValley.jpeg" />

    <h1>Religion &amp; Spirituality</h1>
    <img src="../Images/Books/Religion & Spirituality/EckhartTolleThePowerOfNow.jpeg" />
    <img src="../Images/Books/Religion & Spirituality/OprahWinfreyWhatIKnowForSure.jpeg" />
    <img src="../Images/Books/Religion & Spirituality/ReverendRichardColesFathomlessRiches.jpeg" />
    <img src="../Images/Books/Religion & Spirituality/RhondaByrneTheSecret.jpeg" />
    <img src="../Images/Books/Religion & Spirituality/RichardDawkinsTheGodDelusion.jpeg" />

        -->
</asp:Content>

