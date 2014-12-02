
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblWelcome.Text = "Welcome " + Session("UserLogin")

        ViewState("Hardback") = 0
        lblHardback.Text = ViewState("Hardback")

        ViewState("Paperback") = 0
        lblPaperback.Text = ViewState("Paperback")

        ViewState("EBook") = 0
        lblEbook.Text = ViewState("EBook")

        ViewState("TotalVoteCount") = 0
        lblTotalVoteCount.Text = ViewState("TotalVoteCount")
       
    End Sub

    Protected Sub btnVote_Click(sender As Object, e As EventArgs) Handles btnVote.Click

        Dim voteHardback As Integer = 0
        If chkHardback.Checked = True Then
            voteHardback += 1
            voteHardback = CInt(ViewState("Hardback"))
        End If


        'ElseIf radPaperback.Checked = True Then
        'ViewState("Paperback") += 1
        'ViewState("TotalVoteCount") += 1
        'ElseIf radEbook.Checked = True Then
        'ViewState("EBook") += 1
        'ViewState("TotalVoteCount") += 1
        'Else
        'lblVoteError.Text = "Please select an option to vote"
        'End If

    End Sub
End Class
