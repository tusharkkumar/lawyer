 $(document).ready(function() {
    $('#u').click(function() {
        $('#upload').show(1000);
        $('#personal').hide(1000);
        $('#casestudy').hide(1000);
        });
    });


 $(document).ready(function() {
    $('#p').click(function() {

        $('#casestudy').hide(1000);
        $('#upload').hide(1000);
        $('#personal').show(1000);
        });
    });


 $(document).ready(function() {
    $('#c').click(function() {
        $('#upload').hide(1000);
        $('#personal').hide(1000);
        $('#casestudy').show(1000);

        });
    });



$(document).ready(function() {
 	$('.middle').addClass('animated lightSpeedIn');

})



$(document).ready(function() {
	$('#editor').click(function() {

		$('#showeditor').toggle(500);
	})

});



