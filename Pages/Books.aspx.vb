
Partial Class Page_Books
    Inherits System.Web.UI.Page

    Function assignValues(ByRef bookNumber As Integer) As String
        Dim variableName As String = "intQuantity" + CStr(bookNumber)

        Return variableName

    End Function

    'Outputs the correct price for the book type choosen'
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

    'When user selects a book type display the appropiate price'
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboBookType.SelectedIndexChanged
        lblPrice.Text = findStandardPrice().ToString("n2")
    End Sub

    'When book added to cart, store name, price and quantity & display number of items, subtotal'
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

    'When page loads display the number of items and subtotal in the shopping cart'
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = Session("dblSubTotal")

    End Sub

    'If user has a valid amount of items in shopping cart redirect them to shopping cart page to check out'
    Protected Sub btnCheckout_Click(sender As Object, e As EventArgs) Handles btnCheckout.Click

        If Session("intNumItems") >= 1 Then
            Response.Redirect("Cart.aspx")
        Else
            lblCartError.Text = "You must have at least 1 item added to the cart before proceeding!"
        End If

    End Sub

    'Empty shopping cart'
    Protected Sub btnEmptyCart_Click(sender As Object, e As EventArgs) Handles btnEmptyCart.Click
        Session.Clear()
    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        lblNumItems.Text = assignValues(2)
    End Sub
End Class
