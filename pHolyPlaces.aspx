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
                                            <li role="presentation" class="active"><a href="/pHolyPlaces.aspx">Holy Places</a></li>
                                            <li role="presentation"><a href="/pGenInfo.aspx">General Information</a></li>
                                            <li role="presentation"><a href="/pBookOrder.aspx">Book Ordering</a></li>
                                            <li role="presentation"><a href="/pContactUs.aspx">Contact Us</a></li>
                                        </ul>
                                    </div><!-- /.navbar-collapse -->
                                </div><!-- /.container-fluid -->
                            </nav>

                        <!-- Container (HOLY PLACES) -->
                            <div id="HolyPlaces" class="row">
                                <div style="height: auto;">
                                    <div class="row">
                                        <div class="row" style="text-align: justify;">
                                            <div class="col-md-12 " style="text-align: justify; margin-top: 190px;">
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
                                <div >
                                    <div style="width:100%;text-align: justify;outline:none" tabindex="1">
                                        <h4>SIGNIFICANCE OF AGRA & VARANASI</h4>
                                        &emsp;&emsp;There is a special significance for Agra & Varanasi cities being selected as the places for Radhasoami Faith.
                                    </div>
                                    <div style="width:100%;text-align: justify;outline:none" tabindex="1">
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
                                    <div style="width:100%;text-align: justify;outline:none" tabindex="1">
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

</div>                            <hr/>
            </form>
       </body>
</html>