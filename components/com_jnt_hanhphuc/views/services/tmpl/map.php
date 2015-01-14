<?php

?>

<script src="https://maps.googleapis.com/maps/api/js"></script>

<script type="text/javascript">
<!--
function initialize() {
    var map_canvas = document.getElementById('map_canvas');
    var myLatlng = new google.maps.LatLng(<?php echo $lat; ?>, <?php echo $lng; ?>);
    var map_options = {
      center: myLatlng,
      zoom: 14,
      scrollwheel: false
    }
    var map = new google.maps.Map(map_canvas, map_options);
    
    var marker = new google.maps.Marker({
                      position: myLatlng,
                      map: map
                  });
  }

google.maps.event.addDomListener(window, 'load', initialize);
//-->
</script>

here is map