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
                                            <li role="presentation"><a href="/pDateTime.aspx">Calender</a></li>
                                            <li role="presentation" class="active"><a href="/pBiCent.aspx"><u style="color: #922B21;">Bi-Centenary</u></a></li>
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

                            <!-- Container (Bi-Centenary. This is temporary and will be deleted in September 2018) -->
                            <div id="BiCent" class="row">
                                <div style="text-align: justify; margin-top: 190px;">
                                    <h3 style=" color: #922B21">SOAMIJI MAHARAJ'S BI-CENTENARY CELEBRATIONS</h3>
                                    You can find all the information related to upcoming Bi-Centenary celebrations of Soamiji Maharaj in August - September 2018. Keep visiting this section regularly for updates.
                                    <div class="col-md-12 " style="text-align: justify;outline:none" tabindex="1">
                                        <h4 style=" color: #922B21">IMPORTANT DATES</h4>
                                        <div class="row"  style="margin-bottom: 10px; text-align: justify;">
                                            Bi-Centenary Satsang schedule is given below.
                                            <br/>
                                            <br/>
                                            <table style="text-align: center;">
                                                <tr>
                                                    <th style="background-color: #922B21; text-align: center;">DATE</th>
                                                    <th style="background-color: #922B21; text-align: center;">EARLY MORNING</th>
                                                    <th style="background-color: #922B21; text-align: center;">MORNING</th>
                                                    <th style="background-color: #922B21; text-align: center;">EVENING</th>
                                                    <th style="background-color: #922B21; text-align: center;">NIGHT</th>
                                                </tr>
                                                <tr>
                                                    <td>24<sup>th</sup> August 2018<br/>/Friday</td>
                                                    <td>Kothi<br/>(5:00 AM)</td>
                                                    <td>Panni Gali<br/>(9:30 AM)</td>
                                                    <td>Samadh<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr style="background-color: #FBEBEA">
                                                    <td>31<sup>sth</sup> August 2018<br/>Friday<br/><b>(INAUGURAL)</b></td>
                                                    <td>Kothi<br/>(6:00 AM)</td>
                                                    <td>Samadh<br/>(9:30 AM)</td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                    </tr>
                                                <tr>
                                                    <td>1<sup>st</sup> September 2018<br/>Saturday</td>
                                                    <td>Samadh<br/>(6:00 AM)</td>
                                                    <td>Kothi<br/>(9:30 AM)</td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr style="background-color: #FBEBEA">
                                                    <td>2<sup>nd</sup> September 2018<br/>Sunday</td>
                                                    <td>Samadh<br/>(6:00 AM)</td>
                                                    <td>Kothi<br/>(9:30 AM)</td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr>
                                                    <td>3<sup>rd</sup> September 2018<br/>Monday<br/><b>(SHATABDI BHANDARA)</b></td>
                                                    <td>Kothi<br/>(6:00 AM)</td>
                                                    <td>Samadh<br/>(9:30 AM)<br/><b>(AARTI SATSANG)</b></td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr style="background-color: #FBEBEA">
                                                    <td>4<sup>th</sup> September 2018<br/>Tuesday</td>
                                                    <td>Kothi<br/>(6:00 AM)</td>
                                                    <td>Bhajan Ghar<br/>(9:30 AM)</td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Samadh<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr>
                                                    <td>5<sup>th</sup> September 2018<br/>Wednesday</td>
                                                    <td>Samadh<br/>(6:00 AM)</td>
                                                    <td>Radha Bagh<br/>(10:00 AM)</td>
                                                    <td>Kothi<br/>(5:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr style="background-color: #FBEBEA">
                                                    <td rowspan="2">6<sup>th</sup> September 2018<br/>Thursday</td>
                                                    <td rowspan="2">Samadh<br/>(6:00 AM)</td>
                                                    <td rowspan="2">Kothi<br/>(10:00 AM)</td>
                                                    <td rowspan="2">Panni Gali<br/>(4:00 PM)</td>
                                                    <td>Bhajan Ghar<br/>(8:00 PM)</td>
                                                </tr>
                                                <tr>
                                                    <td style="background: #FBEBEA;">Samadh<br/>(11:00 PM)</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-12 " style="text-align: justify;outline:none" tabindex="1">
                                        <h4 style=" color: #922B21">OTHER INFORMATION</h4>
                                        <h5 style=" color: #922B21">Guidelines for Akhand Path (24x7 Satsang)</h5>
                                        Details of circular dated 2<sup>nd</sup> June'18 mentioning guidelines for Akhand Paath (24x7 Recitation) are given below:
                                        <ol>
                                            <li>The Daytime Akhand Paath (Recitation) would commence in Holy Samadh from 11:00 AM on Friday,
                                                    the 31<sup>st</sup> August 2018 and conclude at 12 midnight on Thursday, the 6<sup>th</sup> September 2018,
                                                    with appropriate breaks for Main Satsangs in between.</li>
                                            <li>Daytime Paathis (Reciters) from Outstation & Overseas Centres will be accepted in single or
                                                    multiple Groups comprising one Main Paathi<sup><b>**</b></sup> and five assistant Paathis (Reciters) each.
                                                    Based on the quality of their recital, they will be selected by the committee. Contact <b>secretary@rssoamibagh.org</b> for getting the pdf form to fill in the details and submit.</li>
                                            <li>The Holy books will be supplied on site. No personal or outside books will be
                                                    permitted for recitation.</li>
                                            <li>The Centre Incharge can forward any number of Request Letters, comprising
                                                    separate Groups, but only through the official mail id of the Centre <b>secretary@rssoamibagh.org</b>.</li>
                                            <li>Each Daytime Paathi (Reciter) Group will be informed about the date and time allotted for
                                                    recitation and will be issued a TOKEN OF TURN (Containing all Details), one day in
                                                    advance, which shall be submitted half an hour before the allotted time to the Token
                                                    Incharge available in Holy Samadh. The Date and Time shall not change in any case.</li>
                                            <li>Each Group WITH ALL MEMBERS shall reach the Holy Samadh at least half an hour
                                                    before its turn. Late comers may lose their chance. No more than five co-Paathis (co-Reciters) will
                                                    be allowed to sit. All are requested to abide by discipline, decency and decorum.</li>
                                            <li>A scheme of ONLINE registration of Daytime Paathi (Reciter) Groups will be introduced from
                                                    21<sup>st</sup> June. All eligible fillable forms will be entered into the System by Manger. Those
                                                    who are registered ONLINE will receive MP3 recordings of the Shabds selected by
                                                    them. The Paathi (Reciter) Lay of all six Holy Poetry Books is already available on Google Drive
                                                    <a href="https://goo.gl/VkaAMa" target="_blank">(click here)</a>. The Night Time Paathis (Reciters) of Akhand Sar Banchan will be
                                                    selected by the Paath (Recitation) Committee. The Regional Incharges can send the names of
                                                    Main Paathis (Reciters) of their region, who are well versed with Serial recitation.</li>
                                            <li>Those who have registered in Paathi (Reciter) Sewa Dal on www.arshdigital.in may fill the pdf forms (mail to <b>secretary@rssoamibagh.org</b>),
                                                    or may volunteer their names for layout Supervisors. They should have thorough
                                                    knowledge of Paaths, their correct style and layout of recital for Akhand Paath. They
                                                    may send their names to <b>secretary@rssoamibagh.org</b> with a copy to
                                                    <b>akhandpaath@rssoamibagh.org</b></li>
                                            <li>Shri Pooran Singh shall be the Akhand Paath (Recitation) Token Incharge for daytime and Shri
                                                    Runtu Bhattacharya for nighttime.</li>
                                        </ol>
                                        <b style="color: #922B21"><u>Note:</u></b><br/><i> <b>**</b> Satsangis who wants to recite at Holy Samadh or any other Holy places (Kothi, Bhajan Ghar, Radha Bagh, Panni Gali, Soamibagh Varanasi), should take permission from Satsang office.</i>
                                </div>
                            </div>
                        </div>
                        <hr/>
            </form>
       </body>
</html>