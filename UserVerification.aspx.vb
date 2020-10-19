Imports System.Data
Imports System.Net.Mail
Imports System.Data.SqlClient
Partial Class UserVerification
    Inherits System.Web.UI.Page
    Dim constr As String = ConfigurationManager.ConnectionStrings("Radha").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id = Request.QueryString("Email")
        Dim password = Request.QueryString("Password")
        Dim query As String = "Proc_Login"
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query)
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@email", id)
        cmd.Parameters.AddWithValue("@Password", password)
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then
            reader.Close()
            Dim query1 As String = "Proc_Update"
            Dim con1 As New SqlConnection(constr)
            Dim cmd1 As New SqlCommand(query1)
            cmd1.Connection = con1
            con1.Open()
            cmd1.CommandType = CommandType.StoredProcedure
            cmd1.Parameters.AddWithValue("@email", id)
            cmd1.Parameters.AddWithValue("@Password", password)
            cmd1.ExecuteNonQuery()
            dip.Visible = True
        Else
            dip.Visible = True
            dip.InnerHtml = "You are Not Registered"
        End If
    End Sub

End Class
