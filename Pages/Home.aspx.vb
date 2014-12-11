
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblWelcome.Text = "Welcome " + Session("UserLogin")



    End Sub

    Protected Sub btnVote_Click(sender As Object, e As EventArgs) Handles btnVote.Click

        Page.Validate()
        If Page.IsValid Then

            'Declare variables to store radio button values 
            Dim radPaperback, radHardback, radEBook, radDontmind As Double

            'Declare variable to use for adding votes to the poll with an initial value of 0
            Dim votes As String = 0

            'Assign variables with the values contained in the radio button list
            radPaperback = radBookPoll.Text = "radPaperback"
            radHardback = radBookPoll.Text = "radHardback"
            radEBook = radBookPoll.Text = "radEBook"
            radDontmind = radBookPoll.Text = "radDontmind"

            'If the user has selected to vote for Paperback then..
            If radPaperback Then
                'For each loop using previously declared 'votes' variable allowing 
                'a value of '1' to be added onto the original value of '0'
                For Each vote In votes
                    ViewState("Paperback") += 1
                Next
                'Store the number of votes for Paperback in a viewstate variable 
                'allowing that value to be retained until the user's browser session closes 
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
                'If the user has not selected a radio button they will be presented
                'with an error message 
                lblVoteError.Text = "Please select an option to vote!"

            End If

            'Add the values (total votes) of all possible selections within the poll 
            'and store them in one viewstate variable
            'This new viewstate will be used display the total number of times a user has voted in the poll 
            ViewState("TotalVoteCount") = ViewState("Paperback") + ViewState("Hardback") + ViewState("EBook") + ViewState("DontMind")
            lblTotalVoteCount.Text = ViewState("TotalVoteCount")
        End If

    End Sub
End Class
