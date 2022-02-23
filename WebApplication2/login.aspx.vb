Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Then
            MsgBox("please input username")
        ElseIf TextBox2.Text = "" Then
            MsgBox("please input password")
        Else
            connection = New MySqlConnection
        connection.ConnectionString = ("server='localhost';port='3306';username='root';password='giomio01';database='tspi_db'")
        Dim reader As MySqlDataReader
        Try
            connection.Open()
            Dim query As String
            query = "SELECT * from log_user where BINARY log_user ='" & TextBox1.Text & "' and BINARY log_pass = '" & TextBox2.Text & "' "
            command = New MySqlCommand(query, connection)
            reader = command.ExecuteReader
            Dim count As Integer
            count = 0

            While reader.Read
                count = count + 1

            End While

            If count = 1 Then
                    Label2.Text = "Login Successful"
                    TextBox1.Text = ""
                TextBox2.Text = ""
                Response.Redirect("Default.aspx")
            ElseIf count > 1 Then
                    Label2.Text = "Duplicated Account"
                    TextBox1.Text = ""
                TextBox2.Text = ""
            Else
                    Label2.Text = "Username or Password is invalid"
                    TextBox1.Text = ""
                TextBox2.Text = ""
            End If
            connection.Close()
        Catch ex As Exception

        End Try
            connection.Dispose()
        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
    End Sub
End Class