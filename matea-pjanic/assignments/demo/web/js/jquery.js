/**
 * Created by Matea Pjanic on 27/02/2017.
 */
$(document).ready(function() {

    $('#moreAdvL').click(function() {
        $('.moreAdvP').toggleClass('readMore');
        if ($(this).text() == 'read less')
        {
            $(this).text('read more');
        }
        else
        {
            $(this).text('read less');
        }
    });

    $('#moreCornL').click(function() {
        $('.moreCornP').toggleClass('readMore');
        if ($(this).text() == 'read less')
        {
            $(this).text('read more');
        }
        else
        {
            $(this).text('read less');
        }
    });

    $('#moreJohnL').click(function() {
        $('.moreJohnP').toggleClass('readMore');
        if ($(this).text() == 'read less')
        {
            $(this).text('read more');
        }
        else
        {
            $(this).text('read less');
        }
    });

    $("#searchMusicForm").submit(function (e) {
        e.preventDefault();
    });

    var options = {
        url: './../json/bends.json',
        getValue: "bendName",
        list: {
            showAnimation: {
                type: "fade", //normal|slide|fade
                time: 400,
                callback: function() {}
            },

            hideAnimation: {
                type: "slide", //normal|slide|fade
                time: 400,
                callback: function() {}
            },
            match: {
                enabled: true
            }
        },
        theme: 'dark'
    };

    $("#search").easyAutocomplete(options);

    $("#searchBtn").click(function() {
        var search = $('#search').val();
        $('#content').hide();
        $('#joinContent').hide();
        $('#loginContent').hide();
        var result = $('.resultContainer');
        if (result) {
            result.text('');
        }
        $.ajax({
            url: '/SearchPath',
            data: {yourInput: search},
            dataType: 'json',
            type: 'post',
            success: function(responseJson) {
                var count = Object.keys(responseJson).length;
                console.log(responseJson);
                console.log(count);
                if(count>1) {
                    result.append('<br><h3>' + responseJson.bendName + '</h3><br>');
                    result.append('<br><img src="' + responseJson.image + '"/><br>');

                    for (var i = 0; i < responseJson.albums.length; i++) {
                        result.append(`<table class="table table-hover" id="album-${i}"></table>`);
                        var table = $(`#album-${i}`);
                        table.append('<tr><th><h4>Album: ' + responseJson.albums[i].albumName + ' (' + responseJson.albums[i].year + ')'+ '</h4></th></tr>');
                        for (var j = 0; j < responseJson.albums[i].songs.length; j++) {
                            table.append('<tr><th><span class="glyphicon glyphicon-heart" data-toggle="tooltip" title="add to playlist"></span>&nbsp;&nbsp;' + responseJson.albums[i].songs[j].songName + '<audio class="audioPlay" controls><source src="' + responseJson.albums[i].songs[j].mp3 + '" type="audio/mp3"></audio>     </th></tr>');

                        }
                    }
                }
                else {
                    result.append('<br>' + responseJson.no + '<br>');
                }
            }
        });
        $('#search').val('');
    });

});

