Imports System.Data
Imports System.Net.Mail
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


    Protected Sub btn_forgotpassword_Click(sender As Object, e As EventArgs) Handles btn_forgotpassword.Click
        If TextBox3.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionforgotpassword() ", True)
            Label11.Visible = True
            Label11.Text = "Please Enter your Email id"
            Exit Sub
        End If
        Dim query As String = "Proc_ForgotPassword"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@email", TextBox3.Text)
                cmd.CommandType = CommandType.StoredProcedure
                con.Open()
                Dim rdr As SqlDataReader
                rdr = cmd.ExecuteReader()
                If rdr.Read() Then
                    lblerror.Text = rdr("Password").ToString()
                Else
                    lblerror.Visible = True
                    lblerror.Text = "Your Email is not registered"
                    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionforgotpassword() ", True)
                    Exit Sub
                End If
                con.Close()
                Dim tomail As String = TextBox3.Text
                Dim SendFrom As MailAddress = New MailAddress("advanttech00@gmail.com")
                Dim SendTo As MailAddress = New MailAddress(tomail)
                Dim MyMessage As MailMessage = New MailMessage(SendFrom, SendTo)
                MyMessage.Subject = "Radha Soami  "
                MyMessage.Body = "Dear User ," + Environment.NewLine + "Your Password  is:" + Environment.NewLine + lblerror.Text
                Dim SmtpServer As New SmtpClient("smtp.gmail.com")
                SmtpServer.Port = 587
                SmtpServer.Credentials = New System.Net.NetworkCredential("advanttech00@gmail.com", "00advant")
                SmtpServer.EnableSsl = True
                Try
                    SmtpServer.Send(MyMessage)
                    lblerror.Text = "Your Password sent to your mail Id"
                    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionforgotpassword() ", True)
                Catch ex As Exception
                    lblerror.Text = ex.ToString
                End Try
            End Using
        End Using
    End Sub
    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        If txtemail.Text = "" Then
            msginfo.Visible = True
            msginfo.Text = "Please enter your email id"
            Exit Sub
        End If
        If txtpass.Text = "" Then
            msginfo.Visible = True
            msginfo.Text = "Please enter your password "
            Exit Sub
        End If

        Dim query As String = "Proc_Login"
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query)
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        cmd.Parameters.AddWithValue("@Password", txtpass.Text)
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then
            Session("Username") = reader("Firstname").ToString()
            Session("MobileNumber") = reader("MobileNo")
            Response.Redirect("English.aspx")
        Else
            msginfo.Visible = True
            msginfo.Text = "Your Username/Password is incorrect "
        End If


        '    Dim query1 As String = "Proc_CheckLogin"
        '    Dim cmd1 As New SqlCommand(query1)
        '    Dim con1 As New SqlConnection(constr)
        '    cmd1.Connection = con1
        '    con1.Open()
        '    cmd1.CommandType = CommandType.StoredProcedure
        '    cmd1.Parameters.AddWithValue("@email", txtemail.Text)
        '    Dim reader1 As SqlDataReader = cmd1.ExecuteReader()
        '    reader1.Read()
        '    Dim Count1 As Integer = reader1.GetInt32(0)
        '    reader1.Close()
        '    If Count1 > 0 Then
        '        msginfo.Visible = True
        '        msginfo.Text = "Password is incorrect"
        '    Else
        '        msginfo.Visible = True
        '        msginfo.Text = "Email Id is not Registered"
        '    End If

        'End If


    End Sub
    Protected Sub btnregist_Click(sender As Object, e As EventArgs) Handles btnregist.Click
        If txtfirst.Text = "" Then
            lblerror.Text = "Please Enter your first name"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)

            Exit Sub
        End If
        If txtlastname.Text = "" Then
            lblerror.Text = "Please Enter your Last name"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If Textbox1.Text = "" Then
            lblerror.Text = "Please Enter your Email "
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        Dim phonenumber As New Regex("\d{4}-\d{3}-\d{4}")
        If (txtmobile.Text = "") Then
            lblerror.Text = "Please Enter your Mobile Number"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If Textbox2.Text = "" Then
            lblerror.Text = "Please Enter your Password"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If

        If txtconfirm.Text = "" Then
            lblerror.Text = "Please Enter your Confirm Password"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If Textbox2.Text <> txtconfirm.Text Then
            lblerror.Text = "Password does not match"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If txtadd.Text = "" Then
            lblerror.Text = "Please Enter your Address"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If txtstreet.Text = "" Then
            lblerror.Text = "Please Enter your Street"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        If txtpin.Text = "" Then
            lblerror.Text = "Please Enter your Pincode"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)
            Exit Sub
        End If
        Dim query As String = "Proc_CheckDuplicateRegistration"
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand(query)
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@email", Textbox1.Text)
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then
            lblerror.Text = "Your Email is already registered"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ServerControlScript", "functionregistration() ", True)

        Else
            Dim query1 As String = "Proc_Registration"
            Using cmd1 As New SqlCommand(query1)
                reader.Close()
                cmd1.Connection = con
                cmd1.Parameters.AddWithValue("@Firstname", txtfirst.Text)
                cmd1.Parameters.AddWithValue("@Lastname", txtlastname.Text)
                cmd1.Parameters.AddWithValue("@Address", txtadd.Text)
                cmd1.Parameters.AddWithValue("@Locality", txtlocal.Text)
                cmd1.Parameters.AddWithValue("@Street", txtstreet.Text)
                cmd1.Parameters.AddWithValue("@Email", Textbox1.Text)
                cmd1.Parameters.AddWithValue("@Village", txtvillage.Text)
                cmd1.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Text)
                cmd1.Parameters.AddWithValue("@State", txtstate.Text)
                cmd1.Parameters.AddWithValue("@MoblileNo", txtmobile.Text)
                cmd1.Parameters.AddWithValue("@Password", Textbox2.Text)
                cmd1.Parameters.AddWithValue("@Pincode", txtpin.Text)
                cmd1.CommandType = CommandType.StoredProcedure
                cmd1.ExecuteNonQuery()
                con.Close()
                Dim tomail As String = Textbox1.Text
                Dim SendFrom As MailAddress = New MailAddress("advanttech00@gmail.com")
                Dim SendTo As MailAddress = New MailAddress(tomail)
                Dim MyMessage As MailMessage = New MailMessage(SendFrom, SendTo)
                MyMessage.Subject = " Radha Soami  "
                MyMessage.Body = "Dear User ," + Environment.NewLine + "PLease Click the link below to verify" + Environment.NewLine + "http://www.radhasoamifaith.org/UserVerification.aspx?&Email=" + Textbox1.Text + "&Password=" + Textbox2.Text
                Dim SmtpServer As New SmtpClient("smtp.gmail.com")
                SmtpServer.Port = 587
                SmtpServer.Credentials = New System.Net.NetworkCredential("advanttech00@gmail.com", "00advant")
                SmtpServer.EnableSsl = True
                Try
                    SmtpServer.Send(MyMessage)
                    msginfo.Text = "Password Send to your registered Emailid"
                Catch ex As Exception
                    lblerror.Text = ex.ToString
                End Try
            End Using

        End If
    End Sub
End Class
