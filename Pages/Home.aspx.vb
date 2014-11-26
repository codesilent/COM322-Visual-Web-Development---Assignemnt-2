
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        lblWelcome.Text = "Welcome " + Session("UserLogin")
       



    End Sub
End Class
