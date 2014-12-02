
Partial Class Test
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'If IsNothing(Session("Username")) Then
        'HyperLinkLogin.Visible = True
        'Else
        'lblWelcome.Text = ("Welcome " + Session("Username") + Session("UserLogin"))
        'btnLogout.Visible = True
        'End If


    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click

        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub
End Class

