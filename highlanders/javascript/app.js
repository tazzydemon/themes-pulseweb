var geocoder = new google.maps.Geocoder();

function successFunction(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    console.log(lat + ' ' + lng);
    codeLatLng(lat, lng)
}

function errorFunction() {
    console.log("Geocoder failed");
}

function codeLatLng(lat, lng) {

    var regions = ['southland', 'otago', 'west coast','canterbury','marlborough','tasman' ,'nelson'];
    var latlng = new google.maps.LatLng(lat, lng);

    geocoder
            .geocode(
            {
                'latLng': latlng
            },
            function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[1]) {

                        var arrAddress = results;
                        console.log(results);
                        // iterate through address_component array
                        $
                                .each(
                                arrAddress,
                                function (i, address_component) {

                                    if (address_component.types[0] == "locality") {
                                       // console.log("City: "
                                       // + address_component.address_components[2].long_name);
                                        var myregion = address_component.address_components[2].long_name;
                                       console.log($.inArray(myregion.toLowerCase(),regions)) ;
                                        if($.inArray(myregion.toLowerCase(),regions)> -1) $('#HighlandersGamePromo').foundation('reveal', 'open');
                                        //itemLocality = address_component.address_components[0].long_name;
                                    }
                                });

                    } else {
                        console.log("No Geo results found");
                    }
                } else {
                    console.log("Geocoder failed due to: " + status);
                }
            });
}


(function ($, window, document, undefined) {
    'use strict';

    var mql = window.matchMedia("screen and (max-width: 768px)")
    if(mql){
      //  console.log('small');
      //  $('.slideshow-wrapper ul').removeAttr('data-orbit');
    }


    // Initialize Foundation
    $(document).foundation();

    $('form label.placeholder').each(function(){
            if(placeholderIsSupported()){
                $(this).parent().find('.text, textarea').attr('placeholder', jQuery(this).html());
                $(this).remove();
//            }else{
//                convertLabel(jQuery(this));
            }
    });

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
    }

    //Get the latitude and the longitude;


}(jQuery, this, this.document));

$(window).load(function() {
    $("[data-match-height]").each(function() {

      var parentRow = $(this),
      childrenCols = $(this).find("[data-height-watch]"),
      childHeights = childrenCols.map(function(){ return $(this).height(); }).get(),
      tallestChild = Math.max.apply(Math, childHeights);
      //alert(tallestChild + childHeights);
      childrenCols.css('min-height', tallestChild+40);

    });
});

    function placeholderIsSupported() {
        test = document.createElement('input');
        return ('placeholder' in test);
    }