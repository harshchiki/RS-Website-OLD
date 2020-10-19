Imports System.IO
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Dim constr As String = ConfigurationManager.ConnectionStrings("Radha").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim query As String = "Proc_ddlcountry"
            Using con As New SqlConnection(constr)
                Using cmd As New SqlCommand(query)
                    cmd.Connection = con
                    cmd.CommandType = CommandType.StoredProcedure
                    con.Open()
                    ddlcountry.DataSource = cmd.ExecuteReader()
                    ddlcountry.DataTextField = "Country"
                    ddlcountry.DataValueField = "Countryid"
                    ddlcountry.DataBind()
                    con.Close()
                End Using
            End Using

        End If
    End Sub
    Protected Sub btn_reg_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_reg.Click
        Dim query As String = "Proc_Login"
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query)
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then

        Else


            Dim query1 As String = "Proc_Registration"
            Using cmd1 As New SqlCommand(query1)
                cmd1.Connection = con
                cmd1.Parameters.AddWithValue("@Firstname", txtfirst.Text)
                cmd1.Parameters.AddWithValue("@Lastname", txtlastname.Text)
                cmd1.Parameters.AddWithValue("@Address", txtadd.Text)
                cmd1.Parameters.AddWithValue("@Locality", txtlocal.Text)
                cmd1.Parameters.AddWithValue("@Street", txtstreet.Text)
                cmd1.Parameters.AddWithValue("@Email", txtemail.Text)
                cmd1.Parameters.AddWithValue("@Village", txtvillage.Text)
                cmd1.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Text)
                cmd1.Parameters.AddWithValue("@State", txtstate.Text)
                cmd1.Parameters.AddWithValue("@MoblileNo", txtmobile.Text)
                cmd1.Parameters.AddWithValue("@Password", txtpass.Text)
                cmd1.Parameters.AddWithValue("@Pincode", txtpin.Text)
                cmd1.CommandType = CommandType.StoredProcedure
                con.Open()
                cmd1.ExecuteNonQuery()
                con.Close()
                Response.Redirect("Default.aspx")
            End Using
        End If

    End Sub
End Class
