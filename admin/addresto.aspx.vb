Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_addresto
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand



    Protected Sub txtrpass_TextChanged(sender As Object, e As EventArgs) Handles txtrpass.TextChanged

    End Sub

    Private Sub admin_addresto_Load(sender As Object, e As EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\NIRMA\project\RIC RELOADED1\App_Data\ric.mdf;Integrated Security=True"
    End Sub

    Private Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            Dim dt = DateTime.Today
            cmd.CommandText = "insert into resto(restonm,restousernm,rpass,address,cityid,pincode,mobile,cno,email,website,restotype,head,facility,services,regdate,usertype,restoimage) values('" & txtrestonm.Text & "','" & txtrestousernm.Text & "','" & txtrpass.Text & "','" & txtaddress.Text & "','" & ddlcity.SelectedValue & "','" & ddlpincode.SelectedValue & "','" & txtmobile.Text & "','" & txtcno.Text & "','" & txtemail.Text & "','" & txtwebsite.Text & "','" & ddlrestotype.SelectedValue & "','" & txtheadnm.Text & "','" & txtfacility.Text & "','" & txtservices.Text & "','" & dt & "','" & "restaurant" & "','" & restoimageupload.FileName & "')"
            cmd.Connection = conn
            cmd.ExecuteNonQuery()
            Dim filename1 As String
            filename1 = Server.MapPath("restoimages")
            restoimageupload.SaveAs(filename1 & "\" & restoimageupload.FileName)
            lblimgup.Text = "Success"
        Catch ex As Exception
            MsgBox(ex)
        End Try
    End Sub
End Class
