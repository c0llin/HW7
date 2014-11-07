
Partial Class apple
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblDate.Text = Date.Now()
    End Sub
End Class

