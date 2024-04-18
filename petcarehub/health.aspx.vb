Imports System.IO
Imports System.Reflection.Emit

Partial Class Health
    Inherits System.Web.UI.Page

    Private Const HYD_V As String = "hydvets.csv"
    Private Const LKO_V As String = "lkovets.csv"

    Protected Sub ImageButton_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click, ImageButton2.Click, ImageButton3.Click, ImageButton4.Click
        ' Hide controls
        Dim imageButtons() As ImageButton = {ImageButton1, ImageButton2, ImageButton3, ImageButton4, ImageButton5, ImageButton6}
        For Each button As ImageButton In imageButtons
            button.Visible = False
        Next
        Image1.Visible = False
        Label1.Visible = False

        ' Determine location
        Dim location As String = ""
        Select Case CType(sender, ImageButton).ID
            Case "ImageButton3"
                location = "Hyderabad"
            Case "ImageButton4"
                location = "Lucknow"
        End Select

        Label2.Text = "Vets in " & location & "🐾"

        ' Show label and panel
        Label2.Visible = True
        Panel2.Style.Add("top", "80px")
        Me.Page.Header.Style.Add("background-color", "#64797A")

        ' Register client script
        Dim script As String = "<script type='text/javascript'>document.body.style.backgroundColor = '#FFFFFF';</script>"
        ClientScript.RegisterStartupScript(Me.GetType(), "ChangeBackgroundColor", script)

        ' Load data from CSV
        Dim csvPath As String = ""
        Select Case CType(sender, ImageButton).ID
            Case "ImageButton3"
                csvPath = HYD_V
            Case "ImageButton4"
                csvPath = LKO_V
        End Select

        LoadDataFromCSV(csvPath)
    End Sub



    Private Sub LoadDataFromCSV(filePath As String)
        Using reader As New StreamReader(Server.MapPath(filePath))
            While Not reader.EndOfStream
                Dim line As String = reader.ReadLine()
                Dim values As String() = line.Split(","c)

                Dim productCard As New StringBuilder()
                productCard.AppendLine("<div class=""product-card"">")
                productCard.AppendLine("<div class=""product-image"">")
                productCard.AppendLine("<img src=""" & values(8) & """ alt=""Product Image"" />")
                productCard.AppendLine("</div>")
                productCard.AppendLine("<div class=""product-details"">")
                productCard.AppendLine("<h2>" & values(0) & "</h2>")
                productCard.AppendLine("<h3>" & values(1) & "</h3>")
                productCard.AppendLine("<p><strong>Address:</strong> " & values(2) & ", " & values(7) & "</p>")
                productCard.AppendLine("<p><strong>Phone:</strong> " & values(3) & "</p>")
                productCard.AppendLine("<p><strong>Opening Hours:</strong> " & values(6) & "</p>")
                productCard.AppendLine("<p><strong>Rating:</strong> " & values(4) & " (" & values(5) & ")</p>")
                productCard.AppendLine("<p><button>Book an appointment</button></p>")
                productCard.AppendLine("</div>")
                productCard.AppendLine("</div>")
                productContainer.Controls.Add(New LiteralControl(productCard.ToString()))
            End While
        End Using
    End Sub

End Class
