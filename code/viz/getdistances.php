<?php
	if( isset($_GET['app1']) && isset($_GET['app2']) && isset($_GET['app3']))
	{
		$command = '/home/prajit1/anaconda/bin/python readJsonDecode.py '.$_GET['app1'].' '.$_GET['app2'].' '.$_GET['app3'];
		$output = '';
		exec($command,$output);
		echo $output[18];
	}
?>