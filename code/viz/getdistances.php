<?php
   if( isset($_GET['appname']))
   {
      $dist1 = mt_rand(1,100);
      $dist2 = mt_rand(1,100);
      $data = array();
      $data['fbdist'] = $dist1;
      $data['flightdist'] = $dist2;
      //echo json_encode($data);
      echo '{"fbdist":'.$dist1.','.'"flightdist":'.$dist2.'}';
      //exit();
   }
   else{
      echo sizeof($_POST);
      echo sizeof($_GET);
      $dist1 = mt_rand(1,100);
      $dist2 = mt_rand(1,100);
      $data = array();
      $data['fbdist'] = $dist1;
      $data['flightdist'] = $dist2;
      echo json_encode($data);
      //echo "fuck you";
      //exit();
   }
?>