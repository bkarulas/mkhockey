function getSchedule(year){
    phpurl = geturl+"schedule&year="+year;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
      printSchedule(JSON.parse(response));
    })
}

function printSchedule(info){
    for (let i=0; i<info.length; i++){
        let p= i-1
        if ((info[i].type == 1) || ((info[i].type == 0) && (info[i-1].type == 1))){
            secId = '#schedule-reg';
        } else{
            secId = '#schedule-offs';
        }
        $(secId).append($('<div>').attr('class','row stat-info bottom type'+info[i].type).append($('<div>').attr('class','col-2').text(info[i].date)
        .add($('<div>').attr('class','col-10').append(printWeekGames(info, i)))));
        i++;
    }
}

function printWeekGames(info, i){
    t1 = i
    t2 = i+1
    if (info[i].type == 0){
        return ($('<div>').attr('class','row nogame').append(
            $('<div>').attr('class','col-9 offset-3').text("NO GAMES")))
            .add($('<div>').attr('class','row nogame').append(
                $('<div>').attr('class','col-9 offset-3').text("BY WEEK")));
    } else {
        return ($('<div>').attr('class','row game8 bottom').append(
            $('<div>').attr('class','col-3').text(info[t1].time+":00")
            .add($('<div>').attr('class','col-3 right').text(info[t1].home))
            .add($('<div>').attr('class','col-1').text(info[t1].home_score))
            .add($('<div>').attr('class','col-1').text("vs"))
            .add($('<div>').attr('class','col-1').text(info[t1].vis_score))
            .add($('<div>').attr('class','col-3 left').text(info[t1].vis))))
            .add ($('<div>').attr('class','row game9').append(
            $('<div>').attr('class','col-3').text(info[t2].time+":00")
            .add($('<div>').attr('class','col-3 right').text(info[t2].home))
            .add($('<div>').attr('class','col-1').text(info[t2].home_score))
            .add($('<div>').attr('class','col-1').text("vs"))
            .add($('<div>').attr('class','col-1').text(info[t2].vis_score))
            .add($('<div>').attr('class','col-3 left').text(info[t2].vis))));
    }
}