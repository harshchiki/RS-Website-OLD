<%@ page language="VB" autoeventwireup="false" inherits="_Default" CodeFile="pHomePage.aspx.vb" %>
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
                                            <li role="presentation" class="active dropdown"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#media" role="button" aria-haspopup="true" aria-expanded="false">Books | A-V | Photos&nbsp;&nbsp;<span class="caret"></span></a>
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

                <!-- Container (LinksRow) -->
                <%--<div id="LinksRow" class="row LinksDiv" style="position: fixed">
                    <!--- Insert code for Hindi and other languages -->
                </div>--%>
                        <!-- Sidebar Holder -->
                        <div style="width:98%;">
                            <nav id="sidebar" class="active">
                                <div class="sidebar-header">
                                    <div class="row">
                                        <div class="col-xs-8">
                                            <h3 style="color: white">PLAYLIST</h3>
                                        </div>
                                        <div class="col-xs-4">
                                            <i id="sidebarRemove" class="glyphicon glyphicon-remove" style="cursor: pointer"></i>
                                        </div>
                                    </div>
                                </div>

                                <!-- Playlist -->
                                <div class="playlist-container">
                                    <div class="playlist-container column add-bottom">
                                        <div id="mainwrap">
                                            <div id="nowPlay">
                                                <p class="left" id="npAction">No song selected</p>
                                                <p class="right" id="npTitle"></p>
                                            </div>
                                            <div id="audiowrap">
                                                <div id="audio0">
                                                    <audio id="audio1" controls="controls">Your browser does not support HTML5 Audio!</audio>
                                                </div>
                                                <div id="tracks">
                                                    <a id="btnPrev" style="color: black">&larr;</a>
                                                    <a id="btnNext" style="color: black">&rarr;</a>
                                                </div>
                                            </div>
                                            <div id="plwrap">
                                                <ul id="plList"></ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>


                            <!-- Container (Home Page) -->
                            <div id="HomePage" class="row" >
                                <div style="text-align: justify; margin-top: 190px;">
                                    <h3 >INTRODUCTION</h3>
                                    &emsp;&emsp;Finding the Jivas in acute distress and delusion, and that they have deviated considerably from true Parmarth
                                    and are totally incapable of releasing themselves from the bondages of birth and death, the
                                    Supreme Being Radhasoami Dayal was moved with immense compassion. He incarnated Himself in
                                    this world in 1818 as Sant Sat Guru, in the form of Param Purush Puran Dhani Soamiji Maharaj
                                    and revealed an easy and simple path for the salvation of Jivas.
                                    <br/> &emsp;&emsp;RADHA is the name of the Dhun (reverberation) and SOAMI is the Shabd (sound).
                                    Know that Dhun and Shabd are one and the same, like water and its wave. Make no distinction
                                    between the two. RADHA is the lover and SOAMI, the beloved. RADHASOAMI sings of the union
                                    of Surat and Shabd. RADHA is the Name of the Adi (primal) Surat and SOAMI is the Adi Shabd.
                                    RADHA and SOAMI form an inseparable pair like Surat and Shabd. Know that both Radha and Soami
                                    are one word RADHASOAMI. As Surat dallies with Shabd, so does RADHA abide in close union
                                    with SOAMI.
                                    <br/> &emsp;&emsp;
                                    <b>"Radhasoami"</b> is the true and real name of the Supreme Creator. The goal of the Radhasoami
                                    Faith is the only true goal; of true and perfect salvation which can be attained only by
                                    practising Surat Shabd Yoga (union of spirit with sound current). As per Radhasoami Faith,
                                    the entire creation is divided into three divisions.
                                    <ul>
                                        <li>
                                            <b>Spiritual:</b> The First or the Highest Division is called Sat Desh or Dayal Desh
                                            (region) where pure spirit, uncontaminated by mind and matter, exists. It is comprised
                                            of six sub-divisions.</li>
                                        <li>
                                            <b>Spiritual-material:</b> The Second Division is called the Brahm Desh or Brahmand
                                            where highest and pure form of mind and subtle matter exist with spirit; the latter
                                            predominates. It is also comprised of six sub-divisions.</li>
                                        <li>
                                            <b>Material-spiritual:</b> The Third Division is called Jiva Desh or Ichchha Desh or
                                            Pind Desh or simply Pind where matter is coarse and impure, and spirit is feeble
                                            and to a certain extent under the control of the forces of mind and matter. It is also comprised of six sub-divisions. </li>
                                    </ul>
                                    &emsp;&emsp;The above three grand divisions of the universe have a correspondence, or are on the same plane, with similar
                                    divisions in the human body, which is a miniature (microcosm) of the universe (macrocosm).
                                    The deliverance of spirit from the bondage of mind and matter, i.e., the body and senses,
                                    and its gradual ascension and eventual entrance into the First or Highest Division, by the
                                    practice of Surat Shabd Yoga, is perfect salvation. The seat of the spirit in the human body
                                    is at the top of material-spiritual division (Pind). The Supreme Father, Radhasoami Dayal,
                                    is a boundless ocean of spirit, love and bliss. The spirit entity is a drop from this ocean
                                    or a ray of the Supreme Sun and in essence is the same as the Supreme Father. Having descended
                                    from the Highest or First Region, the Surat (spirit) has, in its present state, become encased
                                    in material coverings and, in a manner, intermingled with matter and is, in the Third Region,
                                    subject to the forces resulting from such mixture. It has thereby lost its innate powers
                                    of discrimination and intelligence, and has become subject to carnal desires and passions.
                                    As long as it remains in the Second and Third Divisions where mind and matter exist, it cannot
                                    be freed from future births in the lower or higher regions. It is only in the First or the
                                    Highest Division where mind and matter do not exist that there is no re-birth. There is an
                                    everlasting conscious state of love and bliss. Radhasoami Faith is not based on the scriptures
                                    appertaining to any religion but on the precepts or sayings of the Sant Sat Gurus. The holy
                                    name "Radhasoami" is not identical with any other name. Radhasoami Faith consists of four
                                    essentials:
                                    <ul>
                                        <li>
                                            <b>Sant Sat Guru:</b> The personification of the Supreme Being. Sant Sat Guru or Sat
                                            Guru is He who has either descended directly from the Highest Division or reached
                                            that region by the practice of Surat Shabd Yoga under the immediate direction of
                                            the former and has become one with Him. </li>
                                        <li>
                                            <b>Sat Shabd:</b> The sound proceeding from the original source, i.e., Sat Desh. It
                                            undergoes some change, or in other words, is enveloped in coverings at every step
                                            in its descent.</li>
                                        <li>
                                            <b>Satsang:</b> As without Sant Sat Guru there can be no Satsang, the word "Satsang"
                                            always connotes, to a votary, association of Sant Sat Guru who is the central pivot
                                            on which the entire Faith hinges. Satsang can also be held in the company of loving
                                            devotees. This is outward or external Satsang. Internal Satsang is the company of
                                            spiritual current within. It consists in listening to the spiritual sounds internally.</li>
                                        <li>
                                            <b>Sat Anurag:</b> Also known as true love or Prem. Radhasoami Faith consists only in
                                            cultivating an affection, or rather an intense love, for the Sant Sat Guru. The relation
                                            between the Sant Sat Guru and the Satsangi or devotee is purely of spirit or holy
                                            love, love to begin with, love to go on with and love to end with, the purity and
                                            intensity of love varying, of course, with the progress a devotee makes in his journey
                                            on the inward and upward path.</li>
                                    </ul>
                                    &emsp;&emsp;Public preaching or propaganda is neither recognized nor allowed in the Radhasoami Faith. 
                                    The two important doctrines of Sant Mat are (i) Firstly, that Sants generally
                                    do not interfere with the well-defined laws of eradication of Karams of Jivas, except in
                                    rare and specially deserving cases, (ii) Secondly, Sants do not make their advent here for
                                    the fulfilment of worldly desires of Jivas. The practice of Radhasoami Faith (Surat Shabd
                                    Abhyas) can be performed in the human frame alone. As such it is also necessary to maintain
                                    the human body.
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (Dates & Timings) -->
                            <div id="Importantdates" class="row">
                                <div class="col-md-2  "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row" style="text-align: justify;">
                                        <div class="col-md-12  " style="text-align: justify;">
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
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (Bi-Centenary. This is temporary and will be deleted in September 2018) -->
                            <div id="BiCent" class="row">
                                    <div class="col-md-2  "></div>
                                    <div class="col-md-10 " style="height: auto;">
                                        <div class="row">
                                            <div class="row" style="text-align: justify;">
                                                <div class="col-md-12  " style="text-align: justify;">
                                                    <h3 style=" color: #922B21">SOAMIJI MAHARAJ'S BI-CENTENARY CELEBRATIONS</h3>
                                                    You can find all the information related to upcoming Bi-Centenary celebrations of Soamiji Maharaj in August - September 2018. Keep visiting this section regularly for updates.
                                                        <h4 style=" color: #922B21">IMPORTANT DATES</h4>
                                                        <div class="row"  style="margin-bottom: 10px; ">
                                                            <div class="col-md-12" style="text-align: justify;">
                                                                Bi-Centenary Satsang schedule is given below.
                                                                <br/>
                                                                <br/>
