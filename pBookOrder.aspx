<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>Radhasoami, Soami Bagh</title>
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <link href="Content/bootstrap.min.css" rel="stylesheet" />
            <link href="Content/site.css" rel="stylesheet" />
            <script src="Scripts/jquery-3.3.1.min.js"></script>
            <script src="Scripts/bootstrap.min.js"></script>
            <script src="Scripts/siteFeatures.js"></script>
            <script src="Scripts/playlist.js"></script>
        </head>

        <body >
            <form id="form" runat="server" class="container-fluid">
                <asp:ScriptManager runat="server" ID="script"></asp:ScriptManager>

                <!-- Container (Header) -->
                            <nav class="container-fluid navbar-fixed-top">
                                <div role="navigation" class="row container-fluid">
                                    <img src="Images/header.png" class="img-responsive HeaderDiv"/>
                                </div>
                                <div role="navigation" class="row container-fluid">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div role="navigation" class="row navbar-header  container-fluid">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="glyphicon glyphicon-menu-hamburger"></span>
                                        </button>
                                        <a class="navbar-brand" href="#">MENU</a>
                                    </div>
                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div role="navigation" class="row collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav nav-tabs">
                                            <li role="presentation"><a href="/pHomePage.aspx" class="active">Home Page</a></li>
                                            <li role="presentation"><a href="/pDateTime.aspx">Calender</a></li>
                                            <li role="presentation"><a href="/pBiCent.aspx"><u style="color: #922B21;">Bi-Centenary</u></a></li>
                                            <li role="presentation"><a href="/pConduct.aspx">Guidelines</a></li>
                                            <li role="presentation"><a href="/pSSG.aspx">Sant Sat Guru</a></li>
                                            <li role="presentation" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#media" role="button" aria-haspopup="true" aria-expanded="false">Books | A-V | Photos&nbsp;&nbsp;<span class="caret"></span></a>
                                                <ul id="#media" class="dropdown-menu">
                                                    <li><a href="/pBooks.aspx">Books</a></li>
                                                    <li><a href="/pProse.aspx">Prose</a></li>
                                                    <li><a href="/pShabd.aspx">Poetry - RS Faith </a></li>
                                                    <li><a href="/pSantBani.aspx">Sant Bani</a></li>
                                                    <li><a href="/pVideoClips.aspx">Video Clips</a></li>
                                                    <li><a href="/pVideoPoetry.aspx">Video Poetry</a></li>
                                                </ul>
                                            </li>
                                            <li role="presentation"><a href="/pHolyPlaces.aspx">Holy Places</a></li>
                                            <li role="presentation"><a href="/pGenInfo.aspx">General Information</a></li>
                                            <li role="presentation" class="active"><a href="/pBookOrder.aspx">Book Ordering</a></li>
                                            <li role="presentation"><a href="/pContactUs.aspx">Contact Us</a></li>
                                        </ul>
                                    </div><!-- /.navbar-collapse -->
                                </div><!-- /.container-fluid -->
                            </nav>


                            <!-- Container (Book Ordering) -->
                            <div id="BookOrdering" class="row ">
                                    <div class="row " style="text-align: justify; ">
                                        <div style="text-align: justify; margin-top: 190px;">
                                                <h3>BOOK ORDERING</h3>
                                            <!--You can browse the list of available books and order them. Please note that the payment has to be made in advance and the proof to be submitted while placing the order.-->
                                            <h4 style=" font-weight: bold; color: gray; text-align: center ">Would be available later</h4>
                                        </div>
                                    </div>
                            </div>
                            <hr/>
            </form>
       </body>
</html>