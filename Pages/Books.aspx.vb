
Partial Class Page_Books
    Inherits System.Web.UI.Page

    Function findStandardPrice() As Double

        Dim dblStandardPrice As Double = 0
        Dim intQuantity As Integer = CInt(txtQuantity.Text)


        If DropDownList1.SelectedIndex = 0 Then
            dblStandardPrice = 5.0
        ElseIf DropDownList1.SelectedIndex = 1 Then
            dblStandardPrice = 8.0
        Else
            dblStandardPrice = 3.0
        End If

        Return dblStandardPrice

    End Function

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        lblPrice.Text = findStandardPrice()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Session("intNumItems") += 1

        lblNumItems.Text = Session("intNumItems")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblNumItems.Text = Session("intNumItems")

    End Sub

    Protected Sub btnCheckout_Click(sender As Object, e As EventArgs) Handles btnCheckout.Click

        If Session("intNumItems") > 1 Then
            Response.Redirect("Cart.aspx")
        Else
            lblCartError.Text = "You must have atleast 1 item added to the cart before proceeding!"
        End If

    End Sub
End Class
