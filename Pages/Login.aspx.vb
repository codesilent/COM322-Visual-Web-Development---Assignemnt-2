
Partial Class Page_Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Session("UserLogin") = txtUsername.Text
        Session("UserPass") = txtPassword.Text

        Session("DefaultUsername") = "Username"
        Session("DefaultPassword") = "Password"

        If Session("UserLogin") = Session("Username") And Session("UserPass") = Session("Password2") Then
            Response.Redirect("Home.aspx")

        ElseIf Session("UserLogin") = Session("DefaultUsername") And Session("UserPass") = Session("DefaultPassword") Then
            Response.Redirect("Home.aspx")

        ElseIf Not (Session("UserLogin") = Session("Username")) Then
            lblError.Text = "Have you registered yet?"
        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Login.aspx")

    End Sub
End Class
