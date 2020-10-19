$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar, #content').toggleClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });
    $('#sidebarRemove').on('click', function () {
        $('#sidebar, #content').toggleClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });
});

function setListenersForButtons(e) {
    $("audio ~ div").click(function (e) { addToPlaylistButton(e); });
}

function addToPlaylistButton(e) {
    var added = false;
    $(tracks).each(function (key, value) {
        if (value.file === e.target.attributes["audiourl"].value) {
            added = true;
            return false;
        }
    })
    if (!added) {
        var audioUrl = e.target.attributes["audiourl"].value;
        var trackName = e.target.attributes["sname"].value;
        var duration = e.target.attributes["duration"].value;
        trackCount = trackCount + 1;
        e.target.setAttribute("trackNumber", trackCount);
        var newSong = {
            "track": trackCount,
            "name": trackName,
            "duration": duration,
            "file": audioUrl
        };
        $('#plList').append('<li id="' + audioUrl + '"><div class="plItem"><span class="plNum">' + trackCount + '.</span><span class="plTitle">' + trackName + '</span><span class="plLength"><i class="glyphicon glyphicon-remove"></i></span></div></li>');
        $("#plList li:last-child").on('click', function () {
            if (audio.src != audioUrl) {
                $('.plSel').removeClass('plSel');
                $('#' + trackName).addClass('plSel');
                npTitle.text(trackName);
                songIndex = audioUrl;
                audio.src = audioUrl;
                audio.play();
            }
        });
        $("#plList li:last-child i").on('click', function () {
            if (songIndex === audioUrl) {
                audio.pause();
                audio.src = "";
            }
            $(tracks).each(function (key, value) {
                if (value.file === e.target.attributes["audiourl"].value) {
                    tracks.pop(key);
                }
            })
            $(this).parent().parent().parent().remove();
            trackCount = trackCount - 1;
            if (trackCount == 0) {
                npTitle.text("No Song Selected");
                npAction.text('Paused...');
            }
        });
        //Add entry to json
        tracks.push(newSong);
        e.target.enabled = false;
        e.target.disabled = true;
        e.target.innerHTML = "Added";
        showSnackBar2();
    } else {
        //Alert the user it is already there
        e.target.enabled = false;
        e.target.disabled = true;
        e.target.innerHTML = "Added";
        showSnackBar();
    }
}
function showSnackBar() {
    var x = document.getElementById("snackbar");
    x.innerHTML = "Song has already been added";
    x.className = "show";
    setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
}
function showSnackBar2() {
    var x = document.getElementById("snackbar");
    x.innerHTML = "Song has been added";
    x.className = "show";
    setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
}
// Dependencies:
var tracks = [];
var trackCount = 0;
var index = 0;
var songIndex;
jQuery(function ($) {
    var supportsAudio = !!document.createElement('audio').canPlayType;
    if (supportsAudio) {
            playing = false
            mediaPath = 'Audio/'
            extension = ''
            buildPlaylist = $(tracks).each(function (key, value) {
                var trackNumber = value.track,
                    trackName = value.name,
                    trackDuration = value.duration;
                $('#plList').append('<li><div class="plItem"><span class="plNum">' + trackNumber + '.</span><span class="plTitle">' + trackName + '</span><span class="plLength"><i class="glyphicon glyphicon-remove"></i></span></div></li>');
            })
            npAction = $('#npAction')
            npTitle = $('#npTitle')
            audio = $('#audio1').on('play', function () {
                playing = true;
                npAction.text('Now Playing...');
            }).on('pause', function () {
                playing = false;
                npAction.text('Paused...');
            }).on('ended', function () {
                npAction.text('Paused...');
                if ((index + 1) < trackCount) {
                    index++;
                    loadTrack(index);
                    audio.play();
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            }).get(0)
            btnPrev = $('#btnPrev').on('click', function () {
                if ((index - 1) > -1) {
                    index--;
                    loadTrack(index);
                    if (playing) {
                        audio.play();
                    }
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            })
            btnNext = $('#btnNext').on('click', function () {
                if ((index + 1) < trackCount) {
                    index++;
                    loadTrack(index);
                    if (playing) {
                        audio.play();
                    }
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            })
            li = $('#plList li').on('click', function () {
                var id = parseInt($(this).index());
                if (id !== index) {
                    playTrack(id);
                }
            })
            i = $('#plList li i').on('click', function () {
                if (index === parseInt($(this).parent().parent().parent().index()))
                    audio.stop();
                tracks.pop(parseInt($(this).parent().parent().parent().index()));
                $(this).parent().parent().parent().remove();
                trackCount = trackCount - 1;
                if (trackCount == 0) {
                    npTitle.text("No Song Selected");
                }
            })
            loadTrack = function (id) {
                console.log("loading");
                $('.plSel').removeClass('plSel');
                $('#plList li:eq(' + id + ')').addClass('plSel');
                npTitle.text(tracks[id].name);
                index = id;
                audio.src = tracks[id].file;
            }
            playTrack = function (id) {
                loadTrack(id);
                audio.play();
            };
        extension = audio.canPlayType('audio/mpeg') ? '.mp3' : audio.canPlayType('audio/ogg') ? '.ogg' : '';
        //loadTrack(index);
        $("audio ~ div").click(function (e) { addToPlaylistButton(e); });
    }
});

// initialize plyr
//plyr.setup($('#audio1'), {});
