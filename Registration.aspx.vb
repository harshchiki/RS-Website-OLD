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
        Dim query As String = "Proc_Registration"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Firstname", txtfirst.Text)
                cmd.Parameters.AddWithValue("@Lastname", txtlastname.Text)
                cmd.Parameters.AddWithValue("@Address", txtadd.Text)
                cmd.Parameters.AddWithValue("@Locality", txtlocal.Text)
                cmd.Parameters.AddWithValue("@Street", txtstreet.Text)
                cmd.Parameters.AddWithValue("@Email", txtemail.Text)
                cmd.Parameters.AddWithValue("@Village", txtvillage.Text)
                cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Text)
                cmd.Parameters.AddWithValue("@State", txtstate.Text)
                cmd.Parameters.AddWithValue("@MoblileNo", txtmobile.Text)
                cmd.Parameters.AddWithValue("@Password", txtpass.Text)
                cmd.Parameters.AddWithValue("@Pincode", txtpin.Text)
                cmd.CommandType = CommandType.StoredProcedure
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                Response.Redirect("Default.aspx")
            End Using
        End Using

    End Sub
End Class
