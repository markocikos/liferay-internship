/**
 * Created by Matea Pjanic on 28/02/2017.
 */
$(document).ready(function() {

    $('#moreAdvL').click(function() {
        $('.moreAdvP').toggleClass('showMe');
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
        $('.moreCornP').toggleClass('showMe');
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
        $('.moreJohnP').toggleClass('showMe');
        if ($(this).text() == 'read less')
        {
            $(this).text('read more');
        }
        else
        {
            $(this).text('read less');
        }
    });


});
