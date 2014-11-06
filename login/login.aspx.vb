
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login.Focus()
    End Sub

    Protected Sub Login_LoggedIn(sender As Object, e As EventArgs) Handles Login.LoggedIn
        If Roles.IsUserInRole(Login.UserName, "r_cpetit_Admin") = True Then
            Response.Redirect("~/admin/Default.aspx")
        Else : Response.Redirect("~/Default.aspx")
        End If
    End Sub
End Class
