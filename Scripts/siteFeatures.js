//<script type="text/javascript " src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit "></script>
//function googleTranslateElementInit() {
//    new google.translate.TranslateElement({ pageLanguage: 'en', includedLanguages: 'hi,kn', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
//}

myMenuOn = 1;
function MenuToggle() {
    if ($(window).width() < 500) {
        $("#bs-example-navbar-collapse-1").toggle(300);
/*       if (myMenuOn == 1) {
           $("#bs-example-navbar-collapse-1").hide(300);

            myMenuOn = 0;
        }
        else {
            $("#bs-example-navbar-collapse-1").show(300);

            myMenuOn = 1;
        }*/
    }
}

function menuResp() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}


function showSnackBarBachan() {
    var x = document.getElementById("snackbarBachan");
    x.className = "show";
}
function hideSnackBarBachan() {
    var x = document.getElementById("snackbarBachan");
    x.className = "";
}
function showSnackBarSant() {
    var x = document.getElementById("snackbarSant");
    x.className = "show";
}
function hideSnackBarSant() {
    var x = document.getElementById("snackbarSant");
    x.className = "";
}
function showSnackBarShabd() {
    var x = document.getElementById("snackbarShabd");
    x.className = "show";
}
function hideSnackBarShabd() {
    var x = document.getElementById("snackbarShabd");
    x.className = "";
}
function showSnackBarVideoC() {
    var x = document.getElementById("snackbarVideoC");
    x.className = "show";
}
function hideSnackBarVideoC() {
    var x = document.getElementById("snackbarVideoC");
    x.className = "";
}
function showSnackBarVideoP() {
    var x = document.getElementById("snackbarVideoP");
    x.className = "show";
}
function hideSnackBarVideoP() {
    var x = document.getElementById("snackbarVideoP");
    x.className = "";
}
function showSnackBarBook() {
    var x = document.getElementById("snackbarBook");
    x.className = "show";
}
function hideSnackBarBook() {
    var x = document.getElementById("snackbarBook");
    x.className = "";
}

$(document).ready(function ($) {

    $('a').each(function(index, value){
        var anchorTag = value;
        if(anchorTag.hasAttribute("targetDiv")) {
            $(anchorTag).click(function(element){
                $("div[divType='pageContent']").hide();
                $("#"+$(anchorTag).attr("targetDiv")).html($("#"+$(anchorTag).attr("targetDiv")).html() + "<br /> <br />");
                $("#"+$(anchorTag).attr("targetDiv")).show();
            })
        }
    });

    myMenuOn = 1;
    $('a[href^="#"]').bind('click.smoothscroll', function (e) {
        e.preventDefault();

        var target = this.hash;

        

        var topOffset = 0; //#top should default to 0 so no need to calculate the difference between top and top :)
        if (target != "#top") { //If the 
            var topOffset = $(target).offset().top;
        }



        $('html, body').stop().animate({
            'scrollTop': topOffset
        }, 900, 'swing', function () {
            window.location.hash = target;
            });
        MenuToggle();
    });

});

function theFunction() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal').modal('show');
}
function theFunction1() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal1').modal('show');
}
function theFunction2() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal2').modal('show');
}
function theFunction3() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal3').modal('show');
}
function theFunction4() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal4').modal('show');
}
function theFunction5() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal5').modal('show');
}
function functionexpand() {
    document.getElementById("readmor").style.display = "none";
    document.getElementById("readmore1").style.display = "block";
}

function functionexpand1() {
    document.getElementById("readmor1").style.display = "none";
    document.getElementById("readmore2").style.display = "block";
}

function functionexpand2() {
    document.getElementById("readmor2").style.display = "none";
    document.getElementById("readmore3").style.display = "block";
}

function functionexpand3() {
    document.getElementById("readmor3").style.display = "none";
    document.getElementById("readmore4").style.display = "block";
}

function functionexpand4() {
    document.getElementById("readmor4").style.display = "none";
    document.getElementById("readmore5").style.display = "block";
}

function functionexpand5() {
    document.getElementById("readmor5").style.display = "none";
    document.getElementById("readmore6").style.display = "block";
}

//Holy palces
function functionexpand6() {
    document.getElementById("readmor6").style.display = "none";
    document.getElementById("readmore7").style.display = "block";
}
function functionexpand7() {
    document.getElementById("readmor7").style.display = "none";
    document.getElementById("readmore8").style.display = "block";
}

function functionexpand8() {
    document.getElementById("readmor8").style.display = "none";
    document.getElementById("readmore9").style.display = "block";
}

