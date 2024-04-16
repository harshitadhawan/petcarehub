Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub LButton1_Click(sender As Object, e As EventArgs) Handles LButton1.Click
        Login1.Visible = True
        CreateUserWizard1.Visible = False
        LButton1.Visible = False
    End Sub

    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs)
    End Sub
End Class
