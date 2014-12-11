<<<<<<< HEAD
﻿
Partial Class Page_Shopping
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("Username") = "" And Session("UserLogin") = "" Then
            Session("NotLoggedIn") = "Please login or register before attempting to view the shopping cart"
            Response.Redirect("Login.aspx")
        Else
            lblItem1Name.Text = CStr(Session("BookName"))
            lblItem1Price.Text = CStr(Session("UnitPrice"))
            lblItem1Quantity.Text = CStr(Session("BookQuantity"))
            lblItem1Cost.Text = CStr(Session("BookCost"))
            lblSubTotal.Text = "£" & CStr(Session("SubTotal"))


            txtFirstName.Text = Session("FirstName")
            txtSurname.Text = Session("Surname")
            txtAddress1.Text = Session("Address1")
            txtCityTown.Text = Session("CityTown")
            txtPostcode.Text = Session("Postcode")
            txtCountry.Text = Session("Country")

        End If

        

    End Sub

    Protected Sub btnResetDetails_Click(sender As Object, e As EventArgs) Handles btnResetDetails.Click

        txtFirstName.Text = ""
        txtSurname.Text = ""
        txtAddress1.Text = ""
        txtCityTown.Text = ""
        txtPostcode.Text = ""
        txtCountry.Text = ""


    End Sub

    Protected Sub btnConfirmAddress_Click(sender As Object, e As EventArgs) Handles btnConfirmAddress.Click

        lblDeliveryConfirmed.Text = "You have successfully placed your order!" + "<br>" + "Please allow up to 3-5 working days for your order to be delivered."

        'http://www.clker.com/cliparts/8/8/0/6/11954451881968599805jean_victor_balin_green_tick.svg.hi.png

        imgGreenTick.Visible = True


    End Sub
End Class
=======
﻿
Partial Class Page_Shopping
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("Username") = "" And Session("UserLogin") = "" Then
            Session("NotLoggedIn") = "Please login or register before attempting to view the shopping cart"
            Response.Redirect("Login.aspx")
        Else
            lblItem1Name.Text = CStr(Session("BookName"))
            lblItem1Price.Text = CStr(Session("UnitPrice"))
            lblItem1Quantity.Text = CStr(Session("BookQuantity"))
            lblItem1Cost.Text = CStr(Session("BookCost"))
            lblSubTotal.Text = "£" & CStr(Session("SubTotal"))


            txtFirstName.Text = Session("FirstName")
            txtSurname.Text = Session("Surname")
            txtAddress1.Text = Session("Address1")
            txtCityTown.Text = Session("CityTown")
            txtPostcode.Text = Session("Postcode")
            txtCountry.Text = Session("Country")

        End If




    End Sub

    Protected Sub btnResetDetails_Click(sender As Object, e As EventArgs) Handles btnResetDetails.Click

        txtFirstName.Text = ""
        txtSurname.Text = ""
        txtAddress1.Text = ""
        txtCityTown.Text = ""
        txtPostcode.Text = ""
        txtCountry.Text = ""


    End Sub

    Protected Sub btnConfirmAddress_Click(sender As Object, e As EventArgs) Handles btnConfirmAddress.Click

        'Using this the Page.Validate() method instructs any validation controls on the page
        'to validate their assigned information. 
        'It also prevents hackers who may have turned off javascript from bypassing validation.

        Page.Validate()
        If Page.IsValid Then
            lblDeliveryConfirmed.Text = "You have successfully placed your order!" + "<br>" + "Please allow up to 3-5 working days for your order to be delivered."

            'http://www.clker.com/cliparts/8/8/0/6/11954451881968599805jean_victor_balin_green_tick.svg.hi.png

            imgGreenTick.Visible = True
        End If


    End Sub

    Protected Sub btnBackBooks_Click(sender As Object, e As EventArgs) Handles btnBackBooks.Click

        Response.Redirect("Books.aspx")

    End Sub
End Class
>>>>>>> FETCH_HEAD
