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
                                            <li role="presentation"><a href="/pBiCent.aspx"><u style="color: #922B21;">Bi-Centenary</u></a></li>
                                            <li role="presentation" class="active"><a href="/pConduct.aspx">Guidelines</a></li>
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

                            <!-- Container (GUIDELINES) -->
                            <div id="conduct" class="row">
                                <div class="col-md-12" style="text-align: justify; margin-top: 190px; ">
                                    <h3>GUIDELINES</h3>
                                    &emsp;&emsp;This section describes the tenets and general guidelines of the Faith and mentions the code of conduct and commandments for the
                                    practitioner of Surat Shabd Yoga.
                                    <br />
                                    <!--DIV for Tenets-->
                                    <div class="col-md-12 " style="text-align: justify; outline:none;" tabindex="1">
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
                                    <div class="col-md-12" id="queer" style="text-align: justify;outline:none" tabindex="1">
                                        <h4>PUZZLING PRACTICES & BLIND FOLLOWING</h4>
                                        &emsp;&emsp;It is common to see puzzling behavior around Holy places. People who indulge in these are ignorant. Others, also ignorant, are quick to follow them blindly. A few examples of such behavior are given below:
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
                            <hr/>
            </form>
       </body>
</html>