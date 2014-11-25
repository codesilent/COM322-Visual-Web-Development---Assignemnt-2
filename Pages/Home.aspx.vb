
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("UserLogin") = Session("Username") Then
            lblWelcome.Text = "Welcome " + Session("UserLogin")
        Else
            Response.Redirect("Login.aspx")
        End If



    End Sub
End Class
