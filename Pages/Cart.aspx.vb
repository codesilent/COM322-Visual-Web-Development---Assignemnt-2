
Partial Class Page_Shopping
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblSessionFirstName.Text = Session("FirstName")
        lblSessionSurname.Text = Session("Surname")
        lblSessionAddress1.Text = Session("Address1")
        lblSessionAddress2.Text = Session("Address2")
        lblSessionPostcode.Text = Session("Postcode")
        lblSessionCountry.Text = Session("Country")

    End Sub
End Class
