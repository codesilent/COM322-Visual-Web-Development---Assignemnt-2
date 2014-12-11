
Partial Class Page_Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal Sender As Object, ByVal e As EventArgs) Handles btnRegister.Click

        'Using this the Page.Validate() method instructs any validation controls on the page
        'to validate their assigned information. 
        'It also prevents hackers who may have turned off javascript from bypassing validation. 
        Page.Validate()
        If Page.IsValid Then


            Session("Username") = txtUsername.Text
            Session("Title") = cboTitle.Text
            Session("FirstName") = txtFirstName.Text
            Session("Surname") = txtSurname.Text
            Session("Address1") = txtAddress1.Text
            Session("Address2") = txtAddress2.Text
            Session("CityTown") = txtCityTown.Text
            Session("Country") = txtCountry.Text
            Session("Postcode") = txtPostCode.Text
            Session("TelephoneNum") = txtTelNum.Text
            Session("Email") = txtEmail.Text
            Session("Password1") = txtPassword1.Text
            Session("Password2") = txtPassword2.Text

            lblRegisterSuccesful.Text = "You have succesfully registered, you will be redirected in 5 seconds"
            Response.AppendHeader("Refresh", "5;url=Login.aspx")
        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Me.Server.Transfer("Register.aspx")

    End Sub

End Class
