

var radius = 45,
    width = $('#dangerbar')[0].width.baseVal.value-(2*radius),
    height =  $('#dangersvg').height(),
    paddingw = Math.floor(($('#dangersvg').width()-width-2*radius)/2)+radius;
    //paddingw = radius;
    


$("#getdistance").click(function(){  
        showDistance('test');
})


function showDistance(app_name){
    //data = {'appname':appname};
    //data = JSON.stringify({appname:app_name});
    data = []
    //url = 'getdistances.php';
    url = 'getdistances.php?appname='+app_name;
    d3.json(url).post(data,function(error, data){
        var fbdist = data.fbdist;
        var flightdist = data.flightdist;
        var fbnormed = fbdist/(fbdist+flightdist);
        var flightnormed = flightdist/(fbdist+flightdist);
        var fbnormedpx = paddingw + Math.floor(fbnormed*width)
        d3.select("#appslider")
            .attr("transform", "translate("+fbnormedpx+","+Math.floor(height/2)+")")
            .select("text")
                .text(Math.floor(100*fbnormed));

    })

}