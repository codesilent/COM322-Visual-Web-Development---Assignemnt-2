
Partial Class Page_Books
    Inherits System.Web.UI.Page

    'Outputs the correct price for the book type choosen'
    Function findStandardPrice(ByRef intQuantity As Integer, ByRef strDropDownListName As String) As Double

        Dim dblStandardPrice As Double = 0

        If strDropDownListName = 0 Then
            dblStandardPrice = 4.99
        ElseIf strDropDownListName = 1 Then
            dblStandardPrice = 7.99
        Else
            dblStandardPrice = 2.99
        End If

        Return dblStandardPrice

    End Function

    'When user selects a book type display the appropiate price'
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboBookType.SelectedIndexChanged
        lblPrice.Text = findStandardPrice(txtQuantity.Text, cboBookType.SelectedIndex).ToString("n2")
    End Sub

    'When book added to cart, store name, price and quantity & display number of items, subtotal'
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim intBookQuantity As Integer = CInt(txtQuantity.Text)
        Dim dblPrice As Double = CDbl(lblPrice.Text)

        Dim dblSubTotal As Double = intBookQuantity * dblPrice

        Session("intNumItems") += intBookQuantity
        Session("BookCost") += "£" & CStr(dblSubTotal) + "<br/>"
        Session("BookName") += lblBookName.Text + "<br/>"
        Session("UnitPrice") += "£" & CStr(dblPrice) + "<br/>"
        Session("BookQuantity") += CStr(intBookQuantity) + "<br/>"
        Session("SubTotal") += dblSubTotal

        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = "£" & Session("SubTotal")
    End Sub

    'When page loads display the number of items and subtotal in the shopping cart'
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = "£" & Session("SubTotal")

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

    'Book 2'
    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Dim intBookQuantity As Integer = CInt(txtQuantity1.Text)
        Dim dblPrice As Double = CDbl(lblPrice1.Text)

        Dim dblSubTotal As Double = intBookQuantity * dblPrice

        Session("intNumItems") += intBookQuantity
        Session("BookCost") += "£" & CStr(dblSubTotal) + "<br/>"
        Session("BookName") += lblBookName1.Text + "<br/>"
        Session("UnitPrice") += "£" & CStr(dblPrice) + "<br/>"
        Session("BookQuantity") += CStr(intBookQuantity) + "<br/>"
        Session("SubTotal") += dblSubTotal


        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = "£" & Session("SubTotal")
    End Sub

    'Book 2'
    Protected Sub DropDownList1_SelectedIndexChanged1(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        lblPrice1.Text = findStandardPrice(txtQuantity1.Text, DropDownList1.SelectedIndex).ToString("n2")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim intBookQuantity As Integer = CInt(txtQuantity2.Text)
        Dim dblPrice As Double = CDbl(lblPrice1.Text)

        Dim dblSubTotal As Double = intBookQuantity * dblPrice

        Session("intNumItems") += intBookQuantity
        Session("BookCost") += "£" & CStr(dblSubTotal) + "<br/>"
        Session("BookName") += lblBookName1.Text + "<br/>"
        Session("UnitPrice") += "£" & CStr(dblPrice) + "<br/>"
        Session("BookQuantity") += CStr(intBookQuantity) + "<br/>"
        Session("SubTotal") += dblSubTotal


        lblNumItems.Text = Session("intNumItems")
        lblSubtotal.Text = "£" & Session("SubTotal")
    End Sub
End Class
