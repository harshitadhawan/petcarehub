Partial Class Default2
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' Redirect to ps.aspx
        Response.Redirect("ps.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ' Redirect to grooming.aspx
        Response.Redirect("grooming.aspx")
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        ' Redirect to ps.aspx
        Response.Redirect("login.aspx")

    End Sub

End Class
