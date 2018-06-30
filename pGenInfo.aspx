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
                                            <li role="presentation" class="active"><a href="/pGenInfo.aspx">General Information</a></li>
                                            <li role="presentation"><a href="/pBookOrder.aspx">Book Ordering</a></li>
                                            <li role="presentation"><a href="/pContactUs.aspx">Contact Us</a></li>
                                        </ul>
                                    </div><!-- /.navbar-collapse -->
                                </div><!-- /.container-fluid -->
                            </nav>

                            <!-- Container (General Indormation) -->
                            <div id="GenInfo" class="row ">
                                <div class="col-md-10 ">
                                    <div class="row " style="text-align: justify; ">
                                        <div class="row" style="text-align: justify; margin-top: 190px;">
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
            </form>
       </body>
</html>