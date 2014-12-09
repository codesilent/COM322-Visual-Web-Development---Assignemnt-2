
Partial Class Page_Shopping
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblItem1Name.Text = CStr(Session("BookName"))
        lblItem1Price.Text = CStr(Session("Price"))
        lblItem1Quantity.Text = CStr(Session("intNumItems"))
        lblItem1Cost.Text = CStr(Session("dblSubTotal"))

        lblSessionFirstName.Text = Session("FirstName")
        lblSessionSurname.Text = Session("Surname")
        lblSessionAddress1.Text = Session("Address1")
        lblSessionCityTown.Text = Session("Address2")
        lblSessionCityTown.Text = Session("CityTown")
        lblSessionPostcode.Text = Session("Postcode")
        lblSessionCountry.Text = Session("Country")

    End Sub


    Protected Sub btnChangeAddress_Click(sender As Object, e As EventArgs) Handles btnChangeAddress.Click

        Response.Redirect("Cart.aspx")

        lblItem1Name.Text = CStr(Session("BookName"))
        lblItem1Price.Text = CStr(Session("Price"))
        lblItem1Quantity.Text = CStr(Session("intNumItems"))
        lblItem1Cost.Text = CStr(Session("dblSubTotal"))

        If (txtFirstName.Visible = False) Then
            txtFirstName.Visible = True
        End If
        txtSurname.Visible = True
        txtAddress1.Visible = True
        txtCityTown.Visible = True
        txtPostcode.Visible = True
        txtCountry.Visible = True

    End Sub
End Class
