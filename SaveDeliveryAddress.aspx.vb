Imports System.Data
Imports System.Net.Mail
Imports System.Data.SqlClient
Partial Class SaveDeliveryAddress
    Inherits System.Web.UI.Page
    Dim constr As String = ConfigurationManager.ConnectionStrings("Radha").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'Dim Bookid As String = Request.QueryString.Get("bookid")
        'lblbook.Text = Bookid

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
            'Dim query1 As String = "Proc_Getbook"
            'Using con As New SqlConnection(constr)
            '    Using cmd1 As New SqlCommand(query1)
            '        cmd1.Connection = con
            '        cmd1.CommandType = CommandType.StoredProcedure
            '        cmd1.CommandType = CommandType.StoredProcedure
            '        cmd1.Parameters.AddWithValue("@bookid", Session("Bookid"))
            '        con.Open()
            '        Dim rd As SqlDataReader = cmd1.ExecuteReader()
            '        If rd.Read() Then
            '            Session("Bookname") = rd("bnameeng")
            '            Session("Publish") = rd("Pubeng")
            '        End If
            '        con.Close()
            '    End Using
            'End Using
        End If
    End Sub
    Protected Sub btnregist_Click(sender As Object, e As EventArgs) Handles btnregist.Click

        If Textbox1.Text = "" Then
            lblerror.Text = "Please Enter your Email "
            Exit Sub
        End If
        If txtmobile.Text = "" Then
            lblerror.Text = "Please Enter your Mobile Number"
            Exit Sub
        End If
        If txtadd.Text = "" Then
            lblerror.Text = "Please Enter your Address"
            Exit Sub
        End If
        If txtlocal.Text = "" Then
            lblerror.Text = "Please Enter your Locality"
            Exit Sub
        End If
        If txtvillage.Text = "" Then
                lblerror.Text = "Please Enter your Village Name"
                Exit Sub
            End If
        If ddlcountry.SelectedItem.Text = "Select" Then
            lblerror.Text = "Please Enter your Country Name"
            Exit Sub
        End If
        If txtstate.Text = "" Then
            lblerror.Text = "Please Enter your  State Name"
            Exit Sub
        End If
        If txttran.Text = "" Then
                    lblerror.Text = "Please Enter your Transaction Number"
                    Exit Sub
                End If
                If txtpin.Text = "" Then
                    lblerror.Text = "Please Enter your Pincode"
                    Exit Sub
                End If
        Dim query As String = "proc_insertorders"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Address", txtadd.Text)
                cmd.Parameters.AddWithValue("@Locality", txtlocal.Text)
                cmd.Parameters.AddWithValue("@Street", txtstreet.Text)
                cmd.Parameters.AddWithValue("@Email", Textbox1.Text)
                cmd.Parameters.AddWithValue("@Village", txtvillage.Text)
                cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Text)
                cmd.Parameters.AddWithValue("@State", txtstate.Text)
                cmd.Parameters.AddWithValue("@MoblileNo", txtmobile.Text)
                cmd.Parameters.AddWithValue("@Pincode", txtpin.Text)
                cmd.Parameters.AddWithValue("@Book_Id", Session("BookName"))
                cmd.Parameters.AddWithValue("@Tx_Id", txttran.Text)
                cmd.CommandType = CommandType.StoredProcedure
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                Dim tomail As String = Textbox1.Text
                Dim SendFrom As MailAddress = New MailAddress("advanttech00@gmail.com")
                Dim SendTo As MailAddress = New MailAddress(tomail)
                Dim MyMessage As MailMessage = New MailMessage(SendFrom, SendTo)
                MyMessage.Subject = " Radha Soami  "
                MyMessage.Body = "Dear User ," + Environment.NewLine + "Your Order Places Successfully :" + Environment.NewLine + txtmobile.Text + Environment.NewLine + Textbox1.Text + Environment.NewLine + "Book Name:" + Session("BookName")
                Dim SmtpServer As New SmtpClient("smtp.gmail.com")
                SmtpServer.Port = 587
                SmtpServer.Credentials = New System.Net.NetworkCredential("advanttech00@gmail.com", "00advant")
                SmtpServer.EnableSsl = True
                Try
                    SmtpServer.Send(MyMessage)
                    lblerror.Text = "Your Order Details sent to your mail Id"
                Catch ex As Exception
                    lblerror.Text = ex.ToString
                End Try
            End Using
        End Using
        txtadd.Text = ""
        txtlocal.Text = ""
        txtstreet.Text = ""
        Textbox1.Text = ""
        txtvillage.Text = ""
        txtstate.Text = ""
        txtmobile.Text = ""
        txtpin.Text = ""
        txttran.Text = ""
    End Sub

End Class
