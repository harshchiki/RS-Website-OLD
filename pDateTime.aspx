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
                                <li role="presentation" class="active"><a href="/pDateTime.aspx">Calender</a></li>
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
                                <li role="presentation"><a href="/pBookOrder.aspx">Book Ordering</a></li>
                                <li role="presentation"><a href="/pContactUs.aspx">Contact Us</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>

                <!-- Container (Dates & Timings) -->
                <div id="Importantdates" class="row">
                    <div style="text-align: justify; margin-top: 190px;">
                        <h3>OCCASIONS & SATSANG TIMINGS</h3>
                        You can find the dates of the occasions of Radhasoami Faith, daily Satsang timings and the link to listen to the live Satsang.
                        <div class="col-md-12 " style="text-align: justify;outline:none" tabindex="1">
                            <h4>IMPORTANT DATES</h4>
                            Given below are the dates of important occasions as per Radhasoami Faith in calender year 2018.
                            <div class="row"  style="margin-bottom: 10px; ">
                                <div class="col-md-6" style="text-align: justify;">
                                    <br/>
                                    <table>
                                        <tr>
                                            <th style="width: 150px">DATE</th>
                                            <th style="width: 100px">DAY</th>
                                            <th style="width: 200px">OCCASION</th>
                                        </tr>
                                        <tr>
                                            <td>1<sup>st</sup> January 2018</td>
                                            <td>Monday</td>
                                            <td>New Year (Nutan Varsh)</td>
                                        </tr>
                                        <tr>
                                            <td>22<sup>nd</sup> January 2018</td>
                                            <td>Monday</td>
                                            <td>Basant Panchami</td>
                                        </tr>
                                        <tr>
                                            <td>2<sup>nd</sup> March 2018</td>
                                            <td>Friday</td>
                                            <td>Holi Satsang</td>
                                        </tr>
                                        <tr>
                                            <td>30<sup>th</sup> April 2018</td>
                                            <td>Monday</td>
                                            <td>Bhandara Buaji Maharaj</td>
                                        </tr>
                                        <tr>
                                            <td>29<sup>th</sup> June 2018</td>
                                            <td>Friday</td>
                                            <td>Asadh Badi Padiwa<br/>(Day of departure of Soamiji Maharaj)</td>
                                        </tr>
                                        <tr>
                                            <td>22<sup>nd</sup> July 2018</td>
                                            <td>Friday</td>
                                            <td>Guru Poornima</td>
                                        </tr>
                                        <tr>
                                            <td>2<sup>nd</sup> September 2018</td>
                                            <td>Monday</td>
                                            <td>Bhandara Soamiji Maharaj</td>
                                        </tr>
                                        <tr>
                                            <td>18<sup>th</sup> October 2018</td>
                                            <td>Thursday</td>
                                            <td>Bhandara Maharaj Saheb</td>
                                        </tr>
                                        <tr>
                                            <td>8<sup>th</sup> November 2018</td>
                                            <td>Thursday</td>
                                            <td>Bhandara Babuji Maharaj</td>
                                        </tr>
                                        <tr>
                                            <td>25<sup>th</sup> December 2018</td>
                                            <td>Thursday</td>
                                            <td>Bhandara Huzur Maharaj</td>
                                        </tr>
                                    </table>
                                </div>
                                <br/>
                            </div>
                            <br />
                            <h4>LIVE SATSANG</h4>
                            Daily live Satsangs of Soami Bagh, Agra are available online at:
                            <a href="http://www.radhasoamisatsang.net" target="_blank">
                                <b>www.radhasoamisatsang.net</b>
                            </a><!--Please note that the user needs to login in order to listen to the Satsang.</b>-->
                            <br/>
                            Live Satsang can be listened on Desktop computers, Laptops and all handheld devices like Tablets, Mobiles, etc..
                            <br/>
                            <br/>
                            Already broadcast Satsangs of Soami Bagh, Agra are archived and available at:
                            <a href="http://www.radhasoamisatsang.net" target="_blank">
                                <b>www.radhasoamisatsang.net</b>
                            </a>
                            <br />
                            <br />
                            <h4>SATSANG TIMINGS</h4>
                            Daily Satsang timings held at Soami Bagh, Agra & Soami Bagh, Varanasi are given below.
                            <u style=" color: #337ab7;">Note:</u> The timings are approximate and vary slightly with season. However, updated timings are mentioned in the table below.
                            <br/>
                            <div class="row"  style="margin-bottom: 10px; ">
                                <br/>
                                <table>
                                    <tr>
                                        <th style="width: 100px">Agra</th>
                                        <th style="width: 150px">Time (GMT+5:30)</th>
                                        <th style="width: 200px">Remarks</th>
                                    </tr>
                                    <tr>
                                        <td>Samadh</td>
                                        <td>06:00 AM – 07:00 AM</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Kothi</td>
                                        <td>08:15 AM – 09:15 AM</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Kothi</td>
                                        <td>05:30 PM – 06:15 PM</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Bhajan Ghar</td>
                                        <td>08:30 PM – 09:30 PM</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Radha Bagh</td>
                                        <td>05:00 PM – 06:00 PM</td>
                                        <td>On 20<sup>th</sup> of every month</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="row"  style="margin-bottom: 10px; ">
                                <br/>
                                <table>
                                    <tr>
                                        <th style="width: 200px">Varanasi</th>
                                        <th style="width: 200px">Time (GMT+5:30)</th>
                                    </tr>
                                    <tr>
                                        <td>Maharaj Saheb's Samadh</td>
                                        <td>Morning</td>
                                    </tr>
                                    <tr>
                                        <td>Maharaj Saheb's Samadh</td>
                                        <td>Evening</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <hr/>
            </form>
       </body>
</html>