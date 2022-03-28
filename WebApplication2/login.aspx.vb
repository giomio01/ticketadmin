Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        connection = New MySqlConnection
        connection.ConnectionString = ("server='localhost';port='3306';username='root';password='gieRHAAA9iSi3ULZ';database='tspi_db'")

        Dim query As String
        query = ("select count(*) from `ticket` where `tick_status`='ACTIVE'")
        command = New MySqlCommand(query, connection)

        Dim reader As MySqlDataReader
        connection.Open()
        reader = command.ExecuteReader()
        If reader.Read() Then
            If reader.IsDBNull(0) Then
                Label3.Text = String.Empty
                Label3.Text = "No Pending Request"
            Else
                Label3.Text = reader(0)
                connection.Close()
            End If
        End If

        Dim query1 As String
        query1 = ("select min(idticket) from `ticket` where `tick_status`='ACTIVE'")
        command = New MySqlCommand(query1, connection)

        Dim reader1 As MySqlDataReader
        connection.Open()
        reader1 = command.ExecuteReader()
        If reader1.Read() Then
            If reader1.IsDBNull(0) Then
                Label4.Text = String.Empty
                Label4.Text = "Next in Line"
            Else
                Label4.Text = reader1(0)
                connection.Close()
            End If
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Then
            Label2.Text = "please input username"
        ElseIf TextBox2.Text = "" Then
            Label2.Text = "please input password"
        Else
            connection = New MySqlConnection
            connection.ConnectionString = ("server='localhost';port='3306';username='root';password='gieRHAAA9iSi3ULZ';database='tspi_db'")
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
                    Session("login") = TextBox1.Text
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