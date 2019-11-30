
Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_addcity
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnsaddcity_Click(sender As Object, e As EventArgs) Handles btnsaddcity.Click
        Try
            cmd.CommandText = "insert into city(citynm,pincode) values('" & txtcitynm.Text & "','" & txtpincode.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            MsgBox("Success")
        Catch ex As Exception
            MsgBox(ex)

        Finally
            conn.Close()

        End Try
    End Sub

    Private Sub admin_addcity_Load(sender As Object, e As EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\NIRMA\project\RIC RELOADED1\App_Data\ric.mdf;Integrated Security=True"
    End Sub
End Class
