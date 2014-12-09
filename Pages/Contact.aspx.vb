
Partial Class Page_Contact
    Inherits System.Web.UI.Page

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Contact.aspx")

    End Sub
End Class
