 $(document).ready(function() {
    $('#link1').click(function() {
        $('#div2').hide(1000);
        $('#div3').hide(1000);
        $('#div4').hide(1000);
        $('#div1').show(1000);
        });
    });

    $(document).ready(function() {
    $('#link2').click(function() {
        $('#div1').hide(1000);
        $('#div3').hide(1000);
        $('#div4').hide(1000);
        $('#div2').show(1000);
        });
    });


    $(document).ready(function() {
    $('#link3').click(function() {
        $('#div1').hide(1000);
        $('#div2').hide(1000);
        $('#div4').hide(1000);
        $('#div3').show(1000);
        });
    });


    $(document).ready(function() {
    $('#link4').click(function() {
        $('#div1').hide(1000);
        $('#div2').hide(1000);
        $('#div3').hide(1000);
        $('#div4').show(1000);
        });
    });

