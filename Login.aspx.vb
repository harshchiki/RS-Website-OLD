Imports System.Data
Imports System.Data.SqlClient

Partial Class Login
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


    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Dim query As String = "Proc_Login"
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query)
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        cmd.Parameters.AddWithValue("@Password", txtpass.Text)
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        reader.Read()
        Dim Count As Integer = reader.GetInt32(0)
        reader.Close()
        con.Close()
        If Count > 0 Then
            Response.Redirect("Default.aspx")
        Else
            Dim query1 As String = "Proc_CheckLogin"
            Dim cmd1 As New SqlCommand(query1)
            Dim con1 As New SqlConnection(constr)
            cmd1.Connection = con1
            con1.Open()
            cmd1.CommandType = CommandType.StoredProcedure
            cmd1.Parameters.AddWithValue("@email", txtemail.Text)
            Dim reader1 As SqlDataReader = cmd1.ExecuteReader()
            reader1.Read()
            Dim Count1 As Integer = reader1.GetInt32(0)
            reader1.Close()
            If Count1 > 0 Then
                msginfo.Visible = True
                msginfo.Text = "Password is incorrect"
            Else
                msginfo.Visible = True
                msginfo.Text = "Email Id is not Registered"
            End If

        End If


    End Sub
    Protected Sub btnregist_Click(sender As Object, e As EventArgs) Handles btnregist.Click
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
