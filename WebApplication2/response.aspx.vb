Imports MySql.Data.MySqlClient

Public Class response
    Inherits System.Web.UI.Page
    Dim connection As MySqlConnection
    Dim command As MySqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("Login") = "" Then
                Response.Redirect("login.aspx")
            End If
        Catch ex As Exception

        End Try
        If TextBox1.Text = "" Then
            TextBox1.Text = Request.QueryString("idtext")
            If TextBox1.Text = "" Then
                Label11.Text = "Input Number!"
            Else
                connection = New MySqlConnection
                connection.ConnectionString = ("server='localhost';port='3306';username='root';password='gieRHAAA9iSi3ULZ';database='tspi_db'")
                Dim query As String
                query = ("select * from `ticket` where `idticket` = '" & TextBox1.Text & "'")
                command = New MySqlCommand(query, connection)


                Dim reader As MySqlDataReader
                connection.Open()
                reader = command.ExecuteReader()
                If reader.Read() Then
                    Label6.Text = reader(2)
                    Label7.Text = reader(1)
                    Label8.Text = reader(3)
                    Label9.Text = reader(4)
                    Label10.Text = reader(5)
                    TextBox2.Text = reader(6)
                    TextBox3.Text = reader(8)
                    DropDownList1.Text = reader(7)

                    connection.Close()
                    Label11.Text = "Valid Ticket!"

                Else
                    Label11.Text = "Invalid !!!!!"

                End If
            End If
        Else
        End If
    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If TextBox3.Text = "" Then
            Label12.Text = "please input action taken or response"
        Else
            connection = New MySqlConnection
            connection.ConnectionString = ("server='localhost';port='3306';username='root';password='gieRHAAA9iSi3ULZ';database='tspi_db'")

            Dim query As String
            query = "UPDATE `ticket`
                     SET `tick_emp` = '" & Label7.Text & "' , `tick_name` = '" & Label6.Text & "', `tick_dept` = '" & Label8.Text & "'
                     , `tick_station` = '" & Label9.Text & "', `tick_request` = '" & Label10.Text & "'
                     , `tick_info` = '" & TextBox2.Text & "' , `tick_status` = '" & DropDownList1.Text & "' , `tick_action` = '" & TextBox3.Text & "'
                      , `handled_by` = '" & TextBox4.Text & "'
                     WHERE `idticket` = '" & TextBox1.Text & "'"

            command = New MySqlCommand(query, connection)
        connection.Open()
        If command.ExecuteNonQuery() = 1 Then
                Label12.Text = "succesfully updated"

            Else
                Label12.Text = "Error"
            End If
        connection.Close()
        Label6.Text = ""
        Label7.Text = ""
        Label8.Text = ""
        Label9.Text = ""
        Label10.Text = ""
        DropDownList1.Text = ""
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        If TextBox1.Text = "" Then
            Label11.Text = "Input Number!"
        Else
            connection = New MySqlConnection
            connection.ConnectionString = ("server='localhost';port='3306';username='root';password='gieRHAAA9iSi3ULZ';database='tspi_db'")
            Dim query As String
            query = ("select * from `ticket` where `idticket` = '" & TextBox1.Text & "'")
            command = New MySqlCommand(query, connection)


            Dim reader As MySqlDataReader
            connection.Open()
            reader = command.ExecuteReader()
            If reader.Read() Then
                Label6.Text = reader(2)
                Label7.Text = reader(1)
                Label8.Text = reader(3)
                Label9.Text = reader(4)
                Label10.Text = reader(5)
                TextBox2.Text = reader(6)
                TextBox3.Text = reader(8)
                DropDownList1.Text = reader(7)

                connection.Close()
                Label11.Text = "Valid Ticket!"

            Else
                Label11.Text = "Invalid !!!!!"

            End If
        End If
    End Sub

End Class