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
                                            <li role="presentation" class="active"><a href="/pSSG.aspx">Sant Sat Guru</a></li>
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


                            <!-- Container (Sant Sat Guru) -->
                            <div id="SantSatGuru" class="row">
                                <div style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div style="text-align: justify; margin-top: 190px;">
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
            </form>
       </body>
</html>