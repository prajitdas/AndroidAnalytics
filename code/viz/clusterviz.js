$("#classify").click(function(){
  var clusterNum = 1;
  curstyle = d3.selectAll(".c"+clusterNum).style("fill");
  //setTimeout(function(){d3.selectAll(".c"+clusterNum).style("fill", 'red');},1000);
  d3.selectAll(".c"+clusterNum).style("fill", 'red');
  setTimeout(function(){d3.selectAll(".c"+clusterNum).style("fill",curstyle);setTimeout(function(){d3.selectAll(".c"+clusterNum).style("fill", 'red');setTimeout(function(){d3.selectAll(".c"+clusterNum).style("fill",curstyle);},500);},500);},500);


})

var width = $('#container').width(),
    height =  $('#container').height(),
    padding = 1.5, // separation between same-color nodes
    clusterPadding = 6, // separation between different-color nodes
    maxRadius = 12;
    radius = 6;
//var width = $('#container').width();
d3.json('clusters.json', function(error, data){
    var apps = data.Loop100[0]; //get the list of apps and their clusters
    var m = JSON.parse(data.Loop100[3]['centroids'])['shape'][0] //number of clusters
    var allnodes = [];
    for (var i in apps){
      allnodes.push({'cluster':apps[i], 'appName': i, 'radius':radius});
    }
    // var centers = new Array(m);
    // var xunit = width/m;
    // var yunit = height/m;
    // var numrows = Math.sqrt(m);
    // for(var i=0; i<m/numrows; i++){
    //   for(var j=0; j<numrows; j++){
    //       var ix = i*xunit+(xunit/2);
    //       var iy = j*yunit+(yunit/2);
    //       centers[i*numrows+j] = {'x':ix, 'y':iy}
    //     }
    // }
    numNodes = 2000;
    nodes = allnodes.splice(0,numNodes);
    var n = nodes.length; // total number of nodes
    nodes = nodes.sort(function(a,b){
      return a.cluster-b.cluster;
    });


    var color = d3.scale.category20()
        .domain(d3.range(m));

    // The largest node for each cluster.
    var clusters = new Array(m);
    for(var i=0; i<nodes.length; i++){
      //nodes[i].x = centers[nodes[i].cluster].x
      //nodes[i].y = centers[nodes[i].cluster].y
      if(!clusters[nodes[i].cluster]){
        clusters[nodes[i].cluster] = nodes[i];
      }
    }
    // var nodes = d3.range(n).map(function() {
    //   var i = Math.floor(Math.random() * m),
    //       r = Math.sqrt((i + 1) / m * -Math.log(Math.random())) * maxRadius,
    //       d = {cluster: i, radius: r};
    //   if (!clusters[i] || (r > clusters[i].radius)) clusters[i] = d;
    //   return d;
    // });

    // Use the pack layout to initialize node positions.
    d3.layout.pack()
        .sort(null)
        .size([width, height])
        .children(function(d) { return d.values; })
        .value(function(d) { return d.radius * d.radius; })
        .nodes({values: d3.nest()
          .key(function(d) { return d.cluster; })
          .entries(nodes)});

    var force = d3.layout.force()
        .nodes(nodes)
        .size([width, height])
        .gravity(0.02)
        .charge(0)
        .on("tick", tick)
        .start();

    var svg = d3.select("#container").append("svg")
        .attr("width", width)
        .attr("height", height);


    var tooltip = d3.select("body")
      .append("div")
      .style("position", "absolute")
      .style("z-index", "10")
      .style("background-color", 'black')
      .style("color", 'white')
      .style("visibility", "hidden")
      .style("padding", '2px')
      .style("border-radius", '4px')
      .text("a simple tooltip");

    var node = svg.selectAll("circle")
        .data(nodes)
      .enter().append("circle")
        .style("fill", function(d) { return color(d.cluster); })
        .attr("class", function(d) { return "c"+d.cluster; })
        // .append("svg:title")
        // .text(function(d) { return d.cluster; })
        .call(force.drag)
        //    .on("mousedown", function() { d3.event.stopPropagation(); });
        .on("click", function(d) {info(d);})
        .on("mouseover", function(d){tooltip.text('Cluster: '+d.cluster+'\nApp: '+d.appName); svg.selectAll(".c"+d.cluster).style("fill", 'red'); return tooltip.style("visibility", "visible");})
        .on("mousemove", function(d){return tooltip.style("top", (event.pageY-10)+"px").style("left",(event.pageX+10)+"px");})
        .on("mouseout", function(d){svg.selectAll(".c"+d.cluster).style("fill", function(d) { return color(d.cluster); }); return tooltip.style("visibility", "hidden");});


    node.transition()
        .duration(750)
        .delay(function(d, i) { return i * 5; })
        .attrTween("r", function(d) {
          var i = d3.interpolate(0, d.radius);
          return function(t) { return d.radius = i(t); };
        });

    function tick(e) {
      node
          .each(cluster(10 * e.alpha * e.alpha))
          .each(collide(.5))
          .attr("cx", function(d) { return d.x; })
          .attr("cy", function(d) { return d.y; });
    }
    function info(node){
        $('#clusterinfo').text("Cluster: "+node.cluster);
        $('#nameinfo').text("App Name: "+node.appName);
		window.open('https://play.google.com/store/apps/details?id='+node.appName, '_blank');
	}
    // Move d to be adjacent to the cluster node.
    function cluster(alpha) {
      return function(d) {
        var cluster = clusters[d.cluster];
        if (cluster === d) return;
        var x = d.x - cluster.x,
            y = d.y - cluster.y,
            l = Math.sqrt(x * x + y * y),
            r = d.radius + cluster.radius;
        if (l != r) {
          l = (l - r) / l * alpha;
          d.x -= x *= l;
          d.y -= y *= l;
          cluster.x += x;
          cluster.y += y;
        }
      };
    }

    // Resolves collisions between d and all other circles.
    function collide(alpha) {
      var quadtree = d3.geom.quadtree(nodes);
      return function(d) {
        var r = d.radius + maxRadius + Math.max(padding, clusterPadding),
            nx1 = d.x - r,
            nx2 = d.x + r,
            ny1 = d.y - r,
            ny2 = d.y + r;
        quadtree.visit(function(quad, x1, y1, x2, y2) {
          if (quad.point && (quad.point !== d)) {
            var x = d.x - quad.point.x,
                y = d.y - quad.point.y,
                l = Math.sqrt(x * x + y * y),
                r = d.radius + quad.point.radius + (d.cluster === quad.point.cluster ? padding : clusterPadding);
            if (l < r) {
              l = (l - r) / l * alpha;
              d.x -= x *= l;
              d.y -= y *= l;
              quad.point.x += x;
              quad.point.y += y;
            }
          }
          return x1 > nx2 || x2 < nx1 || y1 > ny2 || y2 < ny1;
        });
      };
    }
})