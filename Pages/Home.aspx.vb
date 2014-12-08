
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblWelcome.Text = "Welcome " + Session("UserLogin")

        lblHardback.Text = ViewState("Hardback")

        lblPaperback.Text = ViewState("Paperback")

        lblEbook.Text = ViewState("EBook")

        ViewState("TotalVoteCount") = ViewState("Paperback") + ViewState("Hardback") + ViewState("EBook")

        lblTotalVoteCount.Text = ViewState("TotalVoteCount")

       
    End Sub

    Protected Sub btnVote_Click(sender As Object, e As EventArgs) Handles btnVote.Click

        If chkPaperback.Checked = True Then
            ViewState("Paperback") += 1
            lblPaperback.Text = ViewState("Paperback")
            ViewState("TotalVoteCount") += 1
            lblTotalVoteCount.Text = ViewState("TotalVoteCount")

        ElseIf chkHardback.Checked = True Then
            ViewState("Hardback") += 1
            lblHardback.Text = ViewState("Hardback")
            ViewState("TotalVoteCount") += 1
            lblTotalVoteCount.Text = ViewState("TotalVoteCount")

        ElseIf chkEBook.Checked = True Then
            ViewState("EBook") += 1
            lblEbook.Text = ViewState("EBook")
            ViewState("TotalVoteCount") += 1
            lblTotalVoteCount.Text = ViewState("TotalVoteCount")

        Else
            lblVoteError.Text = "Please select an option to vote!"

        End If

    End Sub
End Class
