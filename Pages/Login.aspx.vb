
Partial Class Page_Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim strUserLogin As String = txtUsername.Text
        Dim strUserPass As String = txtPassword.Text

        Dim strDefaultUser As String = "Username"
        Dim strDefaultPass As String = "Password"



        If strUserLogin = strDefaultUser And strUserPass = strDefaultPass Then
            Session("UserLogin") = strUserLogin
            Response.Redirect("Home.aspx")


        ElseIf strUserLogin = Session("Username") And strUserPass = Session("Password2") Then
            Session("UserLogin") = strUserLogin
            Response.Redirect("Home.aspx")

        Else
            lblError.Text = "Have you registered yet?"

        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Login.aspx")

    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click

        Response.Redirect("Register.aspx")

    End Sub
End Class
