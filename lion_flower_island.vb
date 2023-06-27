Public Class RoadToRecovery
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Check if the page is being loaded for the first time
        If Not IsPostBack Then
            'Populate the dropdown
            dropDown.Items.Add("Choose an Option")
            dropDown.Items.Add("Skip")
            dropDown.Items.Add("Let it Go")
            dropDown.Items.Add("Pick Yourself Up")
            dropDown.Items.Add("Reach Out")
        End If
    End Sub

    Protected Sub dropDown_SelectedIndexChanged(sender As Object, e As EventArgs)
        'Check which option was selected
        If dropDown.SelectedValue = "Skip" Then
            lblResults.Text = "Sometimes it's okay to take a break. Sometimes a break from a situation can help you gain clarity and perspective."
        ElseIf dropDown.SelectedValue = "Let it Go" Then
            lblResults.Text = "Letting go of what can't be controlled can be a powerful tool in your recovery process."
        ElseIf dropDown.SelectedValue = "Pick Yourself Up" Then
            lblResults.Text = "No matter how tough life gets, you can get back up and keep going. Take pride in your persistence and strength!"
        ElseIf dropDown.SelectedValue = "Reach Out" Then
            lblResults.Text = "Having someone to talk to can be incredibly helpful when going through a tough time. Make sure you take the time to connect with someone who can provide a listening ear and support."
        End If
    End Sub
End Class