function functionexpand9() {
    document.getElementById("readmor9").style.display = "none";
    document.getElementById("readmore10").style.display = "block";
}
function functionexpand10() {
    document.getElementById("readmor10").style.display = "none";
    document.getElementById("readmore11").style.display = "block";
}
function functionexpand11() {
    document.getElementById("readmor11").style.display = "none";
    document.getElementById("readmore12").style.display = "block";
}
function functionexpand12() {
    document.getElementById("readmor12").style.display = "none";
    document.getElementById("readmore13").style.display = "block";
}
function functionexpand13() {
    document.getElementById("readmor13").style.display = "none";
    document.getElementById("readmore14").style.display = "block";
}
function functionexpand14() {
    document.getElementById("readmor14").style.display = "none";
    document.getElementById("readmore15").style.display = "block";
}
function functionexpand17() {
    document.getElementById("readmor17").style.display = "none";
    document.getElementById("readmore17").style.display = "block";
}
function functionexpand18() {
    document.getElementById("readmor18").style.display = "none";
    document.getElementById("readmore18").style.display = "block";
}
function functionexpand19() {
    document.getElementById("readmor19").style.display = "none";
    document.getElementById("readmore19").style.display = "block";
}
function functionexpand20() {
    document.getElementById("readmor20").style.display = "none";
    document.getElementById("readmore20").style.display = "block";
}

// Menu
function functionaudio() {
    document.getElementById("proselist").style.display = "block ";
    document.getElementById("poetrylist").style.display = "block ";
}

function functionhide() {
    document.getElementById("readmor").style.display = "block";
    document.getElementById("readmore1").style.display = "none";
    $('#soamjipara').focus();
}
function functionhide1() {
    document.getElementById("readmor1").style.display = "block";
    document.getElementById("readmore2").style.display = "none";
    $('#radhajipara').focus();
}
function functionhide2() {
    document.getElementById("readmor2").style.display = "block";
    document.getElementById("readmore3").style.display = "none";
    $('#Huzurpara').focus();
}
function functionhide3() {
    document.getElementById("readmor3").style.display = "block";
    document.getElementById("readmore4").style.display = "none";
    $('#Maharaparaj').focus();
}
function functionhide4() {
    document.getElementById("readmor4").style.display = "block";
    document.getElementById("readmore5").style.display = "none";
    $('#bujaji').focus();
}
function functionhide5() {
    document.getElementById("readmor5").style.display = "block";
    document.getElementById("readmore6").style.display = "none";
    $('#babji').focus();
}

//Holy palces
function functionhide6() {
    document.getElementById("readmor6").style.display = "block";
    document.getElementById("readmore7").style.display = "none";
    $('#gra').focus();
}
function functionhide7() {
    document.getElementById("readmor7").style.display = "block";
    document.getElementById("readmore8").style.display = "none";
    $('#Holy').focus();
}
function functionhide8() {
    document.getElementById("readmor8").style.display = "block";
    document.getElementById("readmore9").style.display = "none";
    $('#Ghar').focus();
}
function functionhide9() {
    document.getElementById("readmor9").style.display = "block";
    document.getElementById("readmore10").style.display = "none";
    $('#kothi').focus();
}
function functionhide10() {
    document.getElementById("readmor10").style.display = "block";
    document.getElementById("readmore11").style.display = "none";
    $('#Bagh').focus();
}
function functionhide11() {
    document.getElementById("readmor11").style.display = "block";
    document.getElementById("readmore12").style.display = "none";
    $('#Gali').focus();
}
function functionhide12() {
    document.getElementById("readmor12").style.display = "block";
    document.getElementById("readmore13").style.display = "none";
    $('#Agra').focus();
}
function functionhide13() {
    document.getElementById("readmor13").style.display = "block";
    document.getElementById("readmore14").style.display = "none";
    $('#varnasi').focus();
}
function functionhide14() {
    document.getElementById("readmor14").style.display = "block";
    document.getElementById("readmore15").style.display = "none";
    $('#varnasi').focus();
}
function functionhide17() {
    document.getElementById("readmor17").style.display = "block ";
    document.getElementById("readmore17").style.display = "none ";
    $('#queer').focus();
}
function functionhide18() {
    document.getElementById("readmor18").style.display = "block ";
    document.getElementById("readmore18").style.display = "none ";
    $('#conduct').focus();
}
function functionhide19() {
    document.getElementById("readmor19").style.display = "block ";
    document.getElementById("readmore19").style.display = "none ";
    $('#command').focus();
}
function functionhide20() {
    document.getElementById("readmor20").style.display = "block ";
    document.getElementById("readmore20").style.display = "none ";
    $('#arti').focus();
}

function glossary(word) {
    var x = document.getElementById("abhyas").innerText = "This is the meaning of the word Abhyas";
    return x;
}

function Play1() {
    document.getElementById('player').play();
    alert(document.getElementById('player').play());
    document.getElementById("Play1").style.display = "none ";
    document.getElementById("Pause1").style.display = "block ";
}
function Pause1() {
    document.getElementById('player').pause();
    document.getElementById("Play1").style.display = "block ";
    document.getElementById("Pause1").style.display = "none ";
}
function functionp() {
    window.open("Login.aspx ", "_Parent ");
}
$(document).resize(function () {
    if ($(this).width() <= y) {
        $('body').addClass('overflow');
    } else {
        $('body').removeClass('overflow');
    }
});