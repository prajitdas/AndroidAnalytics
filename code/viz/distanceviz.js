

var radius = 15,
    dwidth = $('#dangerbar')[0].width.baseVal.value-(2*radius),
    dheight =  $('#dangersvg').height(),
    paddingw = Math.floor(($('#dangersvg').width()-dwidth-2*radius)/2)+radius;
    //paddingw = radius;
    


$("#showdistance").click(function(){  
        showDistance('test');
        $('#dangercontainer').attr('style','visibility:visible');
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
        var fbnormedpx = paddingw + Math.floor(fbnormed*dwidth)
        d3.select("#appslider")
            .attr("transform", "translate("+fbnormedpx+","+Math.floor(dheight/2)+")")
            .select("text")
                .text(Math.floor(100*fbnormed));

    })

}