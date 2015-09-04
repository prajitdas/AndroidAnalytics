d3.selection.prototype.moveToFront = function() {
  return this.each(function(){
  this.parentNode.appendChild(this);
  });
};

SEL_CLUSTER = null;
SEL_NODE = null;
MAL_CLUSTER = null;
MAL_NODE = null;
BEN_CLUSTER = null;
BEN_NODE = null;
var width = $('#container').width(),
    height =  $('#container').height(),
    padding = 1.5, // separation between same-color nodes
    clusterPadding = 6, // separation between different-color nodes
    maxRadius = 12;
    radius = 6;

d3.json('clusters.json', function(error, data){
    var apps = data.Loop100[0]; //get the list of apps and their clusters
    var m = JSON.parse(data.Loop100[3]['centroids'])['shape'][0] //number of clusters
    var allnodes = [];
    for (var i in apps){
      allnodes.push({'cluster':apps[i], 'appName': i.replace(/\./g,'-'), 'radius':radius});
    }
    var options1 = $("#highlightoptions");
    //var options2 = $("#ref1options");
    //var options3 = $("#ref2options");
    numNodes = 2000;
    nodes = allnodes.splice(0,numNodes);
    $.each(nodes, function() {
        options1.append($("<option />").val(this.appName).text(this.appName));
        //options2.append($("<option />").val(this.appName).text(this.appName));
        //options3.append($("<option />").val(this.appName).text(this.appName));
    });
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
        .attr("id", function(d) {return d.appName;})
        // .append("svg:title")
        // .text(function(d) { return d.cluster; })
        //.call(force.drag)
        //    .on("mousedown", function() { d3.event.stopPropagation(); });
        .on("click", function(d) {
                  info(d); 
                  d3.select(this)
                  .moveToFront()
                  //.attr("r", 10*radius)
                  .style("fill", function(d) { return color(d.cluster); });
                  //drawDist(d.appName, 'com_BowlegLLC_jimstoppani', 'fmontemurri_behealthy');
                })
        .on("mouseover", function(d){tooltip.text('Cluster: '+d.cluster+'\nApp: '+d.appName); svg.selectAll(".c"+d.cluster).style("fill", 'yellow'); return tooltip.style("visibility", "visible");})
        .on("mousemove", function(d){return tooltip.style("top", (event.pageY-10)+"px").style("left",(event.pageX+10)+"px");})
        .on("mouseout", function(d){//d3.select(this).attr("r", radius); 
                                      svg.selectAll(".c"+d.cluster).style("fill", function(d) { return color(d.cluster); }); return tooltip.style("visibility", "hidden");});
    

    node.transition()
        .duration(750)
        .delay(function(d, i) { return i * 5; })
        .attrTween("r", function(d) {
          if(d.appName != appID){ 
          var i = d3.interpolate(0, d.radius);
          return function(t) { return d.radius = i(t); };
        }
        });

    var lineFunction = d3.svg.line()
                         .x(function(d) { return d.x; })
                          .y(function(d) { return d.y; })
                         .interpolate("linear");
    function tick(e) {
      node
          .each(cluster(10 * e.alpha * e.alpha))
          .each(collide(.5))
          .attr("cx", function(d) { return d.x; })
          .attr("cy", function(d) { return d.y; });
      d3.select('#'+appID).moveToFront();
      d3.select('#'+appID).attr('r',4*radius);

    }
    function info(node){
        $('#clusterinfo').text("Cluster: "+node.cluster);
        $('#nameinfo').text("App Name: "+node.appName);
        window.open('https://play.google.com/store/apps/details?id='+node.appName.replace(/-/g,'.'), '_blank');
    }
    function drawDist(id0, id1){
        var x_0 = $('#'+id0).attr("cx");
        var y_0 = $('#'+id0).attr("cy");
        var x_1 = $('#'+id1).attr("cx");
        var y_1 = $('#'+id1).attr("cy");
        //var x_2 = $('#'+id2).attr("cx");
        //var y_2 = $('#'+id2).attr("cy");
        var lineData1 = [{"x": x_1, "y": y_1},{"x": x_0, "y": y_0}];
        //var lineData2 = [{"x": x_0, "y": y_0},{"x": x_2, "y": y_2}];
        svg.append("path")
            .attr("d",lineFunction(lineData1))
            .attr('id','line'+id1)
            .attr("stroke", "black")
            .attr("stroke-width",5);        
        //svg.append("path")
         //   .attr("d",lineFunction(lineData2))
          //  .attr("stroke", "rgb(255,255,255)")
           // .attr("stroke-width",5);        
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

$("#highlight").click(function(){
  if(SEL_NODE != null){
    SEL_NODE.attr('r',radius)
              .attr('stroke','none');
  }

  var appName = $("#highlightoptions").val();
  var appNode = d3.select('#'+appName);
  var clusterNum = appNode.attr('class');
  var curstyle = d3.selectAll("."+clusterNum).style("fill");
  SEL_CLUSTER = clusterNum;
  SEL_NODE = appNode;
  //setTimeout(function(){d3.selectAll(".c"+clusterNum).style("fill", 'red');},1000);
  d3.selectAll("."+clusterNum).style("fill", 'yellow');
  setTimeout(function(){d3.selectAll("."+clusterNum).style("fill",curstyle);setTimeout(function(){d3.selectAll("."+clusterNum).style("fill", 'yellow');setTimeout(function(){d3.selectAll("."+clusterNum).style("fill",curstyle);},500);},500);},500);
  appNode.moveToFront();
  appNode.attr('r',4*radius)
          .attr('stroke', 'black');

})

$("#tagMalicious").click(function(){


    if(SEL_CLUSTER != null){
        if(MAL_CLUSTER != null){
              d3.selectAll("."+MAL_CLUSTER).style("fill", function(d) { return color(d.cluster); })
                                            .attr('stroke','none');
              d3.select("#line"+MAL_NODE.attr('id')).remove();
        }
      MAL_CLUSTER = SEL_CLUSTER;
      MAL_NODE = SEL_NODE;
      //clean up the highlighted parts
      SEL_NODE.attr('r',radius)
              .attr('stroke','none');
      d3.selectAll("."+SEL_CLUSTER).style("fill", 'red')
                                    .attr('stroke-width',3)
                                    .attr('stroke','black');
      SEL_CLUSTER = null;
      SEL_NODE = null;
      drawDist(appID,MAL_NODE.attr('id'));
    }

})

$("#tagBenign").click(function(){
    if(SEL_CLUSTER != null){
        if(BEN_CLUSTER != null){
              d3.selectAll("."+BEN_CLUSTER).style("fill", function(d) { return color(d.cluster); })
                                            .attr('stroke','none');
              d3.select("#line"+BEN_NODE.attr('id')).remove();
        }
      BEN_CLUSTER = SEL_CLUSTER;
      BEN_NODE = SEL_NODE;
      //clean up the highlighted parts
      SEL_NODE.attr('r',radius)
              .attr('stroke','none');
      d3.selectAll("."+SEL_CLUSTER).style("fill", 'green')
                                    .attr('stroke-width',3)
                                    .attr('stroke','black');
      SEL_CLUSTER = null;
      SEL_NODE = null;
      drawDist(appID,BEN_NODE.attr('id'));
    }


})


// $("#showdistance").click(function(){
//     $('#dangercontainer').attr('style','visibility:visible');
// })

})
setTimeout(function(){d3.select('#'+appID).attr('r',4*radius)
                        .attr('stroke','black')
                        .attr('stroke-width',2);},1000);
