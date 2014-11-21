
Partial Class Page_Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal Sender As Object, ByVal e As EventArgs) Handles btnRegister.Click

        Session("Username") = txtUsername.Text
        Session("Title") = cboTitle.Text
        Session("FirstName") = txtFirstName.Text
        Session("Surname") = txtSurname.Text
        Session("Address1") = txtAddress1.Text
        Session("Address2") = txtAddress2.Text
        Session("Country") = txtCountry.Text
        Session("Postcode") = txtPostCode.Text
        Session("TelephoneNum") = txtTelNum.Text
        Session("Email") = txtEmail.Text
        Session("Password1") = txtPassword1.Text
        Session("Password2") = txtPassword2.Text



        'Validate password
        'Dim PasswordPattern As String = "^.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$"
        'If txtPassword1.Text.Trim <> "" Then

        'If Not Regex.IsMatch(txtPassword1.Text, PasswordPattern) Then
        'ValidationSummary1.HeaderText = "Passwords must be valid and match"

        '       ElseIf txtPassword2.Text.Trim <> "" Then

        'If Not Regex.IsMatch(txtPassword2.Text, PasswordPattern) Then
        'ValidationSummary1.HeaderText = "Passwords must be valid and match"
        'End If

        'End If
        'End If


        Response.AddHeader("REFRESH", "5;URL=Login.aspx")
    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Register.aspx")

    End Sub
End Class
