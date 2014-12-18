$(function() {
  var mapOptions = {
    zoom: 14,
    // center: new google.maps.LatLng(20.790877, -122.401645)
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  // Try HTML5 geolocation
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

      var GeoMarker = new google.maps.Marker({
        map: map,
        position: pos,
        icon:'http://maps.google.com/mapfiles/ms/micons/blue-dot.png'
      });

      map.setCenter(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }

});

// function loadScript() {
//   var script = document.createElement('script');
//   script.type = 'text/javascript';
//   script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDhGuvGFeKswkwIbXbX0KB8fB_s2nKvu7Y';
//   document.body.appendChild(script);
// }

window.onload = loadScript;
