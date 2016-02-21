
var markersArray = [];

    function loadMapLanding(){


      handler = Gmaps.build('Google');
      infowindow = new google.maps.InfoWindow();
      handler.buildMap({ provider: { scrollwheel: false}, internal: {id: 'map'} }, function(){
        geocoder = new google.maps.Geocoder();
        if(navigator.geolocation){
          navigator.geolocation.getCurrentPosition(centerOnMap);
 
        }  
      });
    }

  function show_marker(){
      marker_visible(true,"project_name")
   
    
  }

  function marker_visible(visible,project_name){
    for (var i = 0; i < markersArray.length; i++ ) {
      markersArray[i].serviceObject.setVisible(visible);
      handler.getMap().setZoom(12);
      if(project_name-1 == i){
        markersArray[i].serviceObject.setVisible(true);
        handler.map.centerOn(markersArray[i].serviceObject.position)
        handler.getMap().setZoom(9);
      }
    }
  }