<!--                                                                <table style="width: 100%; text-align: center;">
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
                                                                </table>-->
                                                            </div>
                                                        </div>
                                                        <br />
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
                                    </div>
                                </div>
                                <hr/>


                            <!-- Container (GUIDELINES) -->
                            <div id="conduct" class="row">
                                <div class="col-md-2  "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>GUIDELINES</h3>
                                                &emsp;&emsp;This section describes the tenets and general guidelines of the Faith and mentions the code of conduct and commandments for the
                                                practitioner of Surat Shabd Yoga.
                                                <br />
                                                <!--DIV for Tenets-->
                                                <div class="col-md-12 " id="queery" style="text-align: justify;outline:none" tabindex="1">
                                                    <h4>TENETS</h4>
                                                    The doctrines and tenets of the Faith, as originally propounded, are contained in the writings and discourses of its August
                                                    Founder, Soamiji Maharaj, and the succeeding Sant Sat Gurus.
                                                    <ul>
                                                        <li>The only conditions required for embracing the Faith are abstinence from animal food
                                                            and intoxicants.</li>
                                                        <li>Compliance with the moral and ethical principles of conduct as understood and practised
                                                            in a civilized society. </li>
                                                        <li>Radhasoami Faith does not require or permit any one to quit one's family or to give up
                                                            one's avocation or profession. One has to live in the world and at the same time
                                                            remain detached from it, like a lotus in water without getting wet.</li>
                                                        <li>A follower should, as far as possible, gradually curb and restrain his downward tendencies
                                                            by detaching himself from material objects.</li>
                                                        <li>The devotee should earn his living by Haq and Halal (right and honest means), i.e., by
                                                            hard work. Even a tinge of greed or dishonesty in acquiring wealth results in grave
                                                            injury to his spiritual progress.</li>
                                                        <li>`Kusang' (bad company) should always be avoided. Every company except that of Sant Sat
                                                            Guru and His devotees is more or less `Kusang'. It is a different matter if a devotee
                                                            has to associate with the Sansaris (worldly) people in the course of his duties or
                                                            avocation, which he has adopted to earn a living; but he should have no liking for
                                                            or take pleasure in their company, much less try to make friends with big people
                                                            or get into good books of high officers. Satsangis should always avoid the company
                                                            of men who are altogether Sansaris (worldly) and are engrossed in the objects of
                                                            this world and avoid social intercourse with such people.</li>
                                                        <li>The moral code of the Faith for the regulation of worldly dealings or affairs is that
                                                            a man should behave towards others as he would wish that others should act towards
                                                            him.</li>
                                                        <li>It is not proper to speak ill of, or show disrespect to other religions, the followers
                                                            of any religion or any deity, religious leader, or to an old venerable person unnecessarily,
                                                            nor to desecrate mausoleums or holy places.</li>
                                                        <li>One should not torment others under the cover and protection of this Holiest of holy
                                                            names.</li>
                                                    </ul>
                                                    <ajaxtoolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" TargetControlID="HyperLink1" PopupControlID="lstProducts"
                                                        PopupPosition="Bottom">
                                                    </ajaxtoolkit:HoverMenuExtender>
                                                    <span style="z-index:-4;background-color:grey">
                                                        <asp:Label ForeColor="darkslategray" style="background-color:#e8e8e8; padding: 5px;" Text="Illusion by virtue of which unreal things are considered as real."
                                                            runat="server" ID="lstProducts"></asp:Label>
                                                    </span>
                                                    The condition of the devotee should be like that of a child who has just commenced to learn swimming under the guidance of
                                                    an expert swimmer. If a novice begins to drown, he clings to the hands of the coach with
                                                    all his might. So, should the devotee cling to the Sant Sat Guru in his deadly combat with
                                                    the forces of Kal (destiny, messenger of death) and
                                                    <asp:HyperLink
                                                        ID="HyperLink1" Text="Maya" style="border-bottom: 3px double;" runat="server" />. No one else has the power to help him against them.
                                                </div>
                                                <!--DIV for Queer Practices-->
                                                <div class="col-md-12 " id="queer" style="text-align: justify;outline:none" tabindex="1">
                                                    <h4>PUZZLING PRACTICES & BLIND FOLLOWING</h4>
                                                    &emsp;&emsp;It is not unusual to see puzzling behavior around our Holy places. People who indulge in these are ignorant. Others, also ignorant, are quick to follow them blindly. A few examples of such behavior are given below:
                                                    <a id="readmor17" onclick="functionexpand17();return false;" style="cursor: pointer">
                                                        <u>Read More..</u>
                                                    </a>
                                                </div>
                                                <div id="readmore17" class="col-md-12 BorderDiv bodyDivHeight" style="text-align: justify; display:none">
                                                    <b>(a)</b>&emsp;In the matter of paying obeisance at wooden sandals of Soamiji Maharaj in Samadh, people are seen behaving in a puzzling manner. The correct way is that one should withdraw inwards and then pay obeisance. One should move away after paying obeisance to make way for others. But such is the ignorance in people that they do not move away but remain there for a long time, paying obeisance to the right, left, front and rear, on the platform, below the platform and sometimes rubbing their heads, sometimes wiping their hand there, behaving in a strange way.  This is nothing but harassing those standing behind them waiting for their turn to pay obeisance.
                                                    <br/>
                                                    <br/>
                                                    <b>(b)</b>&emsp;On obeisance to Radhasoami with 'folded hands' or 'many salutations with folded hands' - truly this is what the commandment is.
                                                    However, some people are seen opening their palms on the sandals, instead of folding them. They do not understand the significance of folding hands. They think that since they are supplicating for something, they should spread out their palms to receive it instead of joining or folding them. And what do they supplicate for? The same worldly objects they cherish. When they pay obeisance at the Samadh or Palang (bedstead) they keep their palms open. It is a matter to ponder that while paying obeisance we think that Babuji Maharaj is present and we are touching His Holy Feet. Do we touch the feet with our palms or with the back of the palms? 
                                                    <br/><br/>&emsp;&emsp;The two currents emanating from the third Til and going to the two eyes have been termed as Kar or Hath (hands). The meaning of joining the two hands is to withdraw those two currents and unite or concentrate them at the third Til. Therefore, at the time of paying obeisance one should join the two hands — palm to palm — and not spread them out. 
                                                    <br/>
                                                    &emsp;&emsp;&emsp;With folded hands, I pray to Radhasoami Dayal. Forgive my errors and omissions now.<br/>
                                                    &emsp;&emsp;&emsp;&emsp;&emsp;[Prem Patra Radhasoami, Part I, Bachan 1, Shabd 21, Couplet 12]<br/><br/> 
                                                    &emsp;&emsp;&emsp; O Radhasoami! I beseech Thee with folded hands to hear my prayer.<br/> 
                                                    &emsp;&emsp;&emsp;&emsp;&emsp;[Sar Bachan Radhasoami Poetry, Part I Bachan 7 Shabd 1 Couplet 1]<br/><br/> 
                                                    &emsp;&emsp;&emsp;Suratia prays at the Holy Feet of Guru with folded hands: <br/>
                                                    &emsp;&emsp;&emsp;&emsp;&emsp;[Prem Bani Radhasoami, Part II, Bachan 11, Shabd 31, couplet 1]<br/><br/>  
                                                    &emsp;&emsp;&emsp;She prays with folded hands: O supremely merciful Radhasoami! <br/>
                                                    &emsp;&emsp;&emsp;&emsp;&emsp;[Prem Bani Radhasoami, Part II, Bachan 11, Shabd 37, Couplet 2]<br/><br/> 
                                                    &emsp;&emsp;&emsp;Again and again with hands folded, Most humbly and meekly I pray. <br/>
                                                    &emsp;&emsp;&emsp;&emsp;&emsp;[Discourses on Radhasoami Faith, Shabd 1]<br/>
                                                    <br/>
                                                    <br/>
                                                    <b>(c)</b>&emsp;Life-size portraits of all the Sant Sat Gurus have been hung up in the Samadh of Soamiji Maharaj, for which purpose Samadh is the right place. The visitors to Samadh often enquire about Radhasoami Faith and its Acharyas (leaders). Thus they have Darshan of the Sant Sat Gurus and the Satsangis who daily go there to attend Satsang and pay obeisance also get Their Darshan. But some ignorant persons pay obeisance by putting their forehead on the walls and pillars beneath the portraits, and seeing them  many others also do the same.  This results in the permanent staining of the walls and pillars which look very awkward.
                                                    One should pay obeisance only at the wooden sandals of Soamiji Maharaj. What is the use of rubbing one's forehead on the walls and pillars? The portraits have been  hung with the sole aim of enabling us to have Darshan, and not for paying obeisance at the walls and pillars.
                                                    <br/>
                                                    <br/>
                                                    <b>(d)</b>&emsp;The Samadhs of Sants and the places where They used to stay, hold Satsang and perform Bhajan and Abhyas, are extremely sacred places. One should visit them with love and regard and show one's respect for them, but it would be wrong to think and consider that only by worshipping Samadh, one will attain salvation. In Sant Mat, prime importance has always been attached to the living Guru of the time. But it would also be foolish to say that as now we have found Sat Guru, we have nothing to do with anyone else, we are not going to visit Samadh, nor shall we do this or do that.
                                                    <br/>
                                                    <a onclick="functionhide17();return false;" style="cursor: pointer">
                                                        <u>Read Less..</u>
                                                    </a>
                                                </div>
                                            
                                            <!--DIV for Conduct Practices-->
                                            <div class="col-md-12 " id="conduct1" style="text-align: justify;outline:none" tabindex="1">
                                                    <h4>RULES OF CONDUCT</h4>
                                                    &emsp;&emsp;This section lists the general rules of conduct for the Practitioner of Surat Shabda Yoga:
                                                    <a id="readmor18" onclick="functionexpand18();return false;" style="cursor: pointer">
                                                        <u>Read More..</u>
                                                    </a>
                                            </div>
                                            <div id="readmore18" class="col-md-12 " style="text-align: justify; display:none">
                                                <ol type="1">
                                                    <li>He should earn his living by his own exertions. But those who have renounced the world and do not earn their living, may accept food and clothing, if offered out of love. They should, however, perform twice as much service and devotion as an ordinary householder does.</li>
                                                    <li>He should reduce his food and sleep by one fourth or one third of what he is used to.</li>
                                                    <li>He should not meddle in the affairs of the world, unless he is personally concerned. He should reduce his association and attachment with the worldly people to the necessary minimum.</li>
                                                    <li>He should not crave for unnecessary gratification of the senses. Whatever pleasures are available to him, he should indulge in them only to a limited and necessary extent. Those, not leading a worldly life, should be content with ordinary food and clothing. They should not ask for more.</li>
                                                    <li>He should not allow his mind to go astray while practising Bhajan. He should go on increasing love and faith in the Holy Feet of Radhasoami Dayal.</li>
                                                    <li>He should always entertain awe and reverence for Sat Purush Radhasoami and try to secure internal cleanliness and purity.</li>
                                                    <li>He should not bear envy and enmity towards anybody.</li>
                                                    <li>He should not covet anybody's property, wife or other belongings. He should not accept but what is due to him.</li>
                                                    <li>He should develop reliance in and remembrance of his Master, Sat Purush Radhasoami. He should not hanker after the worldly people and worldly objects.</li>
                                                    <li>He should not waste his time in frivolous talks, actions and thoughts.</li>
                                                    <li>He should devote himself, as much and as best as he can to Bhajan, Sumiran, Dhyan and the reading of the holy books.</li>
                                                    <li>Whenever he gets an opportunity to attend Satsang, he should consider it a boon and should hear the discourses carefully and attentively and should try his utmost to act up to them.</li>
                                                    <li>He should always keep watch over his mind and inclinations and try to curb evil desires and evil thoughts.</li>
                                                    <li>He should always associate with true and sincere devotees and religious people and should increase affection for them. He should serve and try to please them.</li>
                                                    <li>He should not take delicious and rich food every day.</li>
                                                    <li>He should totally give up animal diet and intoxicants.</li>
                                                    <li>He should not wear very costly and gaudy dresses. He should avoid show in all his actions and pursuits.</li>
                                                    <li>He should not give trouble to anybody to gain his own end.</li>
                                                    <li>As far as possible, he should render help and happiness to all.</li>
                                                    <li>He should beware of the snares of Mana (mind) and Maya (matter) and should not allow himself to be duped by them.</li>
                                                </ol>
                                                <a onclick="functionhide18();return false;" style="cursor: pointer">
                                                    <u>Read Less..</u>
                                                </a>
                                            </div>
                                            <br/>
                                            <!--DIV for Commandments-->
                                            <div class="col-md-12 " id="command" style="text-align: justify;outline:none" tabindex="1">
                                                    <h4>COMMANDMENTS</h4>
                                                    &emsp;&emsp;This section lists the commandments for a general Satsangi and also for the Practitioner of Surat Shabd Yoga. All these are the attributes of a true and sincere Parmarthi or devotee which are combined and given below. One should act up to them as far as possible. 
                                                    <a id="readmor19" onclick="functionexpand19();return false;" style="cursor: pointer">
                                                        <u>Read More..</u>
                                                    </a>
                                            </div>
                                            <div id="readmore19" class="col-md-12" style="text-align: justify; display:none">
                                                <ul>
                                                    <li style="list-style-type:none">Hymn: I say this for thy good [Sar Bachan Poetry, Part-1, Bachan-19, Shabd-1]</li>
                                                </ul>
                                                <table style="background-color: #FFFFFF">
                                                    <tr style="display: none"><!--Done because table logic in CSS uses gray color for alternate rows-->
                                                        <td>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <ol start="1">
                                                                    <li>Arise and awake.</li>
                                                                    <li>Search for the perfect Guru.</li>
                                                                    <li>Look for the Guru who is absorbed in Shabd.</li>
                                                                    <li>Serve that Guru.</li>
                                                                    <li>Drink His Charnamrit, the wash of His Feet.</li>
                                                                    <li>Partake of His Prashad (food sanctified by His touch or tasting).</li>
                                                                    <li>Perform His Arti.</li>
                                                                    <li>Sacrifice body and mind to Him.</li>
                                                                    <li>Follow His precepts.</li>
                                                                    <li>Secure His pleasure.</li>
                                                                    <li>Perform Bhajan every day regularly.</li>
                                                                    <li>Have compassion for all living beings.</li>
                                                                    <li>Injure none.</li>
                                                                    <li>Pass not sarcastic remarks.</li>
                                                                    <li>Utter not harsh words.</li>
                                                                    <li>Make all happy.</li>
                                                                    <li>Drink deep of the nectar of the Holy Name.</li>
                                                                    <li>Cultivate tolerance and forgiveness.</li>
                                                                    <li>Be contented, discreet and thoughtful.</li>
                                                                    <li>Give up licentiousness and anger.</li>
                                                                    <li>Drive away greed and attachment.</li>
                                                                    <li>Be humble and unassuming.</li>
                                                                    <li>Engender love for Sants.</li>
                                                                    <li>Do not eat much.</li>
                                                                    <li>Keep awake during Satsang.</li>
                                                                    <li>Shun name and fame.</li>
                                                                    <li>Annihilate desires for sensual pleasures.</li>
                                                            </ol>
                                                        </td>
                                                        <td>
                                                            <ol start="29">
                                                                    <li>Acquire equanimity and self-restraint.</li>
                                                                    <li>Do not give up devotion and renunciation.</li>
                                                                    <li>Contemplate the form of Guru.</li>
                                                                    <li>Utter nothing but the name of Guru.</li>
                                                                    <li>Praise Guru day in and day out.</li>
                                                                    <li>Enhance your love for Guru.</li>
                                                                    <li>Pilgrimages and idol-worship are delusions.</li>
                                                                    <li>Forget that thou belongest to a high caste or clan.</li>
                                                                    <li>Adhere not to the past ones.</li>
                                                                    <li>Follow the Guru of the time.</li>
                                                                    <li>Guru's feet are the place of pilgrimage.</li>
                                                                    <li>Service to Guru is a real fast.</li>
                                                                    <li>Guru's teachings constitute true knowledge.</li>
                                                                    <li>All other knowledge is hypocrisy.</li>
                                                                    <li>Give up adherence to traditions and observances.</li>
                                                                    <li>Act up to Guru's words.</li>
                                                                    <li>Do not follow Gyan-marg.</li>
                                                                    <li>Hold fast to the path of devotion.</li>
                                                                    <li>Follow the path of Surat Shabd.</li>
                                                                    <li>Raise thy Surat to the third Til.</li>
                                                                    <li>Then proceed to Trikuti.</li>
                                                                    <li>Enter the tenth aperture, viz, Sunn.</li>
                                                                    <li>Come to Bhanwargupha.</li>
                                                                    <li>Effect entrance into Sat Lok.</li>
                                                                    <li>Attain Alakh and Agam.</li>
                                                                    <li>Adore the Holy Name "RADHASOAMI".</li>
                                                                    <li>Put an end to all wanderings and entanglements.</li>
                                                                    <li>Stick tenaciously to Guru.</li>
                                                            </ol>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <a onclick="functionhide19();return false;" style="cursor: pointer">
                                                    <u>Read Less..</u>
                                                </a>
                                            </div>
                                            <br/>
                                            <div class="col-md-12 " id="arti" style="text-align: justify;outline:none" tabindex="1">
                                                <h4>"ARTI" - CONCEPT & SIGNIFICANCE</h4>
                                                &emsp;&emsp;Concept of 'Arti' and the manner and significance of performing Arti Ceremony. The Satsang held on the occasions of annual Bhandaras of Param Purush Pooran Dhani Soamiji Maharaj, Huzur Maharaj, Maharaj Saheb and Babuji Maharaj, and the auspicious days of Guru Purnima, Basant and Holi is known as `Arti Satsang'. On these special occasions Bhent is offered and Prashad distributed after Satsang. 
                                                <a id="readmor20" onclick="functionexpand20();return false;" style="cursor: pointer">
                                                        <u>Read More..</u>
                                                    </a>
                                                </div>
                                            <div id="readmore20" class="col-md-12" style="text-align: justify; display:none">
                                                    &emsp;&emsp;<b><u>What does `Arti Satsang' signify.</u></b>
                                                    <br/> &emsp;&emsp;Arti Shabds should be recited not only on the occasions of annual Bhandaras
                                                    and auspicious days of Guru Purnima, Basant and Holi but also on any special function or
                                                    ceremony where a lot of Satsangis have gathered. On all such occasions the recitation should
                                                    commence with Arti Shabd. What Maharaj Saheb has written about `Arti' in Article 58 of His
                                                    book 'Discourses on Radhasoami Faith' is reproduced below :
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;"At times, disciples are permitted to gaze intently at the eyes of an adept, and he also
                                                    directs his gaze similarly at the eyes and forehead of the devotees engaged in this practice.
                                                    Meanwhile, holy pieces dealing with the ascent and journey of the spiritual entity upwards,
                                                    towards the region of pure spirituality, or containing a description of the conditions
                                                    of deep love and yearning, or of true humility and resignation to the will of the Supreme
                                                    Creator, which befall a devotee during his course of spiritual journey, are recited.
                                                    During this recital, the practice of spiritual contemplation has to be performed with
                                                    the aid of the adept's gaze. The spiritual concentration during such moments is very
                                                    great, and the devotees who are performing this practice are filled within themselves
                                                    with rapturous bliss. When the concentration is beyond the strain to which a devotee
                                                    is accustomed, his eyes involuntarily close, but during this condition he is all along
                                                    conscious inwardly, and does not lose his identity like a hypnotised subject. The aid
                                                    received in the course of this practice, which is technically known as the 'Arti' ceremony,
                                                    is very similar to the aid extended to a child, who is just beginning to walk, by its
                                                    mother or nurse, the object of this assistance rendered being to arouse the potentialities
                                                    of the spirit-entity concurrently with the functions of free-will and self-consciousness".
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;In `Prem Patra Radhasoami, Vol. V,' Discourse 34, Sahaj Updesh, paragraphs 73-74, Huzur Maharaj has described
                                                    the method and benefit of performing Arti thus— 
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;"There is prevalent in Satsang, what is known as the Arti ceremony. Holy pieces of love and
                                                    devotion are recited. The person who is to perform Arti sits in front of Sat Guru. He
                                                    gazes intently at the eyes of Sat Guru. Concentrating his mind, he follows the recitation,
                                                    and fixes his Surat (spirit) at the first or second stage. This is in fact the Abhyas
                                                    of Dhyan. The mind does not, however, apply to Dhyan so well as it does in the presence
                                                    of Sat Guru. In the latter case, the thoughts of the world do not arise in the mind,
                                                    and greater bliss and joy are experienced because the Abhyas is aided by the glance of
                                                    Sat Guru. Often five, ten or more persons perform Arti ceremony. They take their seat
                                                    before Sat Guru. For every one of them, one or two Shabds (holy pieces) are recited separately.
                                                    Till all the Artis (holy pieces) are finished, all of them keep sitting before Sat Guru
                                                    with their eyes fixed on His Darshan and their mind concentrated, and enjoy bliss and
                                                    happiness within them.
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;When the Artis are over, everyone who performs Arti, offers Bhet according
                                                    to his desire and capacity. Either some or all of them bring sweets to be distributed
                                                    as Prashad among those present in Satsang. At the commencement of the Arti, garlands
                                                    are presented to Sat Guru, who returns them to offerers after sanctifying them. After
                                                    making Bhent and receiving back garlands, they touch His Holy Feet with their foreheads
                                                    and pay obeisance with folded hands, looking at the same time into His eyes."
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;After Huzur Maharaj’s departure, this practice of Arti in Satsang ceased to exist. Now-a-days Arti Satsang means
                                                    that in Satsang Arti Shabds are particularly recited. Arti-Shabds refer to the Shabds which
                                                    give an account of the elevation of Surat. The method of performing Arti now is that as the
                                                    names of different spheres of Brahmand and purely spiritual region, i.e., from Sahas-dal-kanwal
                                                    to Radhasoami Dham are mentioned during the recitation of Arti Shabds, one should turn one's
                                                    Surat towards each of those spheres and should fix it there with the help of the Darshan
                                                    of Guru Swarup. By such practice one gets the fruit of Abhyas.
                                                    <br/>
                                                    <br/>
                                                    &emsp;&emsp;On the perusal of the captions of Chapters or Bachans of `Sar Bachan Radhasoami
                                                    Poetry' and `Prem Bani Radhasoami' it will be quite clear that no where it has been mentioned
                                                    that such and such Shabd is meant for reciting on the occasion of a wedding or any other
                                                    specific occasion. However, there are a few Shabds which are recited on particular occasions.
                                                    But as such there is no hard and fast rule. It will only amount to mechanizing the recitation
                                                    killing and suppressing the enthusiasm, love and devotion.
                                                    <a onclick="functionhide20();return false;" style="cursor: pointer">
                                                        <u>Read Less..</u>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (Sant Sat Guru) -->
                            <div id="SantSatGuru" class="row">
                                <div class="col-md-offset-2 col-md-10" style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>SANT SAT GURU</h3>
                                                &emsp;&emsp;When Radhasoami Dayal incarnated on this earth in the form of Param Purush Puran Dhani Soamiji Maharaj, the first
                                                Sant Sat Guru, He brought with Him five Surats also known as ‘Nij Ansh’ viz. (i)
                                                Radhaji Maharaj, (ii) Huzur Maharaj, (iii) Maharaj Saheb, (iv) Buaji Saheba and (v)
                                                Babuji Maharaj. By 1861 all These Surats were present together on this planet. An 
                                                introduction of all These Surats is given below. The details for each of Them can
                                                be found in Their respective biographies.
                                            </div>
                                        </div>
                                        <br/>
                                        <div class="col-md-2" style="text-align: justify;margin-left:0px; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic1.gif" alt="" width="180" style="border-radius: 15px" height="180" />
                                        </div>
                                        <div class="col-md-10" style="text-align: justify;">
                                            <div class="row" id="soamjipara" tabindex="1" style="outline:none;">
                                                <h4>SOAMIJI MAHARAJ</h4>
                                                &emsp;&emsp;Param Purush Puran Dhani (The Most Supreme and the Most Perfect Being) Soamiji Maharaj is the first Sant Sat Guru
                                                and the August Founder of Radhasoami Faith. He was born at Panni Gali, in the city
                                                of Agra, on the night of the eighth day of the dark half of Bhadon (Janmashtami),
                                                at half past twelve, in the year 1875 of Vikram Calendar (corresponding to night
                                                between 24-25
                                                <sup>th</sup> August, 1818 A.D. He was the Perfect Incarnation of Radhasoami Dayal and
                                                had made advent in this world to awaken and redeem the Jivas.
                                                <a id="readmor" onclick="functionexpand();return false;" style="cursor: pointer">
                                                    <u>Read More..</u>
                                                </a><br/>
                                            </div>
                                        </div>
                                        <div id="readmore1" style="text-align: justify;display:none">
                                            <br/><br/>&emsp;&emsp;Soamiji Maharaj’s name was “Shiv Dayal Singh Seth”. This worldly name of Soamiji Maharaj also has a special significance.
                                            Soamiji Maharaj did not descend below the Third Til. Above the third Til is the location
                                            of Shiv, hence “Shiv” figures in His name. Shiv is a destroyer. But Soamiji Maharaj was
                                            Dayal Purush, the merciful. Therefore, His name was “Shiv Dayal”. For destroying Kal
                                            and Maya He was like a lion (Singh). Therefore the full name “Shiv Dayal Singh”. A rich
                                            businessman or a rich person (Dhani) is called “Seth”. And Seth is a caste among Khatris.
                                            The real wealth is the wealth of spirituality. Soamiji Maharaj was the “Seth” of spiritual
                                            wealth. There are 7 letters in Shiv Dayal Singh in Hindi (शि व द या ल सिं ह). When Radhasoami
                                            Dayal, the Lord of Radhasoami Dham, which is situated beyond the seven regions of Sahas-dal-kanwal,
                                            Trikuti, Sunn, Bhanwargupha, Sat Lok, Alakh Lok and Agam Lok assumed human form in this
                                            world, then He came to be known as Shiv Dayal Singh.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj was the Incarnation of the eighth region, the highest spiritual
                                            region, and was born on the eighth day. Eighth day is the Madhya or middle of a fortnight.
                                            Bhadon being the sixth month is the middle of the year. The time of His birth was half
                                            past 12 midnight, which is also the Madhya, i.e. the midpoint between 12:00 AM and 1:00
                                            AM. Everything about His birth was thus in the Madhya, i.e. middle or centre.
                                            <br/><br/> &emsp;&emsp;The Lord could not come lower down in the same form as His intense spirituality
                                            would have caused destruction to these regions. He had, therefore, to cover Himself with
                                            the materials (if the word can appropriately be used) constituting these regions, and
                                            had to associate Himself with the subtlest form of the materials to be found there. The
                                            subtlest form of the three Gunas’ i.e. ‘Sat’, ‘Raj’ and ‘Tam’, appeared from Trikuti
                                            in a formless condition but when they descended from Sahas-dal-kanwal, they had form.
                                            Five ‘Tattwas’ also came down from there and thus these 3 ‘Gunas’ and 5 ‘Tattwas’ or
                                            elements (5+3=8) constitute the major part of the materials of Brahmand. So the Lord
                                            had to assume covers of these regions and it took eight days, as they are eight in number.
                                            He had to put on eight kinds of covers. This process took eight periods. Hence the Incarnation
                                            of Radhasoami Dayal, i.e., Soamiji Maharaj, manifested Himself on the eighth day of the
                                            dark fortnight of ‘Bhadon’. The choice of the Janmashtami day or the eighth day, for
                                            His advent, was the natural result of this process.
                                            <br/><br/> &emsp;&emsp;At the tender age of six-seven years, He started explaining Parmarth of
                                            the highest order to selected men and women. Soamiji Maharaj had no guru, nor did He
                                            receive instructions in Parmarth from anyone. On the other hand, He explained Parmarth
                                            to His parents and a number of Sadhus who came to Him.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj possessed an extremely handsome appearance and personality
                                            and each part of His body was most attractive. He was of middle height, of very fair
                                            complexion and of a delicate, yet very proportionate, constitution. His eyes were brilliant
                                            and lustrous and His forehead was open and broad. To cast a look at Him was to realize
                                            the presence of someone unusually attractive and magnetic. It was not easy for a man
                                            to fix his gaze upon Him. To look intently at His eyes was possible only if He was pleased
                                            to permit it.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj would, for days together, shut Himself up in a small room
                                            and remain absorbed in the bliss of Surat Shabd Yoga. There was no knowing when He would
                                            need water, food or rest. He ate sparingly. Radhaji Maharaj used to soak a few raisins
                                            in water at night, and next morning She would offer that water to Soamiji Maharaj as
                                            a mild laxative and distribute the raisins among the children. The food contents of such
                                            raisin water can well be imagined than described. But even this meagre quantity was sufficient
                                            for Soamiji Maharaj. Ordinarily, one takes food in good quantity, although a very little
                                            portion of it is actually necessary for keeping the body fit and going, the rest being
                                            wasted. As against this, Sants and Sadhs eat very little and sort the subtle food out
                                            of it. By their spiritual power they are able to finish every work very quickly, easily
                                            and with perfection, which is not possible for an ordinary man.
                                            <br/><br/> &emsp;&emsp;Huzur Maharaj, one of the Nij Ansh and the second Sant Sat Guru, while performing
                                            the practice of Surat Shabd Yoga, heard the sound of Radhasoami emanating from the highest
                                            region and upon reaching there found unity of Radhasoami Dayal and Soamiji Maharaj. Then
                                            he started addressing Soamiji Maharaj with the same name i.e. ‘Radhasoami’. Gradually
                                            the Updesh (Initiation) and Abhyas (spiritual practice) of Radhasoami Nam and Dham was
                                            commenced. At this time, a few men and women came to Soamiji Maharaj and, greatly impressed
                                            with His Darshan and discourses, became His devotees. This gathering kept on increasing
                                            day by day and it is to this group’s deserving Jivas that Soamiji Maharaj gave the secret
                                            of Radhasoami Nam. And these deserving Surats, having high spiritual status, started
                                            addressing Soamiji Maharaj by the same name.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj started holding Satsang at His residence on Basant Panchmi
                                            day in Samvat 1917 Vikram (Friday, the 15
                                            <sup>th</sup> February, 1861). This Satsang continued day and night for seventeen and a half
                                            years. Sometimes discourses, which began in the evening, continued till midnight or even
                                            next morning. About ten thousand persons were initiated into Radhasoami Faith. They were
                                            mostly Hindus, from different provinces (States). Some Mohammedans, Jains and Christians
                                            were also initiated. Soon the fame of the new and unique faith of Soamiji Maharaj spread
                                            everywhere, far and near, and people from Agra and other places started coming to listen
                                            to the discourses of Soamiji Maharaj in large numbers. These included Christian priests
                                            and Sadhus of various sects. Many of them held discussions in groups with Soamiji Maharaj,
                                            and would go fully satisfied with the Bachans (discourses) of Soamiji Maharaj. By disclosing
                                            the practice of Surat Shabd Yoga, the Supreme Being Radhasoami Dayal has made the method
                                            of meeting Him so easy that the difficult practice of restraining breath has been totally
                                            stopped. He prescribed such a practice, that an old man of 80 years, and a young boy
                                            of 8 years, can also perform it.
                                            <br/><br/> &emsp;&emsp;“Sar Bachan Radhasoami Poetry”, which is also called “Bari Bani” (Great
                                            book of Hymns), was dictated by Soamiji Maharaj Himself. In 1861, on the commencement
                                            of general Satsang on Basant Panchmi, Soamiji Maharaj commenced the writing and dictating
                                            of Hymns. Most of the time this Sewa was taken from Lala Jiwan Lal Ji. But sometimes
                                            Soamiji Maharaj used to take this Sewa from Huzur Maharaj also. Soamiji Maharaj would
                                            dictate and Lala Jiwan Lal Ji and Huzur Maharaj would keep writing it down.
                                            <br/><br/> &emsp;&emsp;As is apparent from the name itself, this book is filled with invaluable
                                            essence of discourses. These have been uttered by the Supreme Being Radhasoami Dayal
                                            Himself. This book has more than 200 Arabic words and about 100 Persian words. How can
                                            one describe its glory? The compositions are filled with high Spirituality and deep knowledge.
                                            When one withdraws one’s attention from outside and concentrates one’s Surat and mind
                                            within to some extent and then reads or listens to the Hymns, one will derive its complete
                                            bliss.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj’s Hymns are of a very high spiritual level and are full
                                            of the glory of Radhasoami. From the beginning to end, it has been said that
                                            <b>Radhasoami Nam and Radhasoami Dham are above all and the highest.</b>
                                            <br/><br/> &emsp;&emsp;“Sar Bachan Radhasoami Prose” which has discourses was also dictated by
                                            Soamiji Maharaj Himself.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj had spoken to Huzur Maharaj about His departure about two
                                            years before hand. Upon Huzur Maharaj’s repeated prayers to Soamiji Maharaj for the suspension
                                            of that Mauj, Soamiji Maharaj agreed to retain His mortal coil for some more time. After
                                            some time, when again Soamiji Maharaj stated that He would leave the mortal coil after
                                            five days, Huzur Maharaj was deeply saddened and felt very sorrowful. Huzur Maharaj again
                                            pleaded that if such a Mauj is not ordained now, it will be great Daya (kindness) on
                                            Jivas. On this, Soamiji Maharaj stated that this physical body has become decrepit and
                                            it is not acceptable to retain it. Huzur Maharaj again requested that Daya may kindly
                                            be shown for a few days more. On this, Soamiji Maharaj accepted the request to maintain
                                            His physical body for another fifteen days, but said that such a request should not be
                                            made again because if I refuse, My heart does not feel like saying no and it also does
                                            not appear proper to keep this human body any longer. After fifteen days, on Asad Badi
                                            1 (Padwa), Samvat 1935 Vikram, Saturday, 15
                                            <sup>th</sup> June 1878, after getting His Arti performed by Huzur Maharaj and other Satsangis
                                            and Sadhus, He departed at about 1:45 pm in the afternoon.
                                            <br/><br/> &emsp;&emsp;On the departure day, at about 8 A.M., Soamiji Maharaj observed that the
                                            time of His departure was then near at hand. Thereafter, Soamiji Maharaj withdrew His
                                            Surat (spirit) and also all diffused spirituality. A quarter of an hour later, He brought
                                            down His Surat and then declared that “Mauj has now changed and there is still some time”.
                                            Then Lala Pratap Singh (youngest brother of Soamiji Maharaj) enquired “When is the Mauj
                                            now?” Soamiji Maharaj replied, “Sometime in the afternoon”. Then Sudarshan Singh enquired
                                            to whom one should refer one’s Parmarthi queries. Thereupon, Soamiji Maharaj replied,
                                            <b>“Whosoever has anything to ask, must refer it to Salig Ram (Huzur Maharaj)”.</b> Thereafter
                                            He said, “No Satsangi, whether a house-holder or a Sadhu, should worry at all. I am constantly
                                            with everyone, and greater care of all will be taken in future ....... Satsang must go
                                            on. Satsang shall spread far and wide in future”.
                                            <br/><br/> &emsp;&emsp;Annual Bhandara of Soamiji Maharaj was fixed by Huzur Maharaj as Asad Badi
                                            (Padwa) for first 50 years. Then onwards, the annual Bhandara is being held on Bhadon
                                            Badi (Janmashtami) as fixed by Babuji Maharaj, the fourth Sant Sat Guru of Radhasoami
                                            Faith.
                                            <a onclick="functionhide();return false;" style="cursor: pointer">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic2.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " style="text-align: justify;">
                                            <div class="row" id="radhajipara" tabindex="1" style="outline:none;">
                                                <h4>RADHAJI MAHARAJ</h4>
                                                Radhaji Maharaj was one of the Nij Anshas that Soamiji Maharaj brought along with Him. But She did not function as a Sant
                                                Sat Guru. However, Her role was quite significant. Radhaji Maharaj's name was Narain
                                                Dei. At the time of marriage Soamiji Maharaj said of Her that by virtue of Her high
                                                spiritual status and affinity to Him, She was destined to be with Him; so let the
                                                marriage be performed. Later on, He said that She was a Nij Ansh and came with Him
                                                from the August Abode; She was Nij Adi Radha Dhar. So She should be addressed as
                                                Radhaji.
                                                <a style="cursor: pointer" id="readmor1" onclick="functionexpand1()">
                                                    <u>Read More..</u>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="readmore2" style="text-align: justify;display:none">
                                            <br/> &emsp;&emsp;On seeing Soamiji Maharaj's countenance, Radhaji Maharaj became oblivious
                                            of Her body, mind and everything. Soamiji Maharaj alone was Her life and support. Soamiji
                                            Maharai used to explain Parmarthi matters of the highest order to Radhaji Maharaj, when
                                            she had come to Agra, after marriage. She heard His discourses in Satsang as well.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj would, for days together, shut Himself up in a small room
                                            and remain absorbed in the bliss of Surat Shabd Yoga. There was no knowing when He would
                                            need water, food or rest. It was also not certain at what time of day or night, He would
                                            require anything. So, Radhaji Maharaj had to be in attendance on Him all the time, if
                                            not physically, at least mentally and spiritually. Amid the hustle and bustle of Her
                                            multifarious duties and activities, Her attention was always riveted on Soamiji Maharaj
                                            and His requirements. It was Radhaji Maharaj alone who could do this. Though fully devoting
                                            Herself to Parmarthi activities, there was no letup in the discharge of Her multifarious
                                            household duties.
                                            <br/><br/> &emsp;&emsp;A very cool and serene current was present in Her. She had not assumed the
                                            human form just to do the household duties, though She would be seen to be busy preparing
                                            food for the family and Satsangis and doing similar things. She Was a Nij Ansh (special
                                            emanation) of Radhasoami Dayal. She was a most powerful cool current personified.
                                            <br/><br/> &emsp;&emsp;To an important question, "Whom have you appointed to look after and guide
                                            us?" Thereupon Soamiji Maharaj replied, "Radhaji for ladies and Sanmukh Das for Sadhus".
                                            Ladies should not go to the garden (Soami Bagh) to serve and pay respects to any Sadhu.
                                            They should all worship Radhaji and have Her Darshan. Addressing Rai Salig Ram (Huzur
                                            Maharaj), all Sadhus, Satsangis and Satsangins, Soamiji Maharaj observed, "You should
                                            give Radhaji the same place in your estimation as you gave me, and should treat Radhaji
                                            and Chhoti Mata Ji alike."
                                            <br/><br/> &emsp;&emsp;Radhaji Maharaj had not any function assigned to Her as in the case of the
                                            Gurumukh. Her mere presence was enough to ensure the fulfilment of the mission for which
                                            She had come with Soamiji Maharaj. Being the embodiment of Adi Surat (the prime Spirit-Current),
                                            She had a special love for and affinity with the spirit entities in these regions and
                                            exercised a peculiar attractive influence on them. This expedited their emergence from
                                            the stress of mind and matter.
                                            <br/><br/> &emsp;&emsp;Radhaji Maharaj survived Soamiji Maharaj by more than sixteen years. During
                                            these years She nursed the Satsang started by Soamiji Maharaj and saw that His successor
                                            Huzur Maharaj did not meet with opposition from the members of Her family and others.
                                            An eminent author/compiler of Chadu Panchang (almanac), has, on the basis of Soamiji
                                            Maharaj's horoscope, calculated Radhaji Maharaj's date of birth as Ashwin Sudi 5, Samvat
                                            1884 Vikram, corresponding to Tuesday, the 26
                                            <sup>th</sup> September 1827, but nothing can be said about its accuracy. She departed from
                                            this world on November 1st, 1894. Her ashes are kept with those of Soamiji Maharaj in
                                            the Holy Samadh at Soami Bagh, Agra. A small portion is also kept in Radha Bagh. Radhaji
                                            Maharaj's Bhandara was held on Saturday, 1
                                            <sup>st</sup> December 1894, in Agra. Buaji Saheba was also present on that occasion as is
                                            evident from one of the letters of Huzur Maharaj to Maharaj Saheb.
                                            <a style="cursor: pointer" onclick="functionhide1()">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic3.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " style="text-align: justify;">
                                            <div class="row" id="Huzurpara" tabindex="1" style="outline:none;">
                                                <h4>HUZUR MAHARAJ</h4>
                                                &emsp;&emsp;Huzur Maharaj was the second Sant Sat Guru of the Radhasoami Faith. He succeeded Soamiji Maharaj. Huzur Maharaj
                                                was born at half past four in the morning on Friday, the 14
                                                <sup>th</sup> March 1829, at Pipal Mandi, in a Kayasth family. Kayasth literally means,
                                                "situated in the body, the Supreme Being or Spirit". The duration of pregnancy in
                                                woman is usually nine months. Huzur Maharaj was however, born after eighteen months
                                                and the body too was developed as of a child of eighteen months. But nothing unusual
                                                was felt by the revered mother.
                                                <a id="readmor2" onclick="functionexpand2()" style="cursor: pointer">
                                                    <u>Read More..</u>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="readmore3" style="text-align: justify;display:none">
                                            <br/><br/> &emsp;&emsp;Huzur Maharaj's name was Salig Ram. He had his early education in a Maktab
                                            (primary school for boys) where he acquired proficiency in the Persian language. No University
                                            having then been established, he passed the Senior Examination in English from the Agra
                                            College, Agra. It was the highest degree in those days. Huzur Maharaj took interest in
                                            Astrology, Logic, Theology and Philosophy as well, which he studied as hobbies. He used
                                            to explain intricate and subtle points of Astrology with such felicity and clarity that
                                            left the listeners wondering. He translated Sanskrit books of Astrology into Persian,
                                            and thus made this science available to Persian-knowing people.
                                            <br/><br/> &emsp;&emsp;The spiritual instinct of Huzur Maharaj had begun to manifest itself in
                                            his very childhood. When according to the custom prevalent in his community, he was required
                                            to take initiation from the family guru, the Gosain of Mathura Bindraban, at the age
                                            of eight or nine years, he put to him some intricate questions which the latter could
                                            not answer satisfactorily. Huzur Maharaj refused to have him as his Guru. However, when
                                            pressed, he agreed on the condition that whenever he found out a true and perfect adept,
                                            he would be free to accept him as his Guru.
                                            <br/><br/> &emsp;&emsp;The first memorable meeting between Soamiji Maharaj and Huzur Maharaj took
                                            place in 1858. A Sunday was fixed for the interview. Huzur Maharaj came in the morning.
                                            Soamiji Maharaj cordially seated him in the same room where He used to perform Abhyas
                                            and which is inside another room. Huzur Maharaj related all about himself and asked several
                                            questions on Parmarth (religion), to which he received very satisfactory answers. This
                                            first audience lasted for nearly five hours. On coming out, Huzur Maharaj broke forth
                                            that he had found the One whom he had been seeking for so long. He added that since his
                                            very boyhood be had been praying, 'O my Lord! meet me Thyself'. His prayer had been granted,
                                            He had met the Supreme Being Himself.
                                            <br/><br/> &emsp;&emsp;The family of Huzur Maharaj consisted of religious-minded persons with catholic
                                            virtues. His Father Munshi Bahadur Singh, a lawyer by profession, was a great devotee
                                            of Shiva. He kept with him only as much as was needed to meet the household expenses.
                                            Rest, he gave away in charity. So would Huzur Maharaj place his entire monthly emoluments
                                            at the Holy Feet of his Guru, Soamiji Maharaj. Huzur Maharaj's mother was a good natured,
                                            intelligent and pious lady. After the demise of Huzur Maharaj's father, she brought up
                                            and educated the children astonishingly well.
                                            <br/><br/> &emsp;&emsp;Huzur Maharaj's was a full-fledged household life with large progeny and
                                            great fortune, entailing at the same time, equally great responsibilities and burdens.
                                            Even amidst the hustle and bustle of such a life he performed devotion, singular in its
                                            kind, to Soamiji Maharaj. Huzur Maharaj, in general appearance, was well built above
                                            medium height and graceful in gait and speach. His refulgent forehead, flowing beard,
                                            uplifted eyes and beatific countenance struck men at once with reverence and love. He
                                            exercised an irresistible personal charm and attraction on all those who came in contact
                                            with Him. The whole atmosphere of the place in which He lived was surcharged with love
                                            and attraction which even a casual visitor would feel and realize. He was generous and
                                            benevolent to the extreme, just as a mother is to her children. Huzur Maharaj's place
                                            was verily a perennial source for the flow of spirituality from the feet of the Supreme
                                            Father to this arid and barren part of creation.
                                            <br/><br/> &emsp;&emsp;At the age of 18, Huzur Maharaj entered Government service. He got an appointn1ent
                                            in the office of the Postmaster General. He was deputed to Saharanpur in 1850, and then
                                            to Allahabad in 1851, on special duty and in recognition of his good work, was made,
                                            on 1
                                            <sup>st</sup> April 1852, an Inspecting Postmaster. On 1
                                            <sup>st</sup> July 1852, Huzur Maharaj was made the Head Assistant in the office of the Postmaster
                                            General. In 1868, Huzur Maharaj was promoted as Personal Assistant to the Postmaster
                                            General and on 31
                                            <sup>st</sup> August 1871, the title of Rai Bahadur was conferred on him as a mark of personal
                                            distinction. He was, since then, known in official circles as Rai Salig Ram Bahadur.
                                            On the 28
                                            <sup>th</sup> April 1881, he had the unique honour of being the first Indian to be made the
                                            Postmaster General of the North Western Frontier Provinces which then included Uttar
                                            Pradesh, Punjab, Rajasthan and Madhya Pradesh. Huzur Maharaj's name is still remembered
                                            in connection with the introduction of one-pice post card and is associated with many
                                            reforms relating to cheap postal services and facilities of which the inhabitants of
                                            poor and economically under-developed countries like India could take full advantage.
                                            He was recognized as the beacon light of truth, virtue and efficiency in the department.
                                            Throughout his career, Huzur Maharaj won praise and admiration everywhere. Although almost
                                            the whole of his time and attention were devoted to the service of Soamiji Maharaj, there
                                            was not the least deterioration in the quality and the magnitude of the work entrusted
                                            to him as an important and high officer of the postal department. Without a single mistake,
                                            He discharged his duties well. He moved from one department to another, accepting added
                                            responsibilities with cheerfulness and efficiency. In consideration of his distinguished
                                            services, his excellent conduct, the Secretary of State for India, granted him a special
                                            pension. Huzur Maharaj, throughout his service career, experienced special grace and
                                            mercy of Radhasoami Dayal. Often, while on tour, he had to pass through dangerous routes,
                                            forests and hillocks, and cross swollen rivers and brooks, at any hour of the day or
                                            night. But the protecting hand of Radhasoami Dayal was always on his head.
                                            <br/><br/> &emsp;&emsp;Huzur Maharaj was in Soamiji Maharaj's Satsang for about twenty years during
                                            which period he served His Guru with His body, mind and riches with singular loyalty
                                            and singleness of devotion of which it is impossible to find a parallel. For a long time
                                            he used to fetch a pitcher of pure water on his shoulder for Soamiji Maharaj from a well
                                            two miles away. For this he walked barefooted on the stone pavements in hot summer of
                                            May and June. He used to grind flour for Soamiji Maharaj's bread. He used to press the
                                            feet, operate manual fan, fill the Huqqa, cook food, bathe Him, clean and paint the house,
                                            pluck twigs from Neem trees to be used as brush, clean toilet & drain, wash dishes, bring
                                            goods from the market, lift Him on his shoulders, carry the palanquin, run with the vehicle,
                                            offer spittoon, handle the whisk etc. He used to dig deep to get clean earth for washing
                                            His hands. Every morning he used to sweep the rooms and verandahs of Soamiji Maharaj's
                                            house. He performed all kinds of high and low services. All these gave him pleasure and
                                            satisfaction. Huzur Maharaj performed these Sewas (services) with a verve and gusto that
                                            was a pure joy to watch.
                                            <br/><br/> &emsp;&emsp;Huzur Maharaj attended on Soamiji Maharaj from twelve to fifteen hours a
                                            day. After the establishment of General Stasang in 1861, when Soamiji Maharaj took up
                                            the composition of Sar Bachan Radhasoami Poetry, Huzur Maharaj would take down dictation
                                            for hours together. He would also attend on Soamiji Maharaj's correspondence. The historic
                                            letter given in chapter 27 was written by Huzur Maharaj under instructions from Soamiji
                                            Maharaj.
                                            <br/><br/> &emsp;&emsp;Soamiji Maharaj had ordained that, in future, Satsang would spread far and
                                            wide. This exactly happened in the time of Huzur Maharaj. On His retirement from Government
                                            service, when Huzur Maharaj held Satsang at Agra, thousands of people received initiation
                                            into Radhasoami Faith. They flocked from every part of India, viz., Bengal, Punjab, Sindh,
                                            Deccan, Rajputana, Bombay, Central India, etc., and received spiritual benefit. Satsang
                                            was held several times during day and night. Huzur Maharaj's discourses were very sweet
                                            and impressive. He used to reveal the secrets of Radhasoami religion in such a unique
                                            and new manner every time that the audience was wonder struck. Sometimes persons would
                                            come in batches at different hours and Huzur Maharaj would discuss religion with each
                                            of them in entirely different manners, from different view points and in new and varied
                                            forms. A listener would, at once, become His slave. Adhikari Jivas were coming over from
                                            long distances as if under a magnetic pull. Satsangis used to get many experiences of
                                            grace, mercy and protection, but were forbidden to disclose them to anybody. "It is the
                                            pleasure of the Supreme Being that whatever He does by His grace and mercy should not
                                            be made public. It, therefore, behoves a true Parmarthi not to speak out to anybody about
                                            the grace which he experiences internally or by which his affairs are satisfactorily
                                            managed. He should offer thanks to the Supreme Being internally. Of course, he is not
                                            prohibited from giving indications of such experiences to Parmarthis and loving devotees
                                            on some special occasions, because they also have experiences of such grace and mercy
                                            and Mauj in their own affairs. He was all-powerful. He showed that no one can know the
                                            secrets of Sants unless They themselves are pleased to impart the same to Jivas. Huzur
                                            Maharaj used to give very patient hearing. Satsangis would often relate their petty household
                                            affairs. But Huzur Maharaj would never scold anybody. At the most, He would say, "Brother,
                                            you are talking about such a proposition that nothing can be said". Anger was miles away
                                            from Him. He used to take very little rest. All the time He was busy in holding Satsang,
                                            delivering discourses, explaining Parmarth to new entrants, dictating replies to the
                                            letters of Satsangis, Bachans of Prem Patras. Huzur Maharaj used to put on different
                                            types of dresses. It was really a wondrous sight to see Him in coat and cap made of velvet
                                            with embroidery work on them, walking down the incline, on His way to Panni Gali, with
                                            His hand resting on the shoulder of Maharaj Saheb and Satsangis following in procession.
                                            <br/><br/> &emsp;&emsp;About a week before His departure, Huzur Maharaj strolled a few rounds in
                                            the verandah of Prem Bilas, casting His gaze on the Satsangis present. Someone said,
                                            "Today Huzur's health appears to be better. Huzur Maharaj observed, "Sants are great
                                            Thagias (masters at befooling)". On the evening of 6
                                            <sup>th</sup> December at 6:40 PM, Huzur Maharaj enquired as to what time it was then and
                                            ordered the pillows and bolsters to be arranged on the bedstead. And after five minutes
                                            He left his mortal coil. His eyes were shining and face was lustrous and refulgent. Huzur
                                            Maharaj's body lay in state for three days to allow numerous Satsangis from far off places
                                            to have a last glimpse of Him. Huzur Maharaj's Samadh was built in Prem Bilas exactly
                                            on the spot where He left His mortal coil. His first Bhandara was held on 27
                                            <sup>th</sup> December 1898.
                                            <br/><br/> &emsp;&emsp;A large number of books, big and small, and treatises in prose and verse,
                                            were written to the dictation of Huzur Maharaj, all printed and published in His time.
                                            They can be classified in four categories viz. (i) Prem Bani in verse, (ii) Prem Patra
                                            in prose, (iii) Booklets in Hindi and Urdu and (iv) Radhasoami Mat Prakash in English.
                                            <a style="cursor: pointer" onclick="functionhide2()">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic4.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10" style="text-align: justify;">
                                            <div class="row" id="Maharaparaj" tabindex="1" style="outline:none;">
                                                <h4>MAHARAJ SAHEB</h4>
                                                &emsp;&emsp;Maharaj Saheb was the third Sant Sat Guru of Radhasoami Faith. He was born in Piyari Kalan, Kabir Chauni, Varanasi,
                                                on Thursday, the 28<sup>th</sup> March 1861. Maharaj Saheb's name was Brahm Shankar. Huzur Maharaj had given Maharaj Saheb the Parmarthi name 'Premanand'.
                                                <a id="readmor3" onclick="functionexpand3()" style="cursor: pointer">
                                                    <u>Read More..</u>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="readmore4" style="text-align: justify;display:none">
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb was born in a highly respected Brahmin family of intellectuals.
                                            A deep religious inclination and a broad and independent outlook required for spiritual
                                            advancement were not lacking in it. This is borne out of the fact that His father Pandit
                                            Ramjasan Misra, though belonging to a staunchly conservative family of Sanatani Brahmins
                                            accepted a famous Muslim Fakir of Patna as his Guru without any fear or opprobrium.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb got married at a very early age. His consort was just nine
                                            at the time of marriage. She was younger by six months to Maharaj Saheb. She was called
                                            ‘Naiyaji’ .Huzur Maharaj had given the Parmarthi name 'Shabd Pyari' to Naiyanji. One
                                            day Naiyanji prayed to Huzur Maharaj to deliver a discourse. Huzur Maharaj replied, "Don't
                                            worry, you will be having discourses at your own house," adding "the next Sant Incarnate
                                            will be in a Brahmin family."
                                            <br/><br/> &emsp;&emsp;According to the traditions of the time, Maharaj Saheb paid much attention
                                            to body building, performed a lot of physical exercises. He was a great athlete and a
                                            wrestler, ready to challenge any and everybody. The bad characters and even policemen
                                            of Kashi (Varanasi) feared him. In contrast, Babuji Maharaj was lean, thin and short
                                            statured. But, because both of them always moved together, people feared Babuji Maharaj
                                            too and no one dared raise a finger against him. Maharaj Saheb had a liking for music
                                            also. He played Sitar well. Whenever His father had a spell of heartache, He would play
                                            Sitar which would lull him to sleep.
                                            <br/><br/> &emsp;&emsp;At B.A, Maharaj Saheb had English Literature, Sanskrit and Physics as His
                                            subjects. He took His M.A. degree in English literature in 1884. On completion of His
                                            education, Maharaj Saheb joined Bareilly College as a teacher. He also commenced the
                                            study of law, but soon gave it up as the lawyer's profession did not suit His temperament.
                                            Actually, the time for His joining the Satsang had come. The first meeting of Maharaj
                                            Saheb and Huzur Maharaj was momentous. Maharaj Saheb and Babuji Maharaj went to railway
                                            station to receive Huzur Maharaj. Maharaj Saheb stood leaning against a lamp post waiting
                                            for the train to arrive. The train steamed in and gradually came to a halt. Huzur Maharaj
                                            was standing at the door of His compartment. No sooner Maharaj Saheb had darshan (glimpse)
                                            of Huzur Maharaj, than His Surat was so "strongly withdrawn towards the third Til, that
                                            He was about to fall but Babuji Maharaj lent Him support. Maharaj Saheb stood leaning
                                            against the lamp post. Maharaj Saheb was feeling the infusion of a strange power in Him.
                                            He was having a new experience, which He could neither comprehend nor unfold to others.
                                            A sort of electric current was flowing in His body. After having adopted Huzur Maharaj
                                            as His Guru, Maharaj Saheb had practically withdrawn His attention from the world and
                                            all that it stands for. That worried His mother very much. She often used to say that
                                            her Munua had stopped eating and drinking everything. What sort of Guru he has adopted
                                            that there is no knowing what might happen to Him.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb got appointed as clerk with Accountant General's Office. Within
                                            six years of His appointment, Maharaj Saheb became a Superintendent. In 1905, He was
                                            promoted as Chief Superintendent. This was the highest position in that department which
                                            one could expect in those days. He held this post till He took leave preparatory to retirement.
                                            His promotions to the post of Superintendent and Chief Superintendent were out of turn
                                            and in supersession of His seniors. In fact, His unusual abilities entitled Him to much
                                            higher promotions but He never courted them. On the other hand, His perfect contentment,
                                            His total exclusiveness and indifference to all matters except what strictly constituted
                                            His official duties and the desire to remain as near to His Guru as possible, were some
                                            of the reasons why He was not promoted to class one of the Indian Audit and Accounts
                                            Service. His superior officers agreed to give Him only what He could accept in the above
                                            circumstances. He served for 20 years and received promotion after promotion. He was
                                            nominated for Deputy Collectorship which He declined.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb used to hold Satsang three times a day, early morning, evening
                                            and night.The audience consisting of both males and females numbered from three to seven
                                            or eight hundred. Discourses were almost invariably delivered at each divine service
                                            and their fame spread far and wide. Abstruse spiritual truths were elucidated on strictly
                                            scientific lines. The supernatural flow and eloquence combined with the irresistible
                                            logic of His discourses held the audiences consisting mostly of educated men spellbound.
                                            They all listened with rapt attention and a feeling of deep veneration. Thousands of
                                            persons were initiated by Him into the principles of Radhasoami Faith. A new element
                                            of discipline and regimentation was introduced by Maharaj Saheb. Satsang was to commence
                                            punctually irrespective of the change in the season both in the morning and in the evening
                                            and sometimes at midnight also. Maharaj Saheb delivered discourses almost every day and
                                            sometimes more than once in the day. The duration of each Satsang was quite long and
                                            the audience was large and varied. There were separate places for seating men and women
                                            and a separate shed for the children and their attendants so that they might not disturb
                                            the Satsang.
                                            <br/><br/> &emsp;&emsp;During Huzur Maharaj's time, signs had begun to make themselves visible
                                            of a desire on the part of certain sections of Satsangis to form themselves into separate
                                            groups and of the assertion by certain persons of the right of interest in properties
                                            which had by that time come into the possession of the Satsang. In order to check this
                                            disruptive tendency as also to obviate the difficulties which might arise during the
                                            periods intervening between the succession of Gurus and to maintain the undisturbed continuity
                                            of the management, Huzur Maharaj wanted to create a body to administer for all time the
                                            property of the Satsang under the guidance of the Sant Sat Guru. In fact, a rough scheme
                                            had been drawn out for the purpose. But before it could take a concrete form, Huzur Maharaj
                                            departed from this world. This work was taken up in right earnest by Maharaj Saheb in
                                            1902 resulting in the creation of a body called the Central Administrative Council and
                                            its adjunct, the Radhasoami Trust, whose headquarters are located at Soami Bagh, Agra.
                                            With the assemblage of a large number of persons with varied spiritual outlook and ambitions,
                                            schisms are inevitable, but the organic unity of the parent stock, which is the custodian
                                            of and maintains the original principles and teachings of the Founder in their pristine
                                            purity, remains unaffected under the aegis of the Sant Sat Guru assisted by the Central
                                            Administrative Council established by Maharaj Saheb. The parent stock consists of persons
                                            whose ideals are to engage themselves in spiritual pursuits uncontaminated, as far as
                                            possible, with the ambitions of the world .Their aim is to reduce their worldly engagements
                                            to a minimum, more or less confined to such as are needed to maintain themselves and
                                            their families in decency and to help the needy and the poor when occasion arises.
                                            <br/><br/> &emsp;&emsp;The idea of erecting a magnificent and stupendous Samadh building befitting
                                            the memory of the August Founder of Radhasoami Faith, originated with Maharaj Saheb.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb started dictating the English book "Discourses on Radhasoami
                                            Faith" in 1907. Mr. Cooper used to note down the dictation. Babuji Maharaj would touch
                                            up and read it out to Maharaj Saheb. Due to Maharaj Saheb's indifferent health the dictation
                                            of this book had to be stopped off and on, ultimately when His health broke down, He
                                            altogether stopped dictating what had yet to be done on the book, as also revising the
                                            already dictated material. After having dictated these basic principles Maharaj Saheb
                                            stopped further dictating the book. The apparent reason was His failing health. The book
                                            was later published by Babuji Maharaj. His discourses during Satsang are compiled in
                                            the book 'Discourses of Maharaj Saheb'.
                                            <br/><br/> &emsp;&emsp;Nearly a century ago Maharaj Saheb had in one of His discourses predicted
                                            that in future, Satsang would be telecast in such a manner that Satsangis all over the
                                            world would be able to hear the discourses of the Sant Sat Guru and have His Darshan
                                            at the touch of a button.
                                            <br/><br/> &emsp;&emsp;After about one and a half year of initiation, Maharaj Saheb contracted
                                            such a severe dysentery that He could not get up from His bed, nor could He eat anything.
                                            His diet was reduced considerably. He even lost the urge to eat or drink anything. But this was not due to illness
                                            rather, it was what has been described in the following lines:-
                                            <br/>
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>When the portal to heavenly spheres opens up, </b>
                                            <br/>
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>sleep and appetite begin to wane.</b>
                                            <br/><br/> &emsp;&emsp;When Maharaj Saheb's end drew near,
                                            Naiyanji had said, "Who will look after us? "Maharaj Saheb raising His hand skyward,
                                            said thrice, "Radhasoami, Radhasoami, Radhasoami".
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb departed on Saturday, the 12th October 1907 in Soami Bagh,
                                            Benaras. The hall in Soami Bagh, Varanasi, where Satsang is held now-a-days, was under
                                            construction in Maharaj Saheb's time, and the same was converted into His Samadh after
                                            His departure.
                                            <a style="cursor: pointer" onclick="functionhide3()">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2" style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic5.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " id="bujaji" style="text-align:justify;outline:none;" tabindex="1">
                                            <h4>BUAJI SAHEBA</h4>
                                            &emsp;&emsp;Buaji Saheba was the elder sister of Maharaj Saheb. She was senior to Maharaj Saheb by four years and functioned
                                            as the fourth Sant Sat Guru of Radhasoami Faith. Her actual name was Maheshwari Devi.
                                            Buaji Saheba's father's house and father-in-law's house were both located in the same
                                            locality of Varanasi, called "Bari Piyari".
                                            <a id="readmor4" onclick="functionexpand4()" style="cursor: pointer">
                                                <u>Read More..</u>
                                            </a>
                                        </div>
                                        <div id="readmore5" style="text-align: justify;display:none">
                                            <br/><br/> &emsp;&emsp;Very shortly before His departure, Maharaj Saheb in one of His last discourses
                                            (public utterances) in open Satsang, declared in the presence of a large number of people
                                            that the 'Nij Ansh' or a direct emanation from the Supreme Source endowed with full spiritual
                                            powers, existed at the time in the body of a female and further exhorted that all should
                                            direct their devotion to Her instead of trying to find a successor in one or other of
                                            the Satsangis. He added that though She, owing to Her being in a female garb, would not
                                            be able to discharge the functions in full, of an Acharya of the Mat, yet She would accord
                                            internal assistance necessary for the spiritual advancement of Her devotees and also
                                            give external assistance to some extent. In addition to above, Maharaj Saheb, about a
                                            month before this declaration in Satsang, gave out in the presence of few Satsangis that
                                            the Nij Ansh existed in His sister Buaji Saheba.
                                            <br/><br/> &emsp;&emsp;In Her old age, Her health was failing day by day and She stayed behind
                                            the curtain. It was for a very short time that She presided over Satsang. As such very
                                            few people could derive benefit from Her Satsang. After Maharaj Saheb's departure, Buaji
                                            Saheba did not agree to function openly for a pretty long time. Satsangis could go near
                                            Her and derive benefit from Satsang only when Babuji Maharaj was there with Her. Some
                                            Satsangis were exceptions to this rule. They could go and meet Buaji Saheba at any time.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb often used to say that the next Sant Sat Guru would effect
                                            the weeding so that the true and pure Satsang would be left to a small size. After the
                                            departure of Maharaj Saheb, the necessary weeding and purging happened in which many
                                            people formed their own Guru at a different city and started their own Satsang.
                                            <br/><br/> &emsp;&emsp;Buaji Saheba left Her mortal coil at 12.30 in the night between Tuesday,
                                            the 20
                                            <sup>th</sup> May and Wednesday, the 21
                                            <sup>st</sup> May, 1913.
                                            <a style="cursor: pointer" onclick="functionhide4()">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic6.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " id="babji" style="text-align: justify;outline:none;" tabindex="1">
                                            <h4>BABUJI MAHARAJ</h4>
                                            &emsp;&emsp;Babuji Maharaj was the fifth and the last manifest Sant Sat Guru of Radhasoami Faith. Babuji Maharaj was the
                                            last of the Nij Anshas who came in the time of Soamiji Maharaj. His life on earth coincided
                                            practically with the growth of Radhasoami Satsang established in 1861, the year of his
                                            birth. His association with the Satsang was the longest of all. So, with His departure
                                            at the ripe age of 88, closed the biggest chapter in the history of Radhasoami Satsang.
                                            <a id="readmor5" onclick="functionexpand5()" style="cursor: pointer">
                                                <u>Read More..</u>
                                            </a>
                                        </div>
                                        <div id="readmore6" style="text-align: justify;display:none">
                                            <br/><br/> &emsp;&emsp;In the early hours of Wednesday, the 19
                                            <sup>th</sup> June 1861, Babuji Maharaj was born as a grandson to the elder sister of Soamiji
                                            Maharaj, at Varanasi (Benaras). Babuji Maharaj's name was Madhav Prasad Sinha but,
                                            out of love and affection, he was called "Raja" (King). In January 1874 Soamiji Maharaj
                                            initiated Babuji Maharaj in Radhasoami Faith. Huzur Maharaj gave Babuji Maharaj the parmarthi
                                            name of "Prem Adhar".
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj's mother was a great Parmarthi (pious) lady. She always kept
                                            Satsang and Parmarth (spiritual welfare) above all worldly pursuits. In the beginning of 1921, Babuji Maharaj's mother passed away. She could neither
                                            see nor hear. She was unmindful and oblivious of any physical injury or pain or even
                                            bleeding. She remained in this state for quite some time. Often, she would say, "Look! Soamiji Maharaj, Huzur Maharaj and Maharaj
                                            Saheb have graced me by their arrival here." At times, she would call Babuji Maharaj
                                            and say, "Raja! Should I be lying in bed like this in your presence?" Babuji Maharaj
                                            would reply, "Bhabhi! Just remember what Soamiji Maharaj had told you that you have not
                                            to be reborn in this world". Babuji Maharaj's father had a big jewellery shop in Kolkata
                                            (Calcutta). In a short time, he earned so much that even the utensils of daily use were
                                            of silver.
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj's father passed away on Saturday, the 1
                                            <sup>st</sup> May 1875, at the age of 44, when Babuji Maharaj was only fourteen years. It
                                            has been observed that parents of Sants, Sadhs and Mahatmas often die at a young age.
                                            Huzur Maharaj's father died when Huzur Maharaj was only four years of age.
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj used to wear long hair during childhood. He was fond of playing
                                            upon musical instruments, specially sitar (a kind of guitar). He was very sharp in reading
                                            and writing. In the beginning, He was not sent to any school. A tutor used to come to
                                            his house to teach him Persian language, in which he was a muntahi (very proficient)
                                            and was considered to be a good scholar of Persian even at the young age of 13 or 14
                                            years. Once when Babuji Maharaj entered his class room on the first day, he felt a bit
                                            perplexed and was thinking where he should sit, as all the seats were occupied, except
                                            one by a robust boy. So robust and sturdy was he, that nobody dared sit near him. This
                                            robust and sturdy boy was none other than Maharaj Saheb. As soon as their eyes met, Maharaj
                                            Saheb instantly beckoned Babuji Maharaj to sit by his side and added that he should sit
                                            with him daily. Maharaj Saheb greeted Babuji Maharaj like an old friend. From that day
                                            on, both were seen together all the time. Both were drawn towards each other due to internal
                                            attraction, as both had descended from Radhasoami Dham for the same benevolent purpose.
                                            Two opposite forces were working upon Babuji Maharaj during his boyhood, the aforesaid
                                            atmosphere of Kashi (Varanasi) and the influence of his uncle Sri Shiv Prasad on the
                                            one hand and Soamiji Maharaj and His Satsang on the other. In 1884, he obtained the degree
                                            of M. A. (Master of Arts) in English Literature from the premier University of Kolkata
                                            (Calcutta), as a student of the Benares College.
                                            <br/><br/> &emsp;&emsp;At the age of sixteen Babuji Maharaj was married to Srimati Bhagwan Dei,
                                            daughter of Sri Chiranji Lal Seth of Shikohabad (U.P). Huzur Maharaj gave her the parmarthi
                                            name of Surat Pyari. She was generally called Maiyanji. Maiyanji means revered mother.
                                            <br/><br/> &emsp;&emsp;Maharaj Saheb and Babuji Maharaj took their M. A. degree in 1884. Thereafter,
                                            they commenced the study of law, but soon discovered that a lawyer's profession would
                                            not suit them as it requires constant exercise and diversion of mental faculties to mundane
                                            affairs, which leave little time for meditation and for the care of the soul. Babuji
                                            Maharaj was temperamentally very soft and obliging. He would not mind working for extra
                                            hours, if necessary. His sole aim was efficiency. He worked as a Superintendent in the
                                            budget section for a long time. Maharaj Saheb himself used to appreciate the ability
                                            of Babuji Maharaj. The Accountant General often used to send difficult and complicated
                                            cases for drafting and disposal to Babuji Maharaj. Being impressed with the ability and
                                            gentle behaviour of Babuji Maharaj, the Accountant General recommended to the Government
                                            for the conferment of the title of "Rai Saheb" on him, which was granted in 1914. Since
                                            then be came to be known as Rai Saheb Madhav Prasad Sinha. In 1918, when Babuji Maharaj
                                            proceeded on leave preparatory to retirement, the office staff was very much grieved.
                                            Babuji Maharaj was pleased to observe that he had already written a long letter to the
                                            Government of India for enhancing their salary and introduction of time scale of pay.
                                            By Mauj, it was accepted.
                                            <br/><br/> &emsp;&emsp;When Maharaj Saheb became Sant Sat Guru, Babuji Maharaj considered Him to
                                            be his Guru. He had totally forgotten that Maharaj Saheb was his friend and companion
                                            of boyhood. He knew Him to be the Supreme Being personified, and loved Him as such. Babuji
                                            Maharaj had always his eyes on the Charans (Feet) of Maharaj Saheb. He performed all
                                            sorts of Sewa (service), high and low. He had, in fact, merged his entire existence in
                                            Maharaj Saheb. If he purchased anything from the market for his personal use, as for
                                            instance, apparel for wearing, he would first purchase it for Maharaj Saheb.
                                            <br/><br/> &emsp;&emsp;Formerly, the members of a certain low caste were not allowed to enter the
                                            Samadh of Soamiji Maharaj. When Babuji Maharaj came to know of it, He ordered that no
                                            one should be denied entry into the Samadh. Casteism should be kept away from here. All
                                            should get an opportunity to pay homage at the Holy Samadh. From that day onwards, all
                                            people are allowed free entry into the Samadh. There was a large collection of discourses,
                                            which were noted down and reproduced from memory, after they had been delivered by Babuji
                                            Maharaj in Satsang. Babuji Maharaj ordered their publication. The manuscript was sent
                                            to the press on the 19
                                            <sup>th</sup> August 1945, and by His grace, after complete one year, i.e. on the 19
                                            <sup>th</sup> August 1946, which was the day of the annual Bhandara of Soamiji Maharaj, the
                                            three volumes of Bachans or discourses were out. The fourth volume came out on the 16
                                            <sup>th</sup> December 1946.
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj used to read the daily papers, magazines, etc. till the end
                                            of 1940. Gradually He stopped doing so, and asked His personal assistant to read out
                                            the same to Him.Babuji Maharaj was lying in bed for six and a half years. He neither ate
                                            anything nor sat or stood up. He could not change sides on the bed without help. All
                                            that He took in 24 hours was just a little milk. A Satsangi had posed the question, "When
                                            Saints do not have any Karams, why do they fall ill? It is true that they may not be
                                            feeling any pain or restlessness or undergoing any suffering, yet to the outward appearance
                                            it looks as if the body is suffering trouble and pain. What is their Mauj and purpose
                                            behind all this?". Babuji Maharaj replied, "the Karams of the creation are reduced".
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj had no particular disease, except weakness due to old age,
                                            and cough, which increased or decreased with the change of season or weather conditions
                                            and due to which sometimes temperature also rose. He could not get up from bed due to
                                            weakness. In comparison to 1943, His condition was much better in later days. As regards
                                            His daily food, it was meagre even during His youth. But during illness it was almost
                                            nil. Still He listened carefully to the prayers of Satsangis. At 10 or 11 in the forenoon,
                                            Satsang account books were daily read out to Him. Letters of Satsangis were read out
                                            to Him and He used to give instructions regarding replies. He attended to the affairs
                                            of Satsang and Satsangis, which were brought to His notice. Satsangis had several opportunities
                                            during day and night to have His darshan. Out station Satsangis also visited Soami Bagh
                                            more often than before for having the maximum benefit of darshan and Satsang during the
                                            last days of Babuji Maharaj when He also, in His august Mauj, had opened the doors of
                                            unbounded grace and mercy. Babuji Maharaj remained, for the most part, in a state of
                                            concentration and withdrawal. He would bring down the spirit current for a little while
                                            and that too in a very small measure.
                                            <br/><br/> &emsp;&emsp;Babuji Maharaj was continually enhancing the flow of His ambrosial grace
                                            and mercy as the time of His departure to Original Abode was drawing nearer and nearer.
                                            This flow of grace and mercy was there for ever but its form was different at different
                                            times. To any request or prayer made to Him, He would always say, 'yes'. He agreed to
                                            whatever was pleaded before Him. After His departure, the first Bhandara of Babuji Maharaj
                                            was held on Sunday the 23
                                            <sup>rd</sup> October 1949 in Soami Bagh, Agra. Babuji Maharaj's ashes have been enshrined
                                            in the Cremation Memorial in Radha Bagh, and also kept in His room in Soami Bagh. At
                                            both these places Satsangis pay obeisance.
                                            <a style="cursor: pointer" onclick="functionhide5()">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/Pic7.gif" alt="" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " style="text-align: justify;outline:none;" tabindex="1">
                                            <h4>LIVING SANT SAT GURU</h4>
                                            &emsp;&emsp;The living True Teacher of the Radhasoami Faith is not teaching publicly at this time. In the Radhasoami Faith,
                                            it is said that, the Sant Sat Guru or Guru of the time is "not manifested". The current of redemption
                                            is guaranteed to be continuous by Radhasoami Dayal Himself during His manifestation as
                                            Soamiji Maharaj. There is a growing awareness among the followers as to who the personality
                                            of the Living Saintly True Teacher is, but until such time as the Sant Sat Guru chooses
                                            to manifest or teach publicly His identity cannot be revealed. The most fortunate among
                                            the followers may have personal experiences with the Sant Sat Guru during this period
                                            known as "interregnum". However, in general, nothing is stated publicly to disclose
                                            the identity. There are good reasons why the Sant Sat Guru chooses to remain hidden for some time.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (Images) -->
                            <div id="Images" class="row ">
                                <div class="col-md-2  "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>PHOTOGRAPHS</h3>
                                                <!--You can explore the complete collection of photgraphs of Radhasoami Faith here.-->
                                                <h4 style=" font-weight: bold; color: gray; text-align: center">Photographs would be available soon</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (Books) -->
                            <div id="Books" class="row ">
                                <div class="col-md-2  "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>BOOKS</h3>
                                                You can explore the complete collection of books in available languages here.
                                                <!--<h4 style=" font-weight: bold; color: gray; text-align: center">Books would be available soon</h4>-->
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>
                                            <b>Search:</b>
                                            <asp:TextBox ID="textbooksearch" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px">
                                            <b><asp:Button runat="server" ID="btn_book" Text="SEARCH" /></b>&emsp;<u style=" color: #337ab7;">Note:</u> To reset the table, keep the search box empty (blank) and click search.
                                            <br />
                                            <br />
                                            <div id="snackbarBook">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="Panel5" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVBook" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Book Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Book_Title_Eng" runat="server" Text='<%# Bind("Book_Title_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Original/Translation">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Orig_Eng" runat="server" Text='<%# Bind("Orig_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Language">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Lang_Eng" runat="server" Text='<%# Bind("Lang_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Author/Translator">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Auth_Eng" runat="server" Text='<%# Bind("Auth_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Available at Office">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Avail_Office_Eng" runat="server" Text='<%# Bind("Avail_Office_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Book Summary">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Book_Sum_Eng" runat="server" Text='<%# Bind("Book_Sum_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                    <a href="<%#Eval("bookLink")%>" target="_blank">Read Online</a>
                                                                    &emsp;&emsp;<a href="<%#Eval("bookLink")%>" download><span class="glyphicon glyphicon-save"></a>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (Audio Prose) -->
                            <div id="Audio" class="row ">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>AUDIO</h3>
                                                Here you can find the complete collection of audio rendetions (by Satsangis) of (i) Discourses, poetry of all Sant Sat Gurus
                                                of Radhasoami Faith and (ii) Poetry of other Sants. The rendetions are in Hindi language.
                                                <br/>
                                                <br/>
                                                <button style="background-color: #337ab7; border-color: #337ab7;" type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                                    <i class="glyphicon glyphicon-align-left"></i>
                                                    <span>Playlist</span>
                                                </button>
                                                &emsp;(You can open and hide the playlist by this button)
                                                <br/>
                                                <u style=" color: #337ab7;">Note:</u> The playlist will be cleared when the webpage refreshes.
                                            </div>
                                        </div>
                                    </div>
                                    <div id="Prose" class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-10  " style="text-align: justify;">
                                                <br/>
                                                <h4>PROSE</h4>
                                                In the below table, you can listen to the audio rendetions (by Satsangis) of Discourses of all Sant Sat Gurus of Radhasoami
                                                Faith. The rendetions are in Hindi language. Login is required for downloading the
                                                audio files.
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>
                                            <%--<asp:Label runat="server" ID="Label2" Text="Discourse of Sant Sat Guru:"></asp:Label>--%>
                                        <%--    <asp:DropDownList ID="ddlbachan" runat="server" Width="228px" Height="25px" AutoPostBack="true" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0" Text="ALL"></asp:ListItem>
                                            </asp:DropDownList> --%>
                                            Search:
                                            <asp:TextBox ID="txtproseSearch" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px">
                                            <asp:Button runat="server" ID="btn_bachan" Text="SEARCH" />
                                            <br />
                                            <br />
                                            <div id="snackbarBachan">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="Panel3" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVBachan" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Author">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Book Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="BookName_English" runat="server" Text='<%# Bind("BookName_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Bachan No.">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Bachan_English" runat="server" Text='<%# Bind("Bachan_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Bachan Summary">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Bachan_Summary_English" runat="server" Text='<%# Bind("Bachan_Summary_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Duration" runat="server" Text='<%# Bind("Duration", "{0: hh:mm}")  %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                <audio controls>
                                                                    <source src='<%#Eval("Link")%>' type="audio/mp3">
                                                                </audio>
                                                                <div class="btn btn-success" added="false" sname='<%#Eval("plHeader") %>'
                                                                    audiourl='<%#Eval("Link")%>' duration='<%#Eval("Duration") %>'>Add to playlist</div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (Shabd) -->
                            <div id="Shabd" class="row ">
                                <div class="col-md-2  ">
                                </div>
                                <div class="col-md-10  ">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-10  " style="text-align: justify;">
                                                <br/>
                                                <h4>POETRY - RADHASOAMI FAITH</h4>
                                                In the below table, you can listen to the audio rendetions (by Satsangis) of Poetry of Sants of Radhasoami Faith. The rendetions
                                                are in Hindi language. Login is required for downloading the audio files.
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                           <%-- <asp:Label runat="server" ID="lblshabd" Text="Book Name:"></asp:Label>
                                            <asp:DropDownList ID="ddlshabd" runat="server" Width="228px" Height="25px" AutoPostBack="true" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0" Text="ALL"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label runat="server" ID="Label1" Text="Special Occassion:"></asp:Label>
                                            <asp:DropDownList ID="ddlspl" runat="server" Width="228px" Height="25px" AutoPostBack="true" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0" Text="ALL"></asp:ListItem>
                                            </asp:DropDownList>--%>
                                              Search:
                                            <asp:TextBox ID="txtshabdsearch" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px">
                                            <asp:Button runat="server" ID="btn_shabd" Text="SEARCH" />
                                            <br />
                                            <br />
                                            <div id="snackbarShabd">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVShabd" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Shabd Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Shabd_Name_Eng" runat="server" Text='<%# Bind("Shabd_Name_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Book Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Book_Name_Eng" runat="server" Text='<%# Bind("Book_Name_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Bachan">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Bachan" runat="server" Text='<%# Bind("Bachan") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Shabd">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Shabd" runat="server" Text='<%# Bind("Shabd") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Special Occasion">
                                                            <ItemTemplate>
                                                                <asp:Label ID="SplOccasion_Eng" runat="server" Text='<%# Bind("SplOccasion_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Duration" runat="server" Text='<%# Bind("Duration", "{0:hh:mm}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                <audio controls="controls" class="tableAudio">
                                                                    <source src='<%#Eval("Link")%>' type="audio/mp3">
                                                                </audio>
                                                                <div class="btn btn-success" added="false" sname='<%#Eval("Shabd_Name_Eng") %>' audiourl='<%#Eval("Link")%>' duration='<%#Eval("Duration") %>'>Add to playlist</div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (Sant Bani) -->
                            <div id="SantBani" class="row ">
                                <div class="col-md-2  ">
                                </div>
                                <div class="col-md-10  ">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-10" style="text-align: justify;">
                                                <br/>
                                                <h4>SANT BANI</h4>
                                                In the below table, you can listen to the audio rendetions (by Satsangis) of Poetry of Sants of other Faith. The rendetions
                                                are in Hindi language. Login is required for downloading the audio files.
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                           <%-- <asp:Label runat="server" ID="Label3" Text="SantBani Author:"></asp:Label>
                                            <asp:DropDownList ID="ddlsantbani" runat="server" Width="228px" Height="25px" AutoPostBack="true" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0" Text="ALL"></asp:ListItem>
                                            </asp:DropDownList>--%>
                                                Search:
                                            <asp:TextBox ID="txtsantbani" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px"></span>
                                            <asp:Button runat="server" ID="btn_santbani" Text="SEARCH" />
                                            <br />
                                            <br />
                                            <div id="snackbarSant">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="GVPanel" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVSantBani" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Shabd Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="ShabdName" runat="server" Text='<%# Bind("ShabdName_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Author">
                                                            <ItemTemplate>
                                                                <asp:Label ID="AuthorEnglish" runat="server" Text='<%# Bind("Author_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Category">
                                                            <ItemTemplate>
                                                                <asp:Label ID="category_English" runat="server" Text='<%# Bind("category_English") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Part of Sankalan">
                                                            <ItemTemplate>
                                                                <asp:Label ID="PartOfSankalan" runat="server" Text='<%# Bind("PartOfSankalan") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Duration" runat="server" Text='<%# Bind("Duration", "{0:hh:mm}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                <audio controls="controls" class="tableAudio">
                                                                    <source src='<%#Eval("Link")%>' type="audio/mp3">
                                                                </audio>
                                                                <div class="btn btn-success" added="false" sname='<%#Eval("ShabdName_English") %>' audiourl='<%#Eval("Link")%>' duration='<%#Eval("Duration") %>'>Add to playlist</div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>    

                            <!-- Container (Video Clips) -->
                            <div id="Videos" class="row ">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>VIDEO LIBRARY</h3>
                                                You can explore the complete collection of videos of Radhasoami Faith here.
                                                <br/>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="Videoclips" class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-10  " style="text-align: justify;">
                                                <br/>
                                                <h4>VIDEO CLIPS</h4>
                                                    You can explore the video clips related to Sant Sat Gurus and the various events of Radhasoami Faith.
                                                    <!--<h4 style=" font-weight: bold; color: gray; text-align: center ">Content will be available soon</h4>-->
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            Search:
                                            <asp:TextBox ID="txtvideocSearch" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px">
                                            <asp:Button runat="server" ID="btn_videoc" Text="SEARCH" />
                                            <br />
                                            <br />
                                            <div id="snackbarVideoC">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="Panel2" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVVideoC" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Video Clip Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Clip_Title_Eng" runat="server" Text='<%# Bind("Clip_Title_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Video Clip Summary">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Clip_Sum_Eng" runat="server" Text='<%# Bind("Clip_Sum_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Size">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Size" runat="server" Text='<%# Bind("Size") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Duration" runat="server" Text='<%# Bind("Duration", "{0: HH:mm:ss}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Remarks">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Remarks" runat="server" Text='<%# Bind("Remarks") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                    <a href="<%#Eval("vclipLink")%>" target="_blank">Play Clip</a>
                                                                    <!--<a href="video_page.html" target="_blank">Play Clip</a>-->
                                                                    &emsp;&emsp;<a href="<%#Eval("vclipLink")%>" download><span class="glyphicon glyphicon-save"></a>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (Video Poetry) -->
                            <div id="Videopoetry" class="row ">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-10  " style="text-align: justify;">
                                                <br/>
                                                <h4>VIDEO POETRY</h4>
                                                Video poetry is mainly intended for people who cannot speak/unerstand Hindi.
                                                You can explore the video poetry (Hymns) related to Sant Sat Gurus of Radhasoami Faith. 
                                                These videos play the recitition of the hymn and also displays synchronized words in English, Hindi 
                                                & Romanized text. It will help a Satsangi to recite the hymn along with the words.
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                              Search:
                                            <asp:TextBox ID="txtvpoetrysearch" AutoPostBack="false" runat="server" />
                                            <span style="margin-left:5px">
                                            <asp:Button runat="server" ID="btn_vpoetry" Text="SEARCH" />
                                            <br />
                                            <br />
                                            <div id="snackbarVideoP">
                                                <h4 style="color: black; padding-left: 15px">No matches found. Please try again...</h4>
                                            </div>
                                            <asp:Panel ID="Panel4" runat="server" ScrollBars="Auto" Width="95%">
                                                <asp:GridView ID="GVVideoP" runat="server" AllowPaging="true" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#e5e5e5"
                                                    PageSize="10" AllowSorting="True" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Video Hymn Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Shabd_Name_Eng" runat="server" Text='<%# Bind("Shabd_Name_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Book Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Book_Name_Eng" runat="server" Text='<%# Bind("Book_Name_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Bachan">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Bachan" runat="server" Text='<%# Bind("Bachan") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Shabd">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Shabd" runat="server" Text='<%# Bind("Shabd") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Special Occasion">
                                                            <ItemTemplate>
                                                                <asp:Label ID="SplOccasion_Eng" runat="server" Text='<%# Bind("SplOccasion_Eng") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Duration" runat="server" Text='<%# Bind("Duration", "{0:hh:mm}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle Wrap="true" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Options">
                                                            <ItemTemplate>
                                                                    <a href="<%#Eval("videoLink")%>" target="_blank">Play Video</a>
                                                                    <!--<a href="video_page.html" target="_blank">Play Video</a>-->
                                                                    &emsp;&emsp;<a href="<%#Eval("videoLink")%>" download><span class="glyphicon glyphicon-save"></a>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <hr/>

                        <!-- Container (HOLY PLACES) -->
                            <div id="HolyPlaces" class="row">
                                <div class="col-md-2  "></div>
                                <div class="col-md-10 " style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12  " style="text-align: justify;">
                                                <h3>HOLY PLACES</h3>
                                                &emsp;&emsp;The key Holy Places of Radhasoami Faith are located in Agra and Varanasi (Benaras). Details of the Holy Places are given below.
                                            </div>
                                        </div>
                                        <br/>
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/HOLYSOAMJI.png" alt="image2" style="border-radius:70%" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10" id="Holy" style="text-align: justify;outline:none" tabindex="1">
                                            <br/>
                                            <h4 style=" color: #337ab7 ">HOLY SAMADH, SOAMIJI MAHARAJ
                                                <span>
                                                    <a target="_blank " href="https://www.google.co.in/maps/place/Soamibagh,+Dayal+Bagh,+Agra,+Uttar+Pradesh+282005/@27.2211484,78.0054925,16z/data=!4m5!3m4!1s0x397479fd2d86d455:0x6aa0c1ed56929d09!8m2!3d27.2204956!4d78.0074086?hl=en" id="map1" >
                                                    <img src="../images/location.jpg " style="outline:none; " height="25 " width="25 " alt="bottle " class="thumbnails " />
                                                    </a>
                                                </span>
                                            </h4>
                                            &emsp;&emsp;Holy Samadh is located in the premises of Soami Bagh, Agra. The construction of Samadh started in 1904 and continued till 1907. It was temporarily suspended from 1907 to 1923. Since 1923, the construction is going on uninterruptedly and the main dome has been completed in 2018. The total height of the whole structure is 193 feet. The four minarets are 104 feet high over the plinth of the main structure.
                                            <a id="readmor7" onclick="functionexpand7() " style="cursor:pointer "><u>Read More..</u></a>
                                        </div>
                                        <div id="readmore8"  style="text-align: justify;display:none">
                                            <br/><br/>&emsp;&emsp;The soil in Soami Bagh is sandy and foundations laid on it could not be expected to support the weight of such a massive structure. Hence, it was considered necessary to sink 52 wells to be connected with arches on which to build its walls. The wells are of different sizes, their diameters varying according to the requirements of the main structure in different places, from 5.5 feet to 10.5 feet and depths from 40 feet to 45 feet so as to reach the layer of hard soil, technically called ‘Mota’, in each case. The masonry of the foundation wells consists of bricks and lime. The wells have been filled with brick concrete and lime. On the top of each well is constructed a base consisting of huge blocks of stones of 6 sq.ft and 2.5 feet thick in two layers. Over the bases, arches of stones 2.5 feet thick, in two cross layers, have been constructed and the wells thus connected with one another.
                                            <br/><br/>&emsp;&emsp;The main structure consists of a hall, 68 feet by 68 feet surrounded by verandahs 15 feet wide on all sides. The width of the walls is 3 feet. The main structure is 110 sq.ft. There will be a 55 feet broad platform round it, thus making the whole structure 220 sq.ft. The platform will be 15.5 feet above the ground level. In the platform, there will be 52 rooms, 13 on each side. The rooms will be 10 feet broad but of different lengths. They have been provided with a verandah 8 feet broad. In front of this verandah, all around there is again a platform 10 feet broad with 4 steps all round leading to a 20 feet broad canal having water 5 feet deep. Beyond this canal there will be a road 20 feet wide paved with red sand stone. The floor of the main hall will be exactly 20 feet high above the level of the red sand-stone road. On each of the four corners of the verandahs there will be a Burj (pinnacle). In the south west corner, the Burj will meet ‘Bhajan Ghar’, and the platform in front of the verandah of the rooms in the plinth will merge in ‘Bhajan Ghar’ and so also the canal. In order that Bhajan Ghar may remain intact, it is proposed to let the water of the canal flow to its south and west.
                                            <br/><br/>&emsp;&emsp;The sacred well in the garden is considered to be an important relic. It will be exactly on the north of the flight of stairs leading to the main entrance from the outer edge of the canal. Another well on the south of the steps will also be made to preserve the symmetry. The first storey of the verandahs is 21.25 feet high and has a gallery 4 feet 7 inches wide jutting into the main hall. This may be especially useful for accommodating ladies at the time of congregational services. The height of the second storey of the verandahs is 20.25 feet at which level the height of the main hall reaches 41.4 feet. At a further height of 14 feet by means of corbelling series of semi-circular arch rings one over the other, octagonal plinth of the dome is formed on the outer side. To form a circular ring above the plinth, masonry in cement on the inside of a total height of 13.25 feet will be projected. It will be decorated with hill scenery. Here the diameter of the dome will be 54.5 feet. The outside of the hill scenery forms the neck of the dome. The second gallery for visitors to go and see the dome work and also for labourers for cleaning etc. will be provided 6.75 feet above the hill scenery on projecting masonry. There is a colonnade of round pillars 11.25 feet high above the foot of the gallery all round it, as though it forms the neck of the inside arch of the dome. On the outside, the base of the dome over the neck will be 14.75 feet and the lower outer segment of the dome which is 39 feet high over the basement proper is 11 feet thick of brick in cement in 3 rings with 3 inches thick marble panels on the outside and over this ring will rise the cap of the dome 91 feet above the lower semicircular arch. Above this cap there will be a golden copper Kalash 32 feet high. Thus, the The verandah pillars are octagonal in shape. They are marble monoliths 6 feet, 5 inches high and 21 feet in diameter, supported on a carved base 11 feet thick of marble 31 sq.ft and covered with elaborately carved caps 21 feet thick of marble 31 sq.ft. To add to the beauty of the elevation on the north and south, 8 round pillars on each side have been provided on projecting masonry. To give a clear idea of what the structure would be like and for the future guidance of engineers, architects, artists, workers. etc., a miniature model has been prepared. It was completed in June 1928.The scale of the model is 21 feet equal to 1 inch.
                                            <br/>
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>ARCHITECTURAL BEAUTY</b>
                                            <br/><br/>&emsp;&emsp;A look at the model of the building, together with the details given above, and the exquisite beauty of the relief carving in marble and the inlaid stone work done so far, would give some idea of the grandeur of the building, as it will stand when completed. Even as it is, the Samadh and its miniature model are visited by thousands of tourists every day. The building has an oriental setting, but different styles of architecture have been beautifully blended to denote the catholicity of the Radhasoami religion, which has, among its members, peoples of different nationalities. For the same reason, monograms have been provided in different characters, viz. Hindi, Persian and English. In a building of this kind it is natural that construction should go slow, principally due to the elaborate and exquisite marble carving and variegated and exuberant ornamentation, which are the special features of this building. Such work, involving intricate details, cannot be done expeditiously. A single large marble slab, with its skilled carvings of fruit trees, flowers and foliage, takes years to complete it.
                                            <br/><br/>&emsp;&emsp;Ceilings of the verandahs have been constructed with marble slabs 4 inches, 5 inches and 6 inches thick and about 2 sq.ft fitted into one another, without the support of steel or any other girders. The ceiling is certainly a remarkable feat of engineering skill and design. Entire expenditure on the construction of the building is met from spontaneous and voluntary Bhents or offerings by Satsangis, under the administration of the Central Administrative Council, Soami Bagh, Agra.
                                            <br/><br/>&emsp;&emsp;Five or six months after the departure of Soamiji Maharaj, Huzur Maharaj started construction of the Samadh of Soamiji Maharaj on this very spot (of elevated land), which was completed in 1879. This Samadh was very small and simple and was built of red sandstone. When His Samadh was constructed at that spot, it became clear that by Guru Dwara, Soamiji Maharaj had meant His Samadh. Regarding the construction of Holy Samadh of Soamiji Maharaj, Huzur Maharaj was pleased to observe that - "It is very essential and proper that a suitable building be constructed in memory of the
                                            August Founder of the Radhasoami Faith and Revealer of Surat Shabd Yoga. This will enable
                                            the Satsangis of all the countries to assemble at the headquarters of the Faith where Radhasoami
                                            Dayal manifested Himself in the human form. They would meet there at some appointed time.
                                            Observing their love and devotion and spiritual progress, they would derive mutual advantage.
                                            There, they may also explain and understand the principles of the Radhasoami Faith. Thus,
                                            they would strengthen the bond of Love and fellow feeling by cautiously giving out their
                                            spiritual experiences. This will augment their love and faith, mutual affection and spiritual
                                            unity. In this way, they would all help in the propagation of their unique religion and its
                                            easy and unparalleled spiritual practice. For this purpose, there can be no other suitable
                                            place than the Radhasoami Bagh (Soami Bagh), where Radhasoami Dayal Himself stayed for some
                                            time, where His Holy Samadh has been erected and where His photo and other holy relics have
                                            been preserved".
                                            <br/><br/>&emsp;&emsp;When Huzur Maharaj was Post Master General, He used to go off and on to various states for opening new post offices. The Maharaja of Gwalior State gladly made a present of Rs. 10,000/- to Him which He initially refused, but later accepted after approval from the Government. The above sum was spent on the construction of Soamiji Maharaj's holy Samadh and the boundary walls of Soami Bagh.
                                            <br/><br/>&emsp;&emsp;In 1904, for the first time, in His Mauj, Maharaj Saheb conveyed that a magnificent building be constructed. "Just as Radhasoami Faith is a unique Faith to illuminate the entire world with the brightness
                                            of its spirituality, where people of all nationalities, all religions are included and can
                                            join; the Samadh of Param Purush Puran Dhani Soamiji Maharaj, the first Sant Sat Guru who
                                            revealed the Radhasoami Faith, should similarly have a beautiful amalgam of the diverse and
                                            varied styles and forms of architecture from all races and nations". Thus, the idea of erecting a magnificent and stupendous Samadh building befitting the memory of the August Founder of Radhasoami Faith, first occurred to Maharaj Saheb, the third Sant Sat Guru of the Faith. Accordingly, the foundation was laid by Him in 1904. The date of foundation laying was Baisakh Shukl Panchmi, Wednesday, Samvat 1961 Vikram, corresponding to 20<sup>th</sup> April 1904.
                                            <br/><br/>&emsp;&emsp;Babuji Maharaj appointed Lala Tota Ram as the Supervising Engineer, Samadh Works, Soami Bagh. Agra. Lala Tota Ram joined on 1<sup>st</sup> December 1907. The present hall of the Samadh was constructed in 1925 using the same foundation that was laid in 1904 for the Samadh of Soamiji Maharaj. While delivering a discourse on August 23, 1937 in the open Satsang held in the Samadh hall, Babuji Maharaj was graciously pleased to pronounce - "If replica of Sat Lok is there on the surface of earth anywhere, it is here, it is here,
                                            it is here.
                                            "Saying or thinking that the Samadh is also a temple is not proper. It is also not proper to think that one will obtain salvation through Samadhs. The ashes of the past Sants have been kept in Samadhs and doing this is an indication of
                                            the regard and reverence towards them. Samadhs arc constructed at the places where the Sant
                                            Sat Gurus presided and held Satsang. By visiting and paying obeisance, a transformation takes
                                            place in the mind, such that it gets inclined towards Parmarth. Therefore, visiting the Samadhs,
                                            paying obeisance and performing Satsang there is in practice and is considered proper ".
                                            <br/><br/>&emsp;&emsp;There is a spiritual significance to the measure of '68' in the 68 sq.ft main hall. There are said to be 68 places of pilgrimage. Hence by visiting Holy Samadh of Soamiji Maharaj, one will earn as much spiritual sanctity or derive as much spiritual benefit, as one does by visiting 68 pilgrimage sites, of course in the mood of sincere devotion.
                                            <a style="cursor:pointer " onclick="functionhide7() "  ><u>Read Less..</u></a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px ">
                                            <img src="images/bhajan.png " style="border-radius: 70%" width="180 " height="180 " />
                                        </div>
                                        <div class="col-md-10"  style=" text-align: justify;outline:none" tabindex="1">
                                            <br/>
                                            <h4>BHAJAN GHAR
                                                <span>
                                                    <a target="_blank" href="https://www.google.co.in/maps/place/Soamibagh,+Dayal+Bagh,+Agra,+Uttar+Pradesh+282005/@27.2202137,78.0031937,16z/data=!3m1!4b1!4m5!3m4!1s0x397479fd2d86d455:0x6aa0c1ed56929d09!8m2!3d27.2204956!4d78.0074086?hl=en" id="map2">
                                                        <img src="../images/location.jpg" style="outline:none;" height="25" width="25" alt="bottle" class="thumbnails" />
                                                    </a>
                                                </span>
                                            </h4>
                                            &emsp;&emsp;Bhajan Ghar is located in the premises of Soami Bagh, Agra. Soamiji Maharaj visited Soami Bagh daily and returned
                                            in the evening. He used to perform Bhajan, take His meal, hold Satsang and distribute
                                            Prashad here. There was no room or house at this place at that time. There were thatched
                                            sheds only. Under one of such sheds, Soamiji Maharaj used to perform Bhajan, which is
                                            now known as Bhajan Ghar (House of Devotion).
                                            <br/><br/>&emsp;&emsp;It is a place of special importance for performing spiritual practices.
                                            The devotee experiences greater bliss and his Surat ascends with some ease during Bhajan
                                            in Bhajan Ghar. It has been said by Babuji Maharaj that those who perform devotional
                                            practices in Bhajan Ghar, will get added grace and mercy of the Supreme father, Radhasoami
                                            Dayal. They will experience greater facility and ease in the proper performance of devotional
                                            exercises. It is so because Soamiji Maharaj performed Abhyas in Bhajan Ghar.
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row" style="text-align: justify;">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/khothi.png" style="border-radius:70%" alt="image2" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " id="kothi" style="text-align: justify;outline:none" tabindex="1">
                                            <h4 style=" color: #337ab7 ">KOTHI (Residence) OF BABUJI MAHARAJ
                                                <span>
                                                    <a target="_blank" href="https://www.google.co.in/maps/place/Soamibagh,+Dayal+Bagh,+Agra,+Uttar+Pradesh+282005/@27.2202137,78.0031937,16z/data=!3m1!4b1!4m5!3m4!1s0x397479fd2d86d455:0x6aa0c1ed56929d09!8m2!3d27.2204956!4d78.0074086?hl=en" id="map3 "  >
                                                        <img src="../images/location.jpg " style="outline:none; " height="25 " width="25 " alt="bottle " class="thumbnails " />
                                                    </a>
                                                </span>
                                            </h4>
                                            &emsp;&emsp;Kothi of Babuji Maharaj is located in the premises of Soami Bagh, Agra. Babuji Maharaj lived in a rented house in Atarsooiya, Allahabad. A little further away, lived Maharaj Saheb. For about 40 years, Satsang was held in this lane. The number of Satsangis was increasing day by day. On the occasions of holidays and festivals, there used to be such a great rush that many people could neither get Darshan nor hear discourses properly. For office work, the space was not adequate. For lodging out station Satsangis, buildings were rented. Thus, hundreds of rupees were spent on rent every month. Ultimately, Babuji Maharaj decided to shift the Satsang headquarters from Allahabad to Soami Bagh, Agra. There were many requests and supplications from the Satsangis of Allahabad against this. Babuji Maharaj said that Huzur Maharaj had ordered Him to pass the last days of His life in Soami Bagh, Agra.
                                            <br/><br/>&emsp;&emsp;The Kothi (house) of Babuji Maharaj had been constructed in Soami Bagh in 1922 itself. Babuji Maharaj arrived permanently in His Kothi at 7:30 PM on November 29, 1937. Babuji Maharaj's Kothi was His place of residence. It was here that Babuji Maharaj held Satsang and it was here that He left His mortal coil and departed to His Nij Dham. After the departure of Babuji Maharaj, four Satsangs are regularly held every day in Soami Bagh, of which two Satsangs, (one in the morning and one in the evening), are held at Babuji Maharaj's Kothi.
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row " style="text-align: justify; ">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px ">
                                            <img src="images/radha.png " style="border-radius:70% " alt="image2 " width="180 " height="180 " />
                                        </div>
                                        <div class="col-md-10 " id="Bagh " style="text-align: justify;outline:none " tabindex="1">
                                            <h4>Radha Bagh
                                                <span>
                                                    <a target="_blank" href="https://www.google.co.in/maps/place/Pipal+Mandi,+Mantola,+Agra,+Uttar+Pradesh/@27.1863205,78.0191912,16z/data=!3m1!4b1!4m5!3m4!1s0x397470d2a848a697:0xfbb463a76343c271!8m2!3d27.1856562!4d78.0231062?hl=en"
                                                        id="map4">
                                                        <img src="../images/location.jpg" style="outline:none;" height="25" width="25" alt="bottle" class="thumbnails" />
                                                    </a>
                                                </span>
                                            </h4>
                                            <br/><br/>&emsp;&emsp;Radha Bagh is located in Agra city, 2.5 kms from Soami Bagh. In Soami Bagh, when the Samadh built of red sand
                                            stone constructed by Huzur Maharaj was demolished in 1904, its stones and other materials
                                            were used in the construction of the Samadh of Radhaji Maharaj in Radha Bagh, where some
                                            portion of Her ashes has also been enshrined. The rest of Her ashes are with those of
                                            Soamiji Maharaj in the Samadh of Soamiji Maharaj in Soami Bagh, Agra. In Soamiji Maharaj's
                                            time, there was only a raised earth mound in Radha Bagh. When in Radha Bagh, Soamiji
                                            Maharaj used to sit on it and at times, perform Bhajan too.
                                            <br/><br/>&emsp;&emsp;After Soamiji Maharaj's departure to His Original Abode, a platform and
                                            a room were built on this mound. In this act of Sewa, along with other Satsangis, Maharaj
                                            Saheb and Babuji Maharaj also took part, that is, they also carried basketfuls of earth
                                            dug up for the construction. The palanquin used by Soamiji Maharaj is also kept here.
                                            Once, on a specific occasion, Bahuji Maharaj had observed that "Radha Bagh is not a picnic
                                            spot, rather it would be a place of worship". When Babuji Maharaj left His mortal coil,
                                            His last rites were conducted in Radha Bagh itself and subsequently His Samadh was also
                                            constructed in Radha Bagh. Since then, till today, evening Satsang on the 20
                                            <sup>th</sup> of every month is held in the Samadh of Babuji Maharaj at Radha Bagh, instead
                                            of His Kothi in Soami Bagh.
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row" style="text-align: justify;">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px">
                                            <img src="images/gurudhuvara.png" style="border-radius:70%" alt="image2" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " id="Gali" style="text-align: justify;outline:none" tabindex="1">
                                            <h4 style=" color: #337ab7 ">GURUDWARA, PANNI GALI, AGRA</h4>
                                                <span>
                                                    <a target="_blank " href="https://www.google.co.in/maps/place/Pipal+Mandi,+Mantola,+Agra,+Uttar+Pradesh/@27.1863205,78.0191912,16z/data=!3m1!4b1!4m5!3m4!1s0x397470d2a848a697:0xfbb463a76343c271!8m2!3d27.1856562!4d78.0231062?hl=en" id="map5 "  >
                                                        <img src="../images/location.jpg " style="outline:none; " height="25 " width="25 " alt="bottle " class="thumbnails " />
                                                    </a>
                                                </span>
                                                &emsp;&emsp;Panni Gali is a lane situated in Agra city, 6.5 kms  from Soami Bagh. In this lane is a residence which is the place of birth and departure to eternal abode of Param Purush Puran Dhani Soamiji Maharaj and this is the place where He resided. Here, there is a small room within another room. This place has a special significance.
                                                <a style="cursor:pointer "  id="readmor11" onclick="functionexpand11() ">
                                                    <u>Read More..</u>
                                                </a>
                                        </div>
                                        <div id="readmore12" style="text-align: justify; display: none ">
                                            <br/>
                                            &emsp;&emsp;It is at this place:
                                            <ul>
                                                <li class="gurudwaraList ">Where on Monday the 24<sup>th</sup> August 1818 Param Purush Puran Dhani Soamiji Maharaj was born.</li>
                                                <li class="gurudwaraList ">Where for a number of years Soamiji Maharaj performed Abhyas.</li>
                                                <li class="gurudwaraList ">Where on Sunday the 14<sup>th</sup> November 1858 took place the first historic meeting between Soamiji Maharaj and Huzur Maharaj.</li>
                                                <li class="gurudwaraList ">Where Soamiji Maharaj initiated Huzur Maharaj.</li>
                                                <li class="gurudwaraList ">Where on Friday the 15<sup>th</sup> February 1861, Soamiji Maharaj started General Satsang open to all.</li>
                                                <li>Where in January 1874, Soamiji Maharaj initiated Babuji Maharaj.</li>
                                                <li>Where on Saturday the 15<sup>th</sup> June 1878, Soamiji Maharaj left His mortal coil.</li>
                                            </ul>
                                            &emsp;&emsp;It is said that during the period of Soamiji Maharaj, Panni Gali was in a very bad condition. At some places, there were pitfalls, at others there were slopes or inclines. The stinking water from the lavatories used to flow here, there and everywhere in the lane. There was always the danger of slipping and breaking one's limbs. The residential house of Soamiji Maharaj was also of kachcha bricks (made of unbaked bricks and mud) and small. In fact, Panni Gali, where Soamiji Maharaj assumed bodily form, established and held Satsang for years, was a place fit only for ardent lovers and true devotees like Huzur Maharaj who were totally oblivious of pitfalls and dirty drains in the lane. Babuji Maharaj was once pleased to declare that Panni Gali is really Prem Gali, that is, the lane of love.
                                            <br/><br/>&emsp;&emsp;The old residential house of Soamiji Maharaj was demolished and reconstructed under the supervision of the late Sri Tota Ram, the Supervising Engineer of the Radhasoami Samadh Works. Babuji Maharaj had instructed Sri Tota Ram in the following words: "As Soamiji Maharaj was born and had resided and held His Satsang in this house for 60 years,
                                            every particle of it has been highly spiritualised. Every brick of this house is saturated
                                            with Shabd and Sound Current. Hence, not a single piece out of the broken fragments of this
                                            sacred house should be thrown away. Bricks, brick-bats, mortar and earth of this house should
                                            be used during the course of construction of this house along with new material ". The new house was completed in July 1916, much before the celebration of the first birth centenary of Soamiji Maharaj in 1918.
                                            <a style="cursor: pointer " onclick="functionhide11() ">
                                                <u>Read Less..</u>
                                            </a>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row " style="text-align: justify; ">
                                        <div class="col-md-2 " style="text-align: justify; margin-bottom: 10px; max-height: 180px ">
                                            <img src="images/pipal.png " style="border-radius:70% " alt="image2 " width="180 " height="180 " />
                                        </div>
                                        <div class="col-md-10 " id="Agra " style="text-align: justify;outline:none " tabindex="1">
                                            <h4>PIPAL MANDI, AGRA
                                                <span>
                                                    <a target="_blank" href="https://www.google.co.in/maps/place/Dayal+Bagh,+Agra,+Uttar+Pradesh/@27.2312344,77.9850598,14z/data=!3m1!4b1!4m5!3m4!1s0x397479fd9e5fa36f:0x14ea925ce11fcc36!8m2!3d27.2293254!4d78.0026245?hl=en"
                                                        id="map6">
                                                        <img src="../images/location.jpg" style="outline:none;" height="25" width="25" alt="bottle" class="thumbnails" />
                                                    </a>
                                                </span>
                                            </h4>
                                            &emsp;&emsp;Pipal Mandi is an area situated in Agra city, 6.5 kms (4 mi) from Soami Bagh. This was the residence of Huzur
                                            Maharaj. The place where His house with a big gate now exists, had a high mound and open
                                            land. Huzur Maharaj purchased this land and built a splendid mansion on it with seven
                                            courtyards. This house is known as Huzuri Bhawan. Its construction was complete when
                                            Huzur Maharaj came over from Allahabad after retirement.
                                            <br/><br/>&emsp;&emsp;Two houses adjacent to each other were purchased in front of Huzuri Bhawan
                                            in March 1893 for accommodating outstation Satsangis. They are known as "Prem Niwas".
                                            There are four or five courtyards and about forty big and small rooms. Another house
                                            just adjacent to Huzuri Bhawan in the north, formerly Mufid-i-am-School, was purchased
                                            in June 1896. This is Prem Bilas. When alterations, additions and repairs had been carried
                                            out, Huzur Maharaj left his residential house and shifted to Prem Bilas. He would go
                                            to His residential house occasionally, but sometime before His departure, he permanently
                                            resided in Prem Bilas. Prem Bilas means bliss of love. A lot of spiritual pleasure and
                                            enjoyment of Sant's company, discourses, Artis (ceremonial functions of prayer) Bhog
                                            and Bhandara feasts took place here.
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="row" style="text-align: justify;">
                                        <div class="col-md-2 " style="text-align: justify;  margin-bottom: 10px; max-height: 180px;">
                                            <img src="images/soamibagh.png" style="border-radius:70%" alt="image2" width="180" height="180" />
                                        </div>
                                        <div class="col-md-10 " id="varnasi" style="text-align: justify;outline:none" tabindex="1">
                                            <h4>SOAMI BAGH, VARANASI (BENARAS)
                                                <span>
                                                    <a style="outline:none;"   target="_blank"  href="https://www.google.co.in/maps/place/Aaj+Bhawan,+Sant+Kabir+Rd,+Bulanala,+Varanasi,+Uttar+Pradesh+221001/@25.3195873,83.007892,17z/data=!3m1!4b1!4m5!3m4!1s0x398e2e17587adf7d:0xaa481466a4ffd3ad!8m2!3d25.3195873!4d83.0100807?hl=en" id="map7">
                                                        <img src="../images/location.jpg " style="outline:none; " height="25 " width="25 " alt="bottle " class="thumbnails " />
                                                    </a>
                                                </span>
                                            </h4>
                                            &emsp;&emsp;As in Soami Bagh, Agra, Soamiji Maharaj had pointed towards a mound, on which His Samadh is presently being built, and had observed that a Gurudwara would stand there, so also when the hall (Satsang-hall) was under construction in Soami Bagh, Varanasi, Maharaj Saheb had observed that He would hold Satsang there. The hall in Soami Bagh, Varanasi, where Satsang is held now-a-days, was under construction in Maharaj Saheb's time and the same was converted into His Samadh after His departure.
                                            <br/><br/>&emsp;&emsp;On the north of the hall there is a platform like a stage, in the centre of which lies the Samadh of Maharaj Saheb, with sufficient space provided on either side for ladies to sit during Satsang (congregation). The balconies on the three sides of the hall facing the Samadh are also meant for ladies to sit during congregation. The iron gate of Soami Bagh was fabricated in Calcutta (now Kolkata). When the gate was being fixed up, the Maharaja (ruler) of Varanasi happened to pass that way in his horse driven carriage. Amazed to see such a big gate, he remarked that it was unbelievable that a gate bigger than that of his own palace existed in his State! When he was told that it was the Guru-Darbar (Guru's court), he bowed his head in reverence. It is said that even today when the ruler of Kashi and his heirs pass that way, they bow their heads down in reverence before Soami Bagh. 
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 ">
                                    <div class="col-md-12 " id="grab" style="width:100%;text-align: justify;outline:none" tabindex="1">
                                        <h4>SIGNIFICANCE OF AGRA & VARANASI</h4>
                                        &emsp;&emsp;There is a special significance for Agra & Varanasi cities being selected as the places for Radhasoami Faith.
                                    </div>
                                    <div class="col-md-12 " id="grab" style="width:100%;text-align: justify;outline:none" tabindex="1">
                                        <h5>SOAMI BAGH, AGRA
                                            <span>
                                                <a target="_blank" href="https://www.google.co.in/maps/place/Segal's/@27.2266923,77.9992609,14z/data=!4m8!1m2!2m1!1sSegal's,+1,+Dayal+Bagh+Rd,+Prem+Bhawan+Colony,+Dayal+Bagh,+Agra,+Uttar+Pradesh+282005,+India!3m4!1s0x397479fd695cb4b9:0x69917ccafa0d3b64!8m2!3d27.2211151!4d78.0101083?hl=en"
                                                    id="map12">
                                                    <img src="../images/location.jpg" style="outline:none;" height="25" width="25" alt="bottle"
                                                        class="thumbnails" />
                                                </a>
                                            </span>
                                        </h5>
                                        &emsp;&emsp;Soamiji Maharaj had His residence in the city. On account of charities and alms-giving, His house was all the
                                        time surrounded by beggars and mendicants whose number went on increasing. This caused much
                                        inconvenience and disturbance in Satang. Therefore, He decided to shift to some place outside
                                        the city. He stayed in several bungalows and houses in the outskirts but did not have the
                                        Mauj of a sojourn for more than 8-10 days in any one of them, as none of them was to His
                                        liking. Then He started moving out of the city at some distance away on Sukhpal (palanquin)
                                        which the Sadhus and Satsangis used to carry on their shoulders and visited various sites
                                        in the vicinity of the city of Agra. Finally, He approved a site, about three miles north
                                        of the city. There, He laid the foundation of a Bagh (garden) called Radhasoami Bagh or Soami
                                        Bagh.
                                        <a id="readmor6" onclick="functionexpand6()" style="cursor:pointer">
                                            <u>Read More..</u>
                                        </a>
                                    </div>
                                    <div id="readmore7" style="text-align: justify;display:none">
                                        <br/><br/>&emsp;&emsp;At this site there was a piece of elevated land in the centre. Soamiji Maharaj
                                        took His seat there. He ordered the water of the well, already existing there, to be fetched
                                        for Him. On tasting it, He called aloud to Huzur Maharaj by His name and observed that it
                                        was really good water. Soamiji Maharaj had sanctified the water of this well. The main portion
                                        of Soami Bagh land was taken in the name of Soamiji Maharaj on November 9, 1876 at a lease
                                        rent of Rs.12/- per year. Later the entire land of 5 Bighas, 16 Biswas including the well
                                        (approx 14,500 sq.mts) was purchased at a cost of Rs.200/-.
                                        <br/><br/> &emsp;&emsp;One morning, Soamiji Maharaj was taking a walk in the garden with three or four
                                        Sadhus. One of the Sadhus, named Chetan Das, pointed towards a piece of elevated land in
                                        the centre, and said that a Kothi (house, mansion) should be built there for Soamiji Maharaj,
                                        for which it was very suitable. Soamiji Maharaj observed that a Guru Dwara would stand there.
                                        All kept quiet. Nobody could understand the significance of the words.
                                        <br/><br/> &emsp;&emsp;The entire Soami Bagh is a sanctuary for Satsangis because Soamiji Maharaj,
                                        Huzur Maharaj, Maharaj Saheb and Babuji Maharaj walked here. It is for this reason that once
                                        Babuji Maharaj was pleased to observe thus - How excellent is the water of this well (in
                                        Soami Bagh). It is as healthy as Ghee (clarified butter). Children playing, sporting, frolicking,
                                        walking, racing etc. in this garden (Soami Bagh) is as good as performing Abhyas or the devotional
                                        practices.
                                        <a onclick="functionhide6()" style="cursor:pointer">
                                            <u>Read Less..</u>
                                        </a>
                                    </div>
                                    <br/>
                                    <div class="col-md-12 " id="grab" style="width:100%;text-align: justify;outline:none" tabindex="1">
                                        <h5>VARANASI
                                            <span>
                                                <a target="_blank" href="https://www.google.co.in/maps/place/Segal's/@27.2266923,77.9992609,14z/data=!4m8!1m2!2m1!1sSegal's,+1,+Dayal+Bagh+Rd,+Prem+Bhawan+Colony,+Dayal+Bagh,+Agra,+Uttar+Pradesh+282005,+India!3m4!1s0x397479fd695cb4b9:0x69917ccafa0d3b64!8m2!3d27.2211151!4d78.0101083?hl=en"
                                                    id="map12">
                                                    <img src="../images/location.jpg" style="outline:none;" height="25" width="25" alt="bottle"
                                                        class="thumbnails" />
                                                </a>
                                            </span>
                                        </h5>
                                        &emsp;&emsp;The Ganges, also known as river Ganga in Hindi, is the most venerated river in India
                                        as it provides livelihood to millions of people. Varanasi is a very popular city standing on the banks of the Ganges. 
                                        The general flow of the Ganges is in South-East direction. But in Varanasi, it flows to the North. 
                                        This is due to the formation of the land of that region. As an anology in Parmarth, Babuji Maharaj 
                                        (the last manifested Sant Sat Guru) has mentioned in His discourses that, “Even in case of worldly habits,
                                        it is difficult to leave one, and form another. Hence naturally, to leave worldly habit and cultivate a Parmarthi 
                                        habit, would be an extremely difficult task. It would amount to reversing the course of a river. In order 
                                        that a current be reversed, it is necessary to make preparation for it and this requires the very constitution to be changed.”
                                    </div>
                                </div>
                            </div>
                            <hr/>

                            <!-- Container (General Indormation) -->
                            <div id="GenInfo" class="row ">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 ">
                                    <div class="row " style="text-align: justify; ">
                                        <div class="col-md-12 " style="text-align: justify; ">
                                            <h3>GENERAL INFORMATION</h3>
                                            This section gives general information with respect to Weather, Accommodation, Initiation in the Faith, Offering (Bhent) and Prasad. 
                                            <div class="col-md-12 " style="text-align: justify;outline:none" tabindex="1">
                                                <!--This section is for How to reach-->
                                                <h4>HOW TO REACH?</h4>
                                                <div style="margin-left:15px">
                                                    <h5>SOAMI BAGH, AGRA</h5>
                                                    <div class="row " style="margin-bottom: 10px; ">
                                                        <table>
                                                            <tr>
                                                                <th style="width: 75px ">S. No.</th>
                                                                <th style="width: 300px ">Source</th>
                                                                <th style="width: 250px ">Distance from Soami Bagh</th>
                                                                <th style="width: 150px ">Comments</th>
                                                            </tr>
                                                            <tr>
                                                                <td>1.</td>
                                                                <td>Agra Cantt Railway station</td>
                                                                <td>10 kms</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2.</td>
                                                                <td>Delhi Airport</td>
                                                                <td>230 kms</td>
                                                                <td>Distance by Road</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3.</td>
                                                                <td>Jaipur Airport</td>
                                                                <td>250 kms</td>
                                                                <td>Distance by Road</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <h5>SOAMI BAGH, VARANASI</h5>
                                                    <div class="row "  style="margin-bottom: 10px;">
                                                        <table>
                                                            <tr>
                                                                <th style="width: 75px ">S. No.</th>
                                                                <th style="width: 300px ">Source</th>
                                                                <th style="width: 250px ">Distance from Soami Bagh</th>
                                                            </tr>
                                                            <tr>
                                                                <td>1.</td>
                                                                <td>Varanasi Bus Stand</td>
                                                                <td>3.0 kms</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2.</td>
                                                                <td>Varanasi Jn Railway station</td>
                                                                <td>3.5 kms</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3.</td>
                                                                <td>Varanasi Cantt Railway station</td>
                                                                <td>5.5 kms</td>
                                                            </tr>
                                                            <tr>
                                                                <td>4.</td>
                                                                <td>Varanasi Airport</td>
                                                                <td>25 kms</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <br/>
                                                </div>
                                            </div>
                                            <div class="col-md-12 " style="text-align: justify;outline:none" tabindex="1">
                                                <!--This section is for Weather-->
                                                <h4>WEATHER</h4>
                                                Weather in Agra and Varanasi varies substantially with the season.
                                                <br/>
                                                <br/>
                                                In Agra and Varanasi, the summer lasts between March to June and the maximum temperature reaches to about 45&deg;C in some days of May/June. Summer is characterized by hot dry weather called 'Loo' which can cause heat stroke. Winter lasts between November to February and the minimum temparature drops up to 2&deg;C in some days of December/January. Rains are heavy and last between June to September. During this time, the humidity percentage in air is usually very high. Weather charts of both ciies are given below.
                                                <br/>
                                                <br/>
                                                <h5>Agra:</h5>
                                                <img src="images/Agra.gif" alt="" class="img-responsive HeaderDiv"/>
                                                <br/>
                                                <br/>
                                                <h5>Varanasi:</h5>
                                                <img src="images/Varanasi.gif" alt="" class="img-responsive HeaderDiv"/>
                                                <br/>
                                                <!--This section is for Accommodation details-->
                                                <h4>ACCOMMODATION</h4>
                                                Various accommodation options are available in Soami Bagh, Agra and Soami Bagh, Varanasi.
                                                <h5>Accommodation in Soami Bagh, Agra:</h5>
                                                Air conditioned and non-Air conditioned accommodation is  available in Soami Bagh, Agra. For reservation, login to <a href="http://www.rssoamibagh.org " target="_blank "><b>www.rssoamibagh.org</b></a> by entering I-Card details. Fill the form and submit online. Alternately, fill the “English Editable Accommodation Form.pdf” and send by email to <b>acco@rssoamibagh.org</b>.
                                                <br/>
                                                <u style=" color: #337ab7;">Note:</u> While writing/e-mailing, kindly mention all details like Name of the primary contact person, residence address, contact number, email ID, number of people visiting, duration of stay and any special assistance, if required.
                                                <br/>
                                                <h5>Accommodation in Soami Bagh, Varanasi:</h5>
                                                Only non-Air conditioned accommodation is available in Soami Bagh, Varanasi. For reservation, follow the same procedure as described for Agra.
                                                <br/>
                                                <u style=" color: #337ab7;">Note:</u> While writing/e-mailing, kindly mention all details like Name of the primary contact person, residence address, contact number, email ID, number of people visiting, duration of stay, any special assistance, if required.
                                                <!--This section is for Initiation-->
                                                <h4>INITIATION</h4>
                                                Following are the generic guidelines for the seeker desiring initiation. Seeker should write to "The Secretary, Central Administrative Council, Radhasoami Satsang, Soami Bagh, Agra-282005, India" or email at <b>rssoamibagh@gmail.com</b> to get the exact process and guidance.
                                                <br/>
                                                Seeker has to visit Soami Bagh, Agra and make a request to The Secretary, Central Administrative Council, Radhasoami Satsang, Soami Bagh, Agra of his/her intent.
                                                <ul>
                                                    <li>Seeker believes Radhasoami to be the true name of the Supreme Being.</li>
                                                    <li>Seeker is required to totally abstain from any animal food (including fish and eggs) and intoxicants of all types.</li>
                                                    <li>Seeker is willing to give up all past faiths and beliefs, based on a proper understanding of Radhasoami faith.</li>
                                                </ul>
                                                In case a seeker is not able to visit Soami Bagh, Agra for certain reasons, there is a provision for granting Initiation through letter in those cases where a senior Satsangi in the same region can meet and explain the modes of practice personally. This is granted only in exceptional circumstances and normally it is expected that a seeker will take his initiation at Soami Bagh, Agra only.
                                                <br/>
                                                <!--This section is for Offering (Bhent)-->
                                                <h4>OFFERING (BHENT)</h4>
                                                General details regarding Offering (Bhent) are given below. Bhent can be given in following ways:
                                                <ol start="1">
                                                    <li>Placing the Bhent inside the Bhent box at any of the Holy places or by offering cash/cheque at the Satsang office in Soami Bagh, Agra. For online account money transfer, kindly contact Satsang office at <b>rssoamibagh@gmail.com</b></li>
                                                    <li>Submitting Bhent in Satsang office in person or by post.</li>
                                                    <li>Submitting Bhent from other cities or countries by money order.</li>   
                                                </ol>
                                                There are various categories under which Offering (Bhent) can be given. Few of them are mentioned below:
                                                <ul>
                                                    <li>General Bhent</li>
                                                    <li>Bhent towards Samadh</li>
                                                    <li>Monthly Bhent</li>
                                                    <li>Specific Bhandara Bhent. In this case please specify if you would like to receive Prasad (if applicable) by post or in person.</li>
                                                    <li>Bhent for organising Bhog or Bhandara</li>
                                                    <li>Bhent for distribution of Prasad to Satsangis</li>
                                                </ul>
                                                <!--This section is for Prashad-->
                                                <h4>PRASAD</h4>
                                                If you are in Soami Bagh, contact Satsang office and then Bhandar Ghar for obtaining Prasad.
                                                <br/>
                                                If you are in a different city or country, write to "The Secretary, Central Administrative Council, Radhasoami Satsang, Soami Bagh, Agra-282005, India" or email at <b>rssoamibagh@gmail.com</b> to get the exact process and guidance.
                                                <br/>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (Book Ordering) -->
                            <div id="BookOrdering" class="row ">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 ">
                                    <div class="row " style="text-align: justify; ">
                                        <div class="col-md-12 " style="text-align: justify; ">
                                                <h3>BOOK ORDERING</h3>
                                            <!--You can browse the list of available books and order them. Please note that the payment has to be made in advance and the proof to be submitted while placing the order.-->
                                            <h4 style=" font-weight: bold; color: gray; text-align: center ">Would be available later</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <!-- Container (ContactUs) -->
                            <div id="ContactUs" class="row">
                                <div class="col-md-2 "></div>
                                <div class="col-md-10 ">
                                    <div class="row " style="text-align: justify; ">
                                        <div class="col-md-12 " style="text-align: justify; ">
                                                <h3>CONTACT US</h3>
                                               <!--If you need any information or have any feedback or suggestions, kindly fill in the below form and we will get back to you shortly.-->
                                                <h4 style=" font-weight: bold; color: gray; text-align: center">Would be available later</h4>
                                        </div>
                                    </div>
<!--                                    <br/>
                                    <div style="background: #D9D9D9; border-radius: 5px; height: auto; ">
                                        <label style="width: 100px ">First Name:</label>
                                        <input type="text " style="background: white; margin: 10px; border-radius: 5px; " />

                                        <label style="margin-left: 150px; width: 140px ">Last Name:</label>
                                        <input type="text " style="background: white; margin: 10px; border-radius: 5px; " />

                                        <br />
                                        <label style="width: 100px ">E-mail ID:</label>
                                        <input type="text " style="background:white; margin:10px; border-radius:5px; " />

                                        <label style="margin-left: 150px; width: 140px ">Contact Number:</label>

                                        <input type="text " style="background: white; margin-left: 8px; border-radius: 5px; width: 120px " />

                                        <br />
                                        <label style="width: 100px ">Subject:</label>
                                        <input type="text " style="background: white; margin: 10px; border-radius: 5px; width:50% " />

                                        <br />
                                        <label style="width: 100px ">Comments:</label>
                                        <input type="text " style="background: white; margin: 10px; border-radius: 5px; width: 50%; height: 100px; " />

                                        <br />
                                        <button style="margin-left: 115px; ">
                                            <b>SUBMIT</b>
                                        </button>-->
                                    </div>                        
                                </div>
                            </div>
                            <hr/>
                            <div id="snackbar">This song is already added</div>
                            <div>
                            </div>
                            <style>
                                .overflow{ overflow-x:hidden; }
                            </style>
            </form>
       </body>
</html>