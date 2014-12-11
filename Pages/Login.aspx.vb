
Partial Class Page_Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Page.Validate()
        If Page.IsValid Then

            'Declare variables for storing the user's credentials
            Dim strUserLogin As String = txtUsername.Text
            Dim strUserPass As String = txtPassword.Text

            'Declare variables for storing the site's hardcoded credentials 
            'The default username will be "Username"
            'The default password will be "Password"
            Dim strDefaultUser As String = "Username"
            Dim strDefaultPass As String = "Password"


            'Check that the username and password the visitor has entered is equal
            'to the hardcoded. If it is then the user is redirected to the home page.
            If strUserLogin = strDefaultUser And strUserPass = strDefaultPass Then
                Session("UserLogin") = strUserLogin
                Response.Redirect("Home.aspx")

                'Else, if the username and password entered is equal to the username and password the visitor registered
                'with then they will also be redirected to the home page. 
                'If the user logs in successfully, whatever username they entered will be stored in a session variable
                'allowing the username to be recalled throughout the site.
            ElseIf strUserLogin = Session("Username") And strUserPass = Session("Password2") Then
                Session("UserLogin") = strUserLogin
                Response.Redirect("Home.aspx")

            Else
                'If what the user has entered is not equal to the hardcoded/registered username and password
                'there will be an error message displayed. 
                lblError.Text = "Have you registered yet?"

            End If
        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        'If a user wishes to clear all fields on the page they can click this button 
        'which will cause the page to reset. 
        Me.Server.Transfer("Login.aspx")

    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click

        'If a user wishes to log in but does not yet have an account they can click
        'this button which will redirect them to the registration page. 
        Response.Redirect("Register.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" And Session("UserLogin") = "" Then
            lblNotLoggedIn.Text = Session("NotLoggedIn")
        Else
            lblNotLoggedIn.Text = ""

        End If
    End Sub
End Class
