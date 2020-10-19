Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Script.Serialization
Imports System.Web.Services
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim booktxt, orderbooktxt As String
    Dim bookauthor, orderauthor As String
    Dim bookrelated, orderrelated As String
    Dim booklanguage, orderlanguage As String
    Dim constr As String = ConfigurationManager.ConnectionStrings("Radha").ConnectionString
    Public Shared previousSantBaniSearchText As String = Nothing
    Public Shared previousGVBachanSearchText As String = Nothing
    Public Shared previousShabdSearchText As String = Nothing
    Public Shared previousvpoetrySearchText As String = Nothing
    Public Shared previousclassicSearchText As String = Nothing
    Public Shared previousVideocSearchText As String = Nothing
    Public Shared previousbookSearchText As String = Nothing


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Using con As New SqlConnection(constr)
                Using cmd5 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd5.CommandText = "Proc_ddlauthor"
                    cmd5.CommandType = System.Data.CommandType.StoredProcedure
                    cmd5.Connection = con
                    cmd5.Connection = con
                    con.Open()
                    DropAuthor.DataSource = cmd5.ExecuteReader()
                    DropAuthor.DataTextField = "authTransEng"
                    DropAuthor.DataBind()
                    con.Close()
                End Using
            End Using


            Using con As New SqlConnection(constr)
                Using cmd6 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd6.CommandText = "Proc_ddlrelated"
                    cmd6.CommandType = System.Data.CommandType.StoredProcedure
                    cmd6.Connection = con
                    cmd6.Connection = con
                    con.Open()
                    DropRelate.DataSource = cmd6.ExecuteReader()
                    DropRelate.DataTextField = "related"
                    DropRelate.DataBind()
                    con.Close()
                End Using
            End Using

            Using con As New SqlConnection(constr)
                Using cmd7 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd7.CommandText = "Proc_ddllanguage"
                    cmd7.CommandType = System.Data.CommandType.StoredProcedure
                    cmd7.Connection = con
                    cmd7.Connection = con
                    con.Open()
                    DropLanguage.DataSource = cmd7.ExecuteReader()
                    DropLanguage.DataTextField = "langEng"
                    DropLanguage.DataBind()
                    con.Close()
                End Using
            End Using

            Using con As New SqlConnection(constr)
                Using cmd05 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd05.CommandText = "Proc_ddlauthor"
                    cmd05.CommandType = System.Data.CommandType.StoredProcedure
                    cmd05.Connection = con
                    cmd05.Connection = con
                    con.Open()
                    ddlorderbookauthor.DataSource = cmd05.ExecuteReader()
                    ddlorderbookauthor.DataTextField = "authTransEng"
                    ddlorderbookauthor.DataBind()
                    con.Close()
                End Using
            End Using


            Using con As New SqlConnection(constr)
                Using cmd06 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd06.CommandText = "Proc_ddlrelated"
                    cmd06.CommandType = System.Data.CommandType.StoredProcedure
                    cmd06.Connection = con
                    cmd06.Connection = con
                    con.Open()
                    ddlorderbookrelated.DataSource = cmd06.ExecuteReader()
                    ddlorderbookrelated.DataTextField = "related"
                    ddlorderbookrelated.DataBind()
                    con.Close()
                End Using
            End Using

            Using con As New SqlConnection(constr)
                Using cmd07 As New SqlCommand()
                    Dim sda As New SqlDataAdapter()
                    cmd07.CommandText = "Proc_ddllanguage"
                    cmd07.CommandType = System.Data.CommandType.StoredProcedure
                    cmd07.Connection = con
                    cmd07.Connection = con
                    con.Open()
                    ddlorderbooklanguage.DataSource = cmd07.ExecuteReader()
                    ddlorderbooklanguage.DataTextField = "langEng"
                    ddlorderbooklanguage.DataBind()
                    con.Close()
                End Using
            End Using

            Dim query As String = "SELECT * From SantBani_Table where Link != '' and available='Yes' order by ShabdName_English asc"
            Using con As New SqlConnection(constr)
                Using cmd As New SqlCommand(query)
                    Using sda As New SqlDataAdapter()
                        cmd.Connection = con
                        sda.SelectCommand = cmd
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVSantBani.DataSource = ds
                            GVSantBani.DataBind()
                            ViewState("PageIndex") = GVSantBani.PageIndex
                            GVSantBani.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim query1 As String = "SELECT [Author],[BookName_English],[plheader],[Bachan_English],[Bachan_Summary_English],[Duration],[Link] From Bachan_Table order by BookName_English asc"
            Using con As New SqlConnection(constr)
                Using cmd1 As New SqlCommand(query1)
                    Using sda As New SqlDataAdapter()
                        cmd1.Connection = con
                        sda.SelectCommand = cmd1
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVBachan.DataSource = ds
                            GVBachan.DataBind()
                            ViewState("PageIndex") = GVBachan.PageIndex
                            GVBachan.Visible = True
                            If GVBachan.Rows.Count = 0 Then
                                ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "snackbarBachan();", True)
                            Else
                                ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "snackbarBachan();", True)
                            End If
                        End Using
                    End Using
                End Using
            End Using
            Dim query2 As String = "SELECT [Shabd_Name_Eng], [Book_Name_Eng], [Bachan], [Shabd], [SplOccasion_Eng], [Duration], [Link] From Shabd_Table order by Shabd_Name_Eng asc"
            Using con As New SqlConnection(constr)
                Using cmd2 As New SqlCommand(query2)
                    Using sda As New SqlDataAdapter()
                        cmd2.Connection = con
                        sda.SelectCommand = cmd2
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVShabd.DataSource = ds
                            GVShabd.DataBind()
                            ViewState("PageIndex") = GVShabd.PageIndex
                            GVShabd.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim query3 As String = "SELECT [Shabd_Name_Eng], [Book_Name_Eng], [Bachan], [Shabd], [SplOccasion_Eng], [Duration], [videoLink] From Shabd_Table WHERE videoLink!='' order by Shabd_Name_Eng asc"
            Using con As New SqlConnection(constr)
                Using cmd3 As New SqlCommand(query3)
                    Using sda As New SqlDataAdapter()
                        cmd3.Connection = con
                        sda.SelectCommand = cmd3
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVVideoP.DataSource = ds
                            GVVideoP.DataBind()
                            ViewState("PageIndex") = GVVideoP.PageIndex
                            GVVideoP.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim query4 As String = "SELECT * From Vclip_Table"
            Using con As New SqlConnection(constr)
                Using cmd4 As New SqlCommand(query4)
                    Using sda As New SqlDataAdapter()
                        cmd4.Connection = con
                        sda.SelectCommand = cmd4
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVVideoC.DataSource = ds
                            GVVideoC.DataBind()
                            ViewState("PageIndex") = GVVideoC.PageIndex
                            GVVideoC.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim query5 As String = "SELECT * From Book_Table"
            Using con As New SqlConnection(constr)
                Using cmd5 As New SqlCommand(query5)
                    Using sda As New SqlDataAdapter()
                        cmd5.Connection = con
                        sda.SelectCommand = cmd5
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVBook.DataSource = ds
                            GVBook.DataBind()
                            ViewState("PageIndex") = GVBook.PageIndex
                            GVBook.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim que5 As String = "Proc_OrderBook"
            Using con As New SqlConnection(constr)
                Using cm5 As New SqlCommand(que5)
                    Using sda As New SqlDataAdapter()
                        cm5.Connection = con
                        sda.SelectCommand = cm5
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            OrderBok.DataSource = ds
                            OrderBok.DataBind()
                            ViewState("PageIndex") = OrderBok.PageIndex
                            OrderBok.Visible = True
                        End Using
                    End Using
                End Using
            End Using
            Dim query6 As String = "SELECT * From Classic_Table"
            Using con As New SqlConnection(constr)
                Using cmd6 As New SqlCommand(query6)
                    Using sda As New SqlDataAdapter()
                        cmd6.Connection = con
                        sda.SelectCommand = cmd6
                        Using ds As New DataSet()
                            sda.Fill(ds)
                            GVClassic.DataSource = ds
                            GVClassic.DataBind()
                            ViewState("PageIndex") = GVClassic.PageIndex
                            GVClassic.Visible = True
                        End Using
                    End Using
                End Using
            End Using
        End If
    End Sub
    Protected Sub GVSantBani_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVSantBani.PageIndexChanging
        If txtsantbani.Text = "" Then
            GVSantBani.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVSantBani.PageIndex
            DisplaySantBaniTable()
        Else
            GVSantBani.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVSantBani.PageIndex
            SearchSantBaniTable(txtsantbani.Text)
        End If
    End Sub
    Protected Sub OrderBok_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles OrderBok.PageIndexChanging
        OrderBok.PageIndex = e.NewPageIndex
        ViewState("PageIndex") = OrderBok.PageIndex
        Dim que5 As String = "Proc_OrderBook"
        Using con As New SqlConnection(constr)
            Using cm5 As New SqlCommand(que5)
                Using sda As New SqlDataAdapter()
                    cm5.Connection = con
                    sda.SelectCommand = cm5
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        OrderBok.DataSource = ds
                        OrderBok.DataBind()
                        ViewState("PageIndex") = OrderBok.PageIndex
                        OrderBok.Visible = True
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Private Sub CheckAndSearchSantBani()
        If txtsantbani.Text = "" Then
            DisplaySantBaniTable()
            GVSantBani.PageIndex = 0
            ViewState("PageIndex") = GVSantBani.PageIndex
            GVSantBani.DataBind()
        ElseIf previousSantBaniSearchText IsNot Nothing And previousSantBaniSearchText <> txtsantbani.Text Then
            SearchSantBaniTable(txtsantbani.Text)
            GVSantBani.PageIndex = 0
            ViewState("PageIndex") = GVSantBani.PageIndex
            GVSantBani.DataBind()
        Else
            SearchSantBaniTable(txtsantbani.Text)
        End If
    End Sub
    Sub DisplaySantBaniTable()
        Dim query As String = "SELECT * From SantBani_Table where Available='Yes'"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVSantBani.DataSource = ds
                        GVSantBani.DataBind()
                        ViewState("PageIndex") = GVSantBani.PageIndex
                        GVSantBani.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchSantBaniTable(ByVal santbani As String)
        Dim Search As String = txtproseSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_santGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtsantbani.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVSantBani.DataSource = ds
                    GVSantBani.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVSantBani.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarSant();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarSant();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Protected Sub GVShabd_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVShabd.PageIndexChanging
        If txtshabdsearch.Text = "" Then
            GVShabd.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVShabd.PageIndex
            DisplayShabdTable()
        Else
            GVShabd.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVShabd.PageIndex
            SearchShabdTable(txtshabdsearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchShabd()
        If txtshabdsearch.Text = "" Then
            DisplayShabdTable()
            GVShabd.PageIndex = 0
            ViewState("PageIndex") = GVShabd.PageIndex
            GVShabd.DataBind()
        ElseIf previousShabdSearchText IsNot Nothing And previousShabdSearchText <> txtshabdsearch.Text Then
            SearchShabdTable(txtshabdsearch.Text)
            GVShabd.PageIndex = 0
            ViewState("PageIndex") = GVShabd.PageIndex
            GVShabd.DataBind()
        Else
            SearchShabdTable(txtshabdsearch.Text)
        End If
    End Sub
    Sub DisplayShabdTable()
        Dim query As String = "SELECT * From Shabd_Table"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVShabd.DataSource = ds
                        GVShabd.DataBind()
                        ViewState("PageIndex") = GVShabd.PageIndex
                        GVShabd.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                        If GVShabd.Rows.Count = 0 Then
                            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarShabd();", True)
                        Else
                            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarShabd();", True)
                        End If
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchShabdTable(ByVal shabd As String)
        Dim Search As String = txtproseSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_shabdGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtshabdsearch.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVShabd.DataSource = ds
                    GVShabd.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVShabd.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarShabd();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarShabd();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Protected Sub GVVideoP_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVVideoP.PageIndexChanging
        If txtvpoetrysearch.Text = "" Then
            GVVideoP.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVVideoP.PageIndex
            DisplayVideoPTable()
        Else
            GVVideoP.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVVideoP.PageIndex
            SearchVideoPTable(txtshabdsearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchVideoP()
        If txtvpoetrysearch.Text = "" Then
            DisplayVideoPTable()
            GVVideoP.PageIndex = 0
            ViewState("PageIndex") = GVVideoP.PageIndex
            GVVideoP.DataBind()
        ElseIf previousvpoetrySearchText IsNot Nothing And previousvpoetrySearchText <> txtvpoetrysearch.Text Then
            SearchVideoPTable(txtvpoetrysearch.Text)
            GVVideoP.PageIndex = 0
            ViewState("PageIndex") = GVVideoP.PageIndex
            GVVideoP.DataBind()
        Else
            SearchVideoPTable(txtvpoetrysearch.Text)
        End If
    End Sub
    Sub DisplayVideoPTable()
        Dim query As String = "SELECT * From Shabd_Table WHERE videoLink != '' order by Shabd_Name_Eng asc"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVVideoP.DataSource = ds
                        GVVideoP.DataBind()
                        ViewState("PageIndex") = GVVideoP.PageIndex
                        GVVideoP.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchVideoPTable(ByVal videop As String)
        Dim Search As String = txtproseSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_videoPGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtvpoetrysearch.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVVideoP.DataSource = ds
                    GVVideoP.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVVideoP.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarVideoP();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarVideoP();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Protected Sub GVBachan_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVBachan.PageIndexChanging
        If txtproseSearch.Text = "" Then
            GVBachan.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVBachan.PageIndex
            DisplayGVBachanTable()
        Else
            GVBachan.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVBachan.PageIndex
            SearchGVBachanTable(txtproseSearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchGVBachan()
        If txtproseSearch.Text = "" Then
            DisplayGVBachanTable()
            GVBachan.PageIndex = 0
            ViewState("PageIndex") = GVBachan.PageIndex
            GVBachan.DataBind()
        ElseIf previousGVBachanSearchText IsNot Nothing And previousGVBachanSearchText <> txtproseSearch.Text Then
            SearchGVBachanTable(txtproseSearch.Text)
            GVBachan.PageIndex = 0
            ViewState("PageIndex") = GVBachan.PageIndex
            GVBachan.DataBind()
        Else
            SearchGVBachanTable(txtproseSearch.Text)
        End If
    End Sub
    <WebMethod()>
    Public Shared Function SaveData(ByVal statusId As String) As String

        HttpContext.Current.Session("BookName") = statusId
    End Function

    Sub DisplayGVBachanTable()
        Dim query As String = "SELECT * From Bachan_Table"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVBachan.DataSource = ds
                        GVBachan.DataBind()
                        ViewState("PageIndex") = GVBachan.PageIndex
                        GVBachan.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                        If GVBachan.Rows.Count = 0 Then
                            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "snackbarBachan();", True)
                        Else
                            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "snackbarBachan();", True)
                        End If
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchGVBachanTable(ByVal bachantext As String)
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_BachanGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtproseSearch.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVBachan.DataSource = ds
                    GVBachan.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVBachan.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarBachan();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarBachan();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Protected Sub GVClassic_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVClassic.PageIndexChanging
        If txtclassicSearch.Text = "" Then
            GVClassic.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVClassic.PageIndex
            DisplayClassicTable()
        Else
            GVClassic.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVClassic.PageIndex
            SearchclassicTable(txtclassicSearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchClassic()
        If txtclassicSearch.Text = "" Then
            DisplayClassicTable()
            GVClassic.PageIndex = 0
            ViewState("PageIndex") = GVClassic.PageIndex
            GVClassic.DataBind()
        ElseIf previousclassicSearchText IsNot Nothing And previousclassicSearchText <> txtclassicSearch.Text Then
            SearchclassicTable(txtclassicSearch.Text)
            GVClassic.PageIndex = 0
            ViewState("PageIndex") = GVClassic.PageIndex
            GVClassic.DataBind()
        Else
            SearchclassicTable(txtclassicSearch.Text)
        End If
    End Sub
    Sub DisplayClassicTable()
        Dim query As String = "SELECT * From Classic_Table"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVClassic.DataSource = ds
                        GVClassic.DataBind()
                        ViewState("PageIndex") = GVClassic.PageIndex
                        GVClassic.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Protected Sub GVVideoC_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVVideoC.PageIndexChanging
        If txtvideocSearch.Text = "" Then
            GVVideoC.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVVideoC.PageIndex
            DisplayVideoCTable()
        Else
            GVVideoC.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVVideoC.PageIndex
            SearchVideoCTable(txtvideocSearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchVideoC()
        If txtvideocSearch.Text = "" Then
            DisplayVideoCTable()
            GVVideoC.PageIndex = 0
            ViewState("PageIndex") = GVVideoC.PageIndex
            GVVideoC.DataBind()
        ElseIf previousVideocSearchText IsNot Nothing And previousVideocSearchText <> txtvideocSearch.Text Then
            SearchVideoCTable(txtvideocSearch.Text)
            GVVideoC.PageIndex = 0
            ViewState("PageIndex") = GVVideoC.PageIndex
            GVVideoC.DataBind()
        Else
            SearchVideoCTable(txtvideocSearch.Text)
        End If
    End Sub
    Sub DisplayVideoCTable()
        Dim query As String = "SELECT * From Vclip_Table"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVVideoC.DataSource = ds
                        GVVideoC.DataBind()
                        ViewState("PageIndex") = GVVideoC.PageIndex
                        GVVideoC.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchclassicTable(ByVal vclip As String)
        Dim Search As String = txtclassicSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_classicGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtclassicSearch.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVVideoC.DataSource = ds
                    GVVideoC.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVVideoC.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarVideoC();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarVideoC();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Sub SearchVideoCTable(ByVal vclip As String)
        Dim Search As String = txtvideocSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_videoCGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", txtvideocSearch.Text.Trim())
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVVideoC.DataSource = ds
                    GVVideoC.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVVideoC.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarVideoC();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarVideoC();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub

    Protected Sub GVBook_PageIndexChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GVBook.PageIndexChanging
        If textbooksearch.Text = "" Then
            booktxt = "null"
        Else
            booktxt = textbooksearch.Text
        End If
        If DropAuthor.SelectedItem.Text = "ALL" Then
            bookauthor = "null"
        Else
            bookauthor = DropAuthor.SelectedItem.Text
        End If
        If DropRelate.SelectedItem.Text = "ALL" Then
            bookrelated = "null"
        Else
            bookrelated = DropRelate.SelectedItem.Text
        End If
        If DropLanguage.SelectedItem.Text = "ALL" Then
            booklanguage = "null"
        Else
            booklanguage = DropLanguage.SelectedItem.Text
        End If

        GVBook.PageIndex = e.NewPageIndex
        ViewState("PageIndex") = GVBook.PageIndex
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_bookGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", booktxt)
                cmd.Parameters.AddWithValue("@Author", bookauthor)
                cmd.Parameters.AddWithValue("@Related ", bookrelated)
                cmd.Parameters.AddWithValue("@Language", booklanguage)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVBook.DataSource = ds
                    GVBook.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVBook.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarBook();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarBook();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Private Sub CheckAndSearchBook()

    End Sub
    Sub DisplayBookTable()
        Dim query As String = "SELECT * From Book_Table"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand(query)
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using ds As New DataSet()
                        sda.Fill(ds)
                        GVBook.DataSource = ds
                        GVBook.DataBind()
                        ViewState("PageIndex") = GVBook.PageIndex
                        GVBook.Visible = True
                        ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Sub SearchBookTable()

        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_bookGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", booktxt)
                cmd.Parameters.AddWithValue("@Author", bookauthor)
                cmd.Parameters.AddWithValue("@Related ", bookrelated)
                cmd.Parameters.AddWithValue("@Language", booklanguage)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    GVBook.DataSource = ds
                    GVBook.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If GVBook.Rows.Count = 0 Then
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarBook();", True)
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarBook();", True)
                    End If
                End Using
            End Using
        End Using
    End Sub
    Sub SearchOrderBookTable()

        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_orderbookGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", orderbooktxt)
                cmd.Parameters.AddWithValue("@Author", orderauthor)
                cmd.Parameters.AddWithValue("@Related ", orderrelated)
                cmd.Parameters.AddWithValue("@Language", orderlanguage)
                cmd.CommandType = System.Data.CommandType.StoredProcedure
                cmd.Connection = con
                con.Open()
                sda.SelectCommand = cmd
                Using ds As New DataSet()
                    sda.SelectCommand = cmd
                    sda.Fill(ds)
                    OrderBok.DataSource = ds
                    OrderBok.DataBind()
                    con.Close()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
                    If OrderBok.Rows.Count = 0 Then
                        lblorderbook.Visible = True
                    End If
                End Using
            End Using
        End Using
    End Sub

    'Bachan Search Events
    Protected Sub Btn_bachan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_bachan.Click
        CheckAndSearchGVBachan()
        previousGVBachanSearchText = txtproseSearch.Text

    End Sub
    Private Sub TxtproseSearch_TextChanged(sender As Object, e As EventArgs) Handles txtproseSearch.TextChanged
        CheckAndSearchGVBachan()
        previousGVBachanSearchText = txtproseSearch.Text
        If GVBachan.Rows.Count = 0 Then
            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "showSnackBarBachan();", True)
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Page.GetType, "Script", "hideSnackBarBachan();", True)
        End If
    End Sub

    'Shabd Search Events
    Protected Sub Btn_shabd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_shabd.Click
        CheckAndSearchShabd()
        previousShabdSearchText = txtshabdsearch.Text
        If GVShabd.Rows.Count = 0 Then
            shabderror.Visible = True
        Else
            shabderror.Visible = False
        End If

    End Sub
    Private Sub Txtshabdsearch_TextChanged(sender As Object, e As EventArgs) Handles txtshabdsearch.TextChanged
        CheckAndSearchShabd()
        previousShabdSearchText = txtshabdsearch.Text

    End Sub

    'Sant Bani Search Events
    Protected Sub Btn_santbani_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_santbani.Click
        CheckAndSearchSantBani()
        previousSantBaniSearchText = txtsantbani.Text
    End Sub
    Private Sub Txtsantbani_TextChanged(sender As Object, e As EventArgs) Handles txtsantbani.TextChanged
        CheckAndSearchSantBani()
        previousSantBaniSearchText = txtsantbani.Text
    End Sub
    'Video Poetry Search Events
    Protected Sub Btn_videoP_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_vpoetry.Click
        CheckAndSearchVideoP()
        previousvpoetrySearchText = txtvpoetrysearch.Text
    End Sub
    Private Sub txtvpoetrysearch_TextChanged(sender As Object, e As EventArgs) Handles txtvpoetrysearch.TextChanged
        CheckAndSearchVideoP()
        previousvpoetrySearchText = txtvpoetrysearch.Text
    End Sub
    'Classic Satsang Search Events
    Protected Sub Btn_classic_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_classic.Click
        CheckAndSearchClassic()
        previousclassicSearchText = txtclassicSearch.Text
    End Sub
    Private Sub textclassicsearch(sender As Object, e As EventArgs) Handles txtclassicSearch.TextChanged
        CheckAndSearchClassic()
        previousclassicSearchText = txtclassicSearch.Text
    End Sub
    'Video Clips Search Events
    Protected Sub Btn_videoC_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_videoc.Click
        CheckAndSearchVideoC()
        previousVideocSearchText = txtvideocSearch.Text
    End Sub
    Private Sub Textvclipsearch_TextChanged(sender As Object, e As EventArgs) Handles txtvideocSearch.TextChanged
        CheckAndSearchVideoC()
        previousVideocSearchText = txtvideocSearch.Text
    End Sub

    'Book Search Events
    Protected Sub Btn_Book_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_book.Click
        If textbooksearch.Text = "" Then
            booktxt = "null"
        Else
            booktxt = textbooksearch.Text
        End If
        If DropAuthor.SelectedItem.Text = "ALL" Then
            bookauthor = "null"
        Else
            bookauthor = DropAuthor.SelectedItem.Text
        End If
        If DropRelate.SelectedItem.Text = "ALL" Then
            bookrelated = "null"
        Else
            bookrelated = DropRelate.SelectedItem.Text
        End If
        If DropLanguage.SelectedItem.Text = "ALL" Then
            booklanguage = "null"
        Else
            booklanguage = DropLanguage.SelectedItem.Text
        End If
        SearchBookTable()

    End Sub
    Protected Sub orderbooksearchk_Click(ByVal sender As Object, ByVal e As EventArgs) Handles orderbooksearch.Click
        If txtorderbooksearch.Text = "" Then
            orderbooktxt = "null"
        Else
            orderbooktxt = txtorderbooksearch.Text
        End If
        If ddlorderbookauthor.SelectedItem.Text = "ALL" Then
            orderauthor = "null"
        Else
            orderauthor = ddlorderbookauthor.SelectedItem.Text
        End If
        If ddlorderbookrelated.SelectedItem.Text = "ALL" Then
            orderrelated = "null"
        Else
            orderrelated = ddlorderbookrelated.SelectedItem.Text
        End If
        If ddlorderbooklanguage.SelectedItem.Text = "ALL" Then
            orderlanguage = "null"
        Else
            orderlanguage = ddlorderbooklanguage.SelectedItem.Text
        End If
        SearchOrderBookTable()

    End Sub
    Private Sub Textbooksearch_TextChanged(sender As Object, e As EventArgs) Handles textbooksearch.TextChanged
        CheckAndSearchBook()
        previousbookSearchText = textbooksearch.Text
    End Sub

End Class
