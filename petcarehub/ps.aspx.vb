Imports System.IO
Imports System.Text

Partial Class Ps
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadProductListings()
        End If
    End Sub

    Private Sub LoadProductListings()
        Using reader As New StreamReader(Server.MapPath("products.csv"))
            While Not reader.EndOfStream
                Dim line As String = reader.ReadLine()
                Dim values As String() = line.Split(","c)

                Dim productCard As New StringBuilder()
                productCard.AppendLine("<div class=""product-card"">")
                productCard.AppendLine("<img src=""" & values(1) & """ style=""width:100%""/>")
                productCard.AppendLine("<h2>" & values(0) & "</h2>")
                productCard.AppendLine("<p class=""price"">" & "₹" & values(2) & "</p>")
                productCard.AppendLine("<p>" & values(3) & "</p>")
                productCard.AppendLine("<p><button>" & "Add To Cart" & "</button></p>")
                productCard.AppendLine("</div>")
                productContainer.Controls.Add(New LiteralControl(productCard.ToString()))
            End While
        End Using
    End Sub
End Class