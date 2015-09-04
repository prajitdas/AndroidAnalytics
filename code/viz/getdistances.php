<?php
   if( isset($_GET['app1']) && isset($_GET['app2']) && isset($_GET['app3']))
   {
      //$dist1 = mt_rand(1,100);
      //$dist2 = mt_rand(1,100);
      //$data = [];
      //$data['fbdist'] = $dist1;
      //$data['flightdist'] = $dist2;
      //echo json_encode($data);
      //exit();
      $command = 'python readJsonDecode.py '.$_GET['app1'].$_GET['app2'].$_GET['app3'];
      $output = '';
      exec($command.' 2>&1', $output);
      print_r($output);
   }
   else{
      echo sizeof($_POST);
      echo sizeof($_GET);
      $dist1 = mt_rand(1,100);
      $dist2 = mt_rand(1,100);
      $data = [];
      $data['fbdist'] = $dist1;
      $data['flightdist'] = $dist2;
      echo json_encode($data);
      //echo "fuck you";
      //exit();
   }
?>