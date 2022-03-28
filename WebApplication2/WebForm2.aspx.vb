Imports System.IO

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("Login") = "" Then
                Response.Redirect("login.aspx")
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls")
        Response.ContentType = "application/vnd.ms-excel"
        Using sw As New StringWriter()
            Dim hw As New HtmlTextWriter(sw)
            GridView1.RenderControl(hw)
            Response.Write(sw.ToString())
            Response.[End]()
        End Using
    End Sub
    Public Overrides Sub verifyrenderinginserverform(control As Control)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("display.aspx")
    End Sub
End Class