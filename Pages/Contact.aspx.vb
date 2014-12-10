
Partial Class Page_Contact
    Inherits System.Web.UI.Page

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Contact.aspx")

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        lblInquirySuccess.Text = "You have successfully submitted your feedback/inquiry." + "<br>" + "Please allow 48 hours for us to respond accordingly" + "<br>" + "Thank you for visiting McNeilly Reids Books"
        imgGreenTick.Visible = True

    End Sub
End Class
