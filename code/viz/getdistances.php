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
      $command = '/home/prajit1/anaconda/bin/python readJsonDecode.py '.$_GET['app1'].' '.$_GET['app2'].' '.$_GET['app3'];
      //$command = '/home/prajit1/anaconda/bin/python readJsonDecode.py com-healthnutritionnews com.svdsoft.pregnancyFR tw.com.advantech.mennonite';
//      echo $command;
      $output = '';
      exec($command,$output);
      echo $output[18];
      //print_r(array_values($output));
   }
?>
