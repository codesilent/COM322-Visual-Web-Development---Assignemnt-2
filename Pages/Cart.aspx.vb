
Partial Class Page_Shopping
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblItem1Name.Text = CStr(Session("BookName"))
        lblItem1Price.Text = CStr(Session("Price"))
        lblItem1Quantity.Text = CStr(Session("intNumItems"))
        lblItem1Cost.Text = CStr(Session("dblSubTotal"))

        txtFirstName.Text = Session("FirstName")
        txtSurname.Text = Session("Surname")
        txtAddress1.Text = Session("Address1")
        txtCityTown.Text = Session("CityTown")
        txtPostcode.Text = Session("Postcode")
        txtCountry.Text = Session("Country")

    End Sub


    'Protected Sub btnChangeAddress_Click(sender As Object, e As EventArgs) Handles btnChangeAddress.Click

    'Response.Redirect("Cart.aspx")

    'lblItem1Name.Text = CStr(Session("BookName"))
    'lblItem1Price.Text = CStr(Session("Price"))
    'lblItem1Quantity.Text = CStr(Session("intNumItems"))
    'lblItem1Cost.Text = CStr(Session("dblSubTotal"))

    ' If (txtFirstName.Visible = False) Then
    'txtFirstName.Visible = True
    ' End If
    'txtSurname.Visible = True
    ' txtAddress1.Visible = True
    ' txtCityTown.Visible = True
    ' txtPostcode.Visible = True
    ' txtCountry.Visible = True

    'End Sub

    Protected Sub btnResetDetails_Click(sender As Object, e As EventArgs) Handles btnResetDetails.Click

        txtFirstName.Text = ""
        txtSurname.Text = ""
        txtAddress1.Text = ""
        txtCityTown.Text = ""
        txtPostcode.Text = ""
        txtCountry.Text = ""


    End Sub

    Protected Sub btnConfirmAddress_Click(sender As Object, e As EventArgs) Handles btnConfirmAddress.Click

        lblDeliveryConfirmed.Text = "You have successfully placed your order!" + "<br>" + "Please allow up to 3-5 working days for your order to be delivered."

        'http://www.clker.com/cliparts/8/8/0/6/11954451881968599805jean_victor_balin_green_tick.svg.hi.png

        imgGreenTick.Visible = True


    End Sub
End Class
