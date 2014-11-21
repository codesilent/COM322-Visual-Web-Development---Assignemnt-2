
Partial Class Page_Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim UsernameText, Username, PasswordText, Password As String

        UsernameText = txtUsername.Text
        PasswordText = txtPassword.Text

        Username = "Username"
        Password = "Password"

        If UsernameText = Username And PasswordText = Password Then
            Response.Redirect("Home.aspx")
        ElseIf UsernameText = Session("Username") And PasswordText = Session("Password2") Then
            Response.Redirect("Home.aspx")
        Else
            lblError.Text = "Please enter a valid username and password!"
            txtUsername.Text = ""
            txtPassword.Text = ""
            txtUsername.Focus()
        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Login.aspx")

    End Sub
End Class
