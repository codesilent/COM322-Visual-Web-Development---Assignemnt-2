﻿
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strInput = txtInput.Text
        lblOutput.Text = strInput
    End Sub
End Class