Imports System.IO
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim constr As String = ConfigurationManager.ConnectionStrings("Radha").ConnectionString
    Public Shared previousSantBaniSearchText As String = Nothing
    Public Shared previousGVBachanSearchText As String = Nothing
    Public Shared previousShabdSearchText As String = Nothing
    Public Shared previousvpoetrySearchText As String = Nothing
    Public Shared previousVideocSearchText As String = Nothing
    Public Shared previousbookSearchText As String = Nothing

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim query As String = "SELECT * From SantBani_Table"
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
            Dim query1 As String = "SELECT [Author],[BookName_English],[plheader],[Bachan_English],[Bachan_Summary_English],[Duration],[Link] From Bachan_Table"
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
                        End Using
                    End Using
                End Using
            End Using
            Dim query2 As String = "SELECT [Shabd_Name_Eng], [Book_Name_Eng], [Bachan], [Shabd], [SplOccasion_Eng], [Duration], [Link] From Shabd_Table"
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
            Dim query3 As String = "SELECT [Shabd_Name_Eng], [Book_Name_Eng], [Bachan], [Shabd], [SplOccasion_Eng], [Duration], [videoLink] From Shabd_Table WHERE videoLink!=''"
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
        Dim query As String = "SELECT * From Shabd_Table WHERE videoLink != ''"
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
            GVBook.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVBook.PageIndex
            DisplayBookTable()
        Else
            GVBook.PageIndex = e.NewPageIndex
            ViewState("PageIndex") = GVBook.PageIndex
            SearchBookTable(textbooksearch.Text)
        End If
    End Sub
    Private Sub CheckAndSearchBook()
        If textbooksearch.Text = "" Then
            DisplayBookTable()
            GVBook.PageIndex = 0
            ViewState("PageIndex") = GVBook.PageIndex
            GVBook.DataBind()
        ElseIf previousbookSearchText IsNot Nothing And previousbookSearchText <> textbooksearch.Text Then
            SearchBookTable(textbooksearch.Text)
            GVBook.PageIndex = 0
            ViewState("PageIndex") = GVBook.PageIndex
            GVBook.DataBind()
        Else
            SearchBookTable(textbooksearch.Text)
        End If
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
    Sub SearchBookTable(ByVal book As String)
        Dim Search As String = txtproseSearch.Text
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                Dim sda As New SqlDataAdapter()
                cmd.CommandText = "Proc_bookGridviewwithsearch"
                cmd.Connection = con
                cmd.Parameters.AddWithValue("@Search", textbooksearch.Text.Trim())
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

    '   Private Sub searchShabdGrid()
    '   Dim Search As String = txtproseSearch.Text
    '  Using con As New SqlConnection(constr)
    ' Using cmd As New SqlCommand()
    'Dim sda As New SqlDataAdapter()
    '           cmd.CommandText = "Proc_shabdGridviewwithsearch"
    '               cmd.Connection = con
    '               cmd.Parameters.AddWithValue("@Search", txtshabdsearch.Text.Trim())
    '               cmd.CommandType = System.Data.CommandType.StoredProcedure
    '               cmd.Connection = con
    '               con.Open()
    '               sda.SelectCommand = cmd
    '   Using ds As New DataSet()
    '                   sda.SelectCommand = cmd
    '                   sda.Fill(ds)
    '                   GVShabd.DataSource = ds
    '                   GVShabd.DataBind()
    '                   con.Close()
    '                   ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "setListenersForButtons();", True)
    '   End Using
    '   End Using
    '   End Using
    '   End Sub

    'Bachan Search Events
    Protected Sub Btn_bachan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_bachan.Click
        CheckAndSearchGVBachan()
        previousGVBachanSearchText = txtproseSearch.Text
    End Sub
    Private Sub TxtproseSearch_TextChanged(sender As Object, e As EventArgs) Handles txtproseSearch.TextChanged
        CheckAndSearchGVBachan()
        previousGVBachanSearchText = txtproseSearch.Text
    End Sub

    'Shabd Search Events
    Protected Sub Btn_shabd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_shabd.Click
        CheckAndSearchShabd()
        previousShabdSearchText = txtshabdsearch.Text
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
        CheckAndSearchBook()
        previousbookSearchText = textbooksearch.Text
    End Sub
    Private Sub Textbooksearch_TextChanged(sender As Object, e As EventArgs) Handles textbooksearch.TextChanged
        CheckAndSearchBook()
        previousbookSearchText = textbooksearch.Text
    End Sub

End Class
