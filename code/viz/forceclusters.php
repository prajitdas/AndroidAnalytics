<?php
if(isset($_GET['appid'])){
	$appID = $_GET['appid'];
	echo '<!DOCTYPE html>
	<meta charset="utf-8">
	<head>
	    <link rel="stylesheet" type="text/css" href="style.css">
	    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	    <script> appID="'.$appID.'";</script>
	</head>

	<body>
	<h1>App Malware Clusters Visualization</h1>
	<div id = "infobox">
	    <h2>App Information</h2>
	    <p id = "clusterinfo">To the right the first 2000 samples from the JSON file are plotted by cluster. Mouse over or click on a cluster for info.  Click the button below to highlight cluster 1.  This functionality will be used to highlight the clusters new data gets classified to in the demo.</p>
	    <p id = "nameinfo"></p>
	    <h2>Tagging</h2>
	    <select id="highlightoptions">
	    </select>
	    <button id= "highlight">Highlight App</button>
	    <button id= "tagMalicious">Tag Malicious</button>
	    <button id= "tagBenign">Tag Benign</button>
	    <h2>Visualize Distance of New App</h2>
	<!--     <p>ref1:
	    <select id="ref1options">
	    </select></p>
	    <p>ref2:
	    <select id="ref2options">
	    </select></p> -->
	    <button id= "showdistance">Show Distance</button>


<div id = "dangercontainer" style="visibility:hidden">
<svg id = "dangersvg" width="300" height="120">
	  <defs>
    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(64,255,0);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
    </linearGradient>
  </defs>
  <rect id = "dangerbar" x="30" y="50" width="240" height="21" fill="url(#grad1)" />
      <image x="0" y="45" height="30" width="30" xlink:href="thumbsup.png"></image>
      <image x="270" y="45" height="30" width="30" xlink:href="thumbsdown.png"></image>
  	<g id="appslider" transform="translate(90,60)">
  	<circle id="top" r="15" fill="#E5E4E2" stroke="white" stroke-width="1px"/>
  	<text dy="-28" dx="-8" fill="white">22.3</text>
  	</g>
</svg>
</div>


	</div>
<div id = "container">

	</div>

	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
	<script src="distanceviz.js"></script>

	<script src="clusterviz.js"></script>

	</body>';
}
?>