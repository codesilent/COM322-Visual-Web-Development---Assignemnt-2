
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("UserLogin") <> "" And Session("UserPass") <> "" Then

        End If

        lblWelcome.Text = "Welcome " + Session("UserLogin")



    End Sub

    Protected Sub btnVote_Click(sender As Object, e As EventArgs) Handles btnVote.Click

        Dim radPaperback, radHardback, radEBook, radDontmind As Double
        Dim votes As String = 0

        radPaperback = radBookPoll.Text = "radPaperback"
        radHardback = radBookPoll.Text = "radHardback"
        radEBook = radBookPoll.Text = "radEBook"
        radDontmind = radBookPoll.Text = "radDontmind"

        If radPaperback Then
            For Each vote In votes
                ViewState("Paperback") += 1
            Next
            lblPaperback.Text = ViewState("Paperback")

        ElseIf radHardback Then
            For Each vote In votes
                ViewState("Hardback") += 1
            Next
            lblHardback.Text = ViewState("Hardback")

        ElseIf radEBook Then
            For Each vote In votes
                ViewState("EBook") += 1
            Next
            lblEbook.Text = ViewState("EBook")

        ElseIf radDontmind Then
            For Each vote In votes
                ViewState("DontMind") += 1
            Next
            lblDontMind.Text = ViewState("DontMind")

        Else
            lblVoteError.Text = "Please select an option to vote!"

        End If

        ViewState("TotalVoteCount") = ViewState("Paperback") + ViewState("Hardback") + ViewState("EBook") + ViewState("DontMind")
        lblTotalVoteCount.Text = ViewState("TotalVoteCount")

    End Sub
End Class
