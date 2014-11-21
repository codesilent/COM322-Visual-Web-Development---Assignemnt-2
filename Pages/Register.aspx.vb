
Partial Class Page_Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal Sender As Object, ByVal e As EventArgs) Handles btnRegister.Click

        Dim PasswordPattern As String = "^.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$"
        If txtPassword1.Text.Trim <> "" Then

            If Not Regex.IsMatch(txtPassword1.Text, PasswordPattern) Then
                ValidationSummary1.HeaderText = "Passwords must be valid and match"

            ElseIf txtPassword2.Text.Trim <> "" Then

                If Not Regex.IsMatch(txtPassword2.Text, PasswordPattern) Then
                    ValidationSummary1.HeaderText = "Passwords must be valid and match"
                End If

            End If
        End If
    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Register.aspx")

    End Sub
End Class
