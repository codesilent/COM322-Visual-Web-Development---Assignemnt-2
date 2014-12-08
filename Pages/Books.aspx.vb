
Partial Class Page_Books
    Inherits System.Web.UI.Page
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> FETCH_HEAD
=======

>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD
    Function findStandardPrice() As Double

        Dim dblStandardPrice As Double = 0
        Dim intQuantity As Integer = CInt(txtQuantity.Text)


<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> FETCH_HEAD
        If cboBookType.SelectedIndex = 0 Then
            dblStandardPrice = 4.99
        ElseIf cboBookType.SelectedIndex = 1 Then
            dblStandardPrice = 7.99
<<<<<<< HEAD
=======
=======
=======
>>>>>>> FETCH_HEAD
        If DropDownList1.SelectedIndex = 0 Then
            dblStandardPrice = 5.0
        ElseIf DropDownList1.SelectedIndex = 1 Then
            dblStandardPrice = 8.0
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD
        Else
            dblStandardPrice = 2.99
        End If

        Return dblStandardPrice

    End Function

<<<<<<< HEAD
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboBookType.SelectedIndexChanged
        lblPrice.Text = findStandardPrice().ToString("n2")
=======
<<<<<<< HEAD
<<<<<<< HEAD
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboBookType.SelectedIndexChanged
        lblPrice.Text = findStandardPrice().ToString("n2")
=======
=======
>>>>>>> FETCH_HEAD
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        lblPrice.Text = findStandardPrice()
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD
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
<<<<<<< HEAD
        lblSubtotal.Text = Session("dblSubTotal")
=======
<<<<<<< HEAD
<<<<<<< HEAD
        lblSubtotal.Text = Session("dblSubTotal")
=======

>>>>>>> FETCH_HEAD
=======

>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblNumItems.Text = Session("intNumItems")
<<<<<<< HEAD
        lblSubtotal.Text = Session("dblSubTotal")
=======
<<<<<<< HEAD
<<<<<<< HEAD
        lblSubtotal.Text = Session("dblSubTotal")
=======
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD

    End Sub

    Protected Sub btnCheckout_Click(sender As Object, e As EventArgs) Handles btnCheckout.Click

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> FETCH_HEAD
        If Session("intNumItems") >= 1 Then
            Response.Redirect("Cart.aspx")
        Else
            lblCartError.Text = "You must have at least 1 item added to the cart before proceeding!"
        End If

    End Sub
<<<<<<< HEAD
=======
=======

    End Sub

    Protected Sub btnCheckout_Click(sender As Object, e As EventArgs) Handles btnCheckout.Click

=======
>>>>>>> FETCH_HEAD
        If Session("intNumItems") > 1 Then
            Response.Redirect("Cart.aspx")
        Else
            lblCartError.Text = "You must have atleast 1 item added to the cart before proceeding!"
        End If
<<<<<<< HEAD
>>>>>>> FETCH_HEAD
=======
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD

    Protected Sub btnEmptyCart_Click(sender As Object, e As EventArgs) Handles btnEmptyCart.Click
        Session.Clear()
    End Sub
End Class
