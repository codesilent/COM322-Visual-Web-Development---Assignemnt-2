
Partial Class Page_Books
    Inherits System.Web.UI.Page
    Function findStandardPrice() As Double

        Dim dblStandardPrice As Double = 0
        Dim intQuantity As Integer = CInt(txtQuantity.Text)


        If cboBookType.SelectedIndex = 0 Then
            dblStandardPrice = 4.99
        ElseIf cboBookType.SelectedIndex = 1 Then
            dblStandardPrice = 7.99
        Else
            dblStandardPrice = 2.99
        End If

        Return dblStandardPrice

    End Function

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboBookType.SelectedIndexChanged
        lblPrice.Text = findStandardPrice().ToString("n2")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim intQuantity As Integer = CInt(txtQuantity.Text)
        Dim dblPrice As Double = CDbl(lblPrice.Text)

        Dim dblSubTotal As Double = intQuantity * dblPrice

        Session("intNumItems") += intQuantity
        Session("dblSubTotal") += dblSubTotal
        Session("BookName") = lblBookName.Text
        Session("Price") = lblPrice.Text
        Session("Quantity") = intQuantity

        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = Session("dblSubTotal")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = Session("dblSubTotal")

    End Sub

    Protected Sub btnCheckout_Click(sender As Object, e As EventArgs) Handles btnCheckout.Click

        If Session("intNumItems") >= 1 Then
            Response.Redirect("Cart.aspx")
        Else
            lblCartError.Text = "You must have at least 1 item added to the cart before proceeding!"
        End If

    End Sub

    Protected Sub btnEmptyCart_Click(sender As Object, e As EventArgs) Handles btnEmptyCart.Click
        Session.Clear()
    End Sub
End Class
