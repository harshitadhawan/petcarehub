Imports System.IO
Imports System.Data
Imports System.Drawing

Partial Class Grooming
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Image1.Visible = False
        Label1.Visible = False
        ImageButton1.Visible = False
        ImageButton2.Visible = False
        ImageButton3.Visible = False
        ImageButton4.Visible = False
        ImageButton5.Visible = False
        ImageButton6.Visible = False


        Label2.Visible = True
        Panel2.Style.Add("top", "80px")
        Me.Page.Header.Style.Add("background-color", "#64797A")

        Dim script As String = "<script type='text/javascript'>" &
                                "document.body.style.backgroundColor = '#FFFFFF';" &
                                "</script>"
        ClientScript.RegisterStartupScript(Me.GetType(), "ChangeBackgroundColor", script)

        Using reader As New StreamReader(Server.MapPath("delhigroomers.csv"))
            While Not reader.EndOfStream
                Dim line As String = reader.ReadLine()
                Dim values As String() = line.Split(","c)

                Dim productCard As New StringBuilder()
                productCard.AppendLine("<div class=""product-card"">")
                productCard.AppendLine("<div class=""product-image"">")
                productCard.AppendLine("<img src=""" & values(9) & """ alt=""Product Image"" />")
                productCard.AppendLine("</div>")
                productCard.AppendLine("<div class=""product-details"">")
                productCard.AppendLine("<h2>" & values(0) & "</h2>")
                productCard.AppendLine("<h3>" & values(1) & "</h3>")
                productCard.AppendLine("<p><strong>Address:</strong> " & values(2) & "</p>")
                productCard.AppendLine("<p><strong>Phone:</strong> " & values(3) & "</p>")
                productCard.AppendLine("<p><strong>Category:</strong> " & values(8) & "</p>")
                productCard.AppendLine("<p><strong>Opening Hours:</strong> " & values(4) & " (" & values(5) & ")</p>")
                productCard.AppendLine("<p><button>Book an appointment</button></p>")
                productCard.AppendLine("</div>")
                productCard.AppendLine("</div>")
                productContainer.Controls.Add(New LiteralControl(productCard.ToString()))
            End While
        End Using
    End Sub
End Class