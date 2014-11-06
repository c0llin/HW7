
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        ' Declare variable
        Dim searchString As String

        searchString = "SELECT * from cpetit_hw7 where (name Like '%" + tbSearch.Text.ToString() + "%')"

        Sqlhw7.SelectCommand = searchString
    End Sub
End Class
