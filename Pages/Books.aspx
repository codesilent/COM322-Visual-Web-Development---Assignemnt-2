<%@ Page Title="" Language="VB" MasterPageFile="../Master/index.master" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Page_Books" %>

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
            margin-left: 20px;
        }

        /* Container with a width for each book (image, title, summary and button)*/
        .bookContainer {
            width: 720px;
        }

        /* Container for the shopping cart (title, image, num of items, subtotal, check & empty cart buttons)*/
        #cart {
            width: 300px;
            height: 350px;
            float: right;
            text-align: center;
        }

        /* centers and resizes shopping cart image*/
        .cartImage {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 120px;
        }

    </style>

    <div id="cart">
        <h2>Shopping Cart</h2>
        <img class="cartImage" src="../Images/ShoppingCart.png"/>
        <p>Number of Items:</p>
        <p>Subtotal:</p>
        <asp:Button ID="Button6" runat="server" Text="Go To Checkout"/><br /><br />
        <asp:Button ID="Button7" runat="server" Text="Empty Cart" />
    </div>

    <h1>Biographies</h1>

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books%20/Biographies/AlexFergusonMyAutobiography.jpeg" />
        <div class="bookContent">
            <h4>Alex Ferguson My Autobiography By Alex Ferguson</h4>
            <p>The celebratory, revealing, inspiring and entertaining autobiography of the greatest manager in the history of British football.</p>
            <p>My Goodness, this is fascinating. (Evening Standard) <br /> His book is really a piece of oral history, and his life is a conduit to a time when a working-class man of talent could, not by the magical alchemy of elite education or the stardust of celebrity, but by a lifetime of hard work and hard thinking, rise to the very top and, flaws aside, remain true to the best of the world he came from. (The Guardian)</p>
            <asp:Label ID="Label3" runat="server" Text="Price £1.00"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Type: "></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#000066">
                <asp:ListItem>Paperback</asp:ListItem>
                <asp:ListItem>Hardback</asp:ListItem>
                <asp:ListItem>E-Book</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Quantity:" Width="57px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="40px" Text="1"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
        </div>
    </div><br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books%20/Biographies/JohnCleeseSoAnyway.jpeg" />
        <h4 class="bookContent">So, Anyway... The Autobiography By John Cleese</h4>
        <p class="bookContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin orci vel cursus lobortis. Morbi commodo turpis vitae leo tristique sodales. Aliquam at auctor metus. Suspendisse a lobortis massa. Duis dignissim lorem non nibh cursus lobortis. Aenean varius vulputate risus, a lacinia justo gravida sit amet. Cras cursus nunc eu sem ultrices ullamcorper. Proin eu lorem eget tellus porta tincidunt nec nec lorem. Donec condimentum a quam ut ultrices. Nulla quis urna interdum turpis elementum ultricies a sed sem. Donec fermentum sed nulla vel faucibus. </p>
        <asp:Button ID="Button2" class="bookContent" runat="server" Text="Add To Cart" />
    </div><br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books%20/Biographies/KevinBridgesWeNeedToTalkAbout.jpeg" />
        <h4 class="bookContent">We Need To Talk About...Kevin Bridges By Kevin Bridges</h4>
        <p class="bookContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin orci vel cursus lobortis. Morbi commodo turpis vitae leo tristique sodales. Aliquam at auctor metus. Suspendisse a lobortis massa. Duis dignissim lorem non nibh cursus lobortis. Aenean varius vulputate risus, a lacinia justo gravida sit amet. Cras cursus nunc eu sem ultrices ullamcorper. Proin eu lorem eget tellus porta tincidunt nec nec lorem. Donec condimentum a quam ut ultrices. Nulla quis urna interdum turpis elementum ultricies a sed sem. Donec fermentum sed nulla vel faucibus. </p>
        <asp:Button ID="Button3" class="bookContent" runat="server" Text="Add To Cart" />
    </div><br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books%20/Biographies/RobBrydonSmallManInABook.jpeg" />
        <h4 class="bookContent">Small Man In A Book By Rob Brydon</h4>
        <p class="bookContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin orci vel cursus lobortis. Morbi commodo turpis vitae leo tristique sodales. Aliquam at auctor metus. Suspendisse a lobortis massa. Duis dignissim lorem non nibh cursus lobortis. Aenean varius vulputate risus, a lacinia justo gravida sit amet. Cras cursus nunc eu sem ultrices ullamcorper. Proin eu lorem eget tellus porta tincidunt nec nec lorem. Donec condimentum a quam ut ultrices. Nulla quis urna interdum turpis elementum ultricies a sed sem. Donec fermentum sed nulla vel faucibus. </p>
        <asp:Button ID="Button4" class="bookContent" runat="server" Text="Add To Cart" />
    </div><br />

    <div class="bookContainer">
        <img class="bookImage" src="../Images/Books%20/Biographies/StephenFryMoreFoolMe.jpeg" />
        <h4 class="bookContent">More Fool Me By Stephen Fry</h4>
        <p class="bookContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin orci vel cursus lobortis. Morbi commodo turpis vitae leo tristique sodales. Aliquam at auctor metus. Suspendisse a lobortis massa. Duis dignissim lorem non nibh cursus lobortis. Aenean varius vulputate risus, a lacinia justo gravida sit amet. Cras cursus nunc eu sem ultrices ullamcorper. Proin eu lorem eget tellus porta tincidunt nec nec lorem. Donec condimentum a quam ut ultrices. Nulla quis urna interdum turpis elementum ultricies a sed sem. Donec fermentum sed nulla vel faucibus. </p>
        <asp:Button ID="Button5" class="bookContent" runat="server" Text="Add To Cart" />
    </div><br />

    <h1>Children's Books</h1>
    <img src="../Images/Books%20/Childrens%20Books/BeanoAnnual2015.jpeg" />
    <img src="../Images/Books%20/Childrens%20Books/JeffKinneyTheLongHaul.jpeg" />
    <img src="../Images/Books%20/Childrens%20Books/LaurenChildFeelTheFear.jpeg" />
    <img src="../Images/Books%20/Childrens%20Books/MichaelBondLoveFromPaddington.jpeg" />
    <img src="../Images/Books%20/Childrens%20Books/NatalieRussellRabbitsInTheSnow.jpeg" />

    <h1>Computing  &amp; Internet</h1>
    <img src="../Images/Books%20/Computing/AndrewHodgesAlanTuringTheEnigma.jpeg" />
    <img src="../Images/Books%20/Computing/DaveGormanTooMuchInformation.jpeg" />
    <img src="../Images/Books%20/Computing/JonDuckettJavaScript&JQuery.jpeg" />
    <img src="../Images/Books%20/Computing/SeanMcManusRaspberryPiForDummies.jpeg" />
    <img src="../Images/Books%20/Computing/WalterIssacsonTheInnovators.jpeg" />

    <h1>Food &amp; Drink</h1>
    <img src="../Images/Books%20/Food%20&%20Drink/HughFearnleyWhittingstallRiverCottageLightAndEasy.jpeg" />
    <img src="../Images/Books%20/Food%20&%20Drink/JamieOliverJamiesComfortFood.jpeg" />
    <img src="../Images/Books%20/Food%20&%20Drink/JamiesMartinHomeComforts.jpeg" />
    <img src="../Images/Books%20/Food%20&%20Drink/TomKerridgeBestEverDishes.jpeg" />
    <img src="../Images/Books%20/Food%20&%20Drink/YotamOttolenghiPlentyMore.jpeg" />

    <h1>History</h1>
    <img src="../Images/Books%20/History/AlanJohnsonPleaseMisterPostman.jpeg" />
    <img src="../Images/Books%20/History/AndrewRobertsNapoleonTheGreat.jpeg" />
    <img src="../Images/Books%20/History/BorisJohnsonTheChurchillFactor.jpeg" />
    <img src="../Images/Books%20/History/DavidMcCandlessKnowledgeIsBeautiful.jpeg" />
    <img src="../Images/Books%20/History/PeterAckroydCivilWarTheHistoryOfEngland.jpeg" />
    <img src="../Images/Books%20/History/YuvalNoahHarariSapiensABriefHistoryOfHumankind.jpeg" />

    <h1>Home &amp; Garden</h1>
    <img src="../Images/Books%20/Home%20&%20Garden/AlanBuckinghamAllotmentMonthByMonth.jpeg" />
    <img src="../Images/Books%20/Home%20&%20Garden/AlanTitchmarshTheQueensHouses.jpeg" />
    <img src="../Images/Books%20/Home%20&%20Garden/CathKidstonSewingBook.jpeg" />
    <img src="../Images/Books%20/Home%20&%20Garden/DebbieShoreHalfYardHome.jpeg" />
    <img src="../Images/Books%20/Home%20&%20Garden/RichardMabeyFoodForFree.jpeg" />

    <h1>Horror</h1>
    <img src="../Images/Books%20/Horror/AdamNevillNoOneGetsOut.jpeg" />
    <img src="../Images/Books%20/Horror/AprylBakerTheGhostFiles.jpeg" />
    <img src="../Images/Books%20/Horror/JoeHillHorns.jpeg" />
    <img src="../Images/Books%20/Horror/SibelHodgeLookBehindYou.jpeg" />
    <img src="../Images/Books%20/Horror/StephenKingRevival.jpeg" />

    <h1>Literature</h1>
    <img src="../Images/Books%20/Literature/DaniAtkinsTheStoryOfUs.jpeg" />
    <img src="../Images/Books%20/Literature/JodiPicoultLeavingTime.jpeg" />
    <img src="../Images/Books%20/Literature/KristinaOhlssonTheDisappeared.jpeg" />
    <img src="../Images/Books%20/Literature/MarianKeyesTheWomanWhoStoleMyLife.jpeg" />
    <img src="../Images/Books%20/Literature/SylviaDayCaptivatedByYou.jpeg" />

    <h1>Mystery</h1>
    <img src="../Images/Books%20/Mystery/AWHartoinAGoodManGone.jpeg" />
    <img src="../Images/Books%20/Mystery/GillianFynnGoneGirl.jpeg" />
    <img src="../Images/Books%20/Mystery/HarlanCobenTheWoods.jpeg" />
    <img src="../Images/Books%20/Mystery/KendraElliotVanished.jpeg" />
    <img src="../Images/Books%20/Mystery/PeterRobinsonTheHangingValley.jpeg" />

    <h1>Religion &amp; Spirituality</h1>
    <img src="../Images/Books%20/Religion%20&%20Spirituality/EckhartTolleThePowerOfNow.jpeg" />
    <img src="../Images/Books%20/Religion%20&%20Spirituality/OprahWinfreyWhatIKnowForSure.jpeg" />
    <img src="../Images/Books%20/Religion%20&%20Spirituality/ReverendRichardColesFathomlessRiches.jpeg" />
    <img src="../Images/Books%20/Religion%20&%20Spirituality/RhondaByrneTheSecret.jpeg" />
    <img src="../Images/Books%20/Religion%20&%20Spirituality/RichardDawkinsTheGodDelusion.jpeg" />
</asp:Content>

