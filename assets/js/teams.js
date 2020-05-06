function getAllTeams(year){
    for (let i=1; i<=totalTeams; i++){
        getTeamName(year, i);
        getTeamInfo(year, i);
    }
}
//GET TEAM NAME
function getTeamName(year, i){
    phpurl = geturl+"teamname&year="+year+"&team="+i;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
      printTeamName(JSON.parse(response), i);
    })
}

function printTeamName(team, i){
    $('#name-team'+i).attr('class',' row stat-title '+team[0].name).html(team[0].name);
    printTeamHeaders(i);
}

//TEAM HEADERS
function printTeamHeaders (i){
    $('#headers-team'+i).attr('class','row teams-subtitle')
        .append($('<div>').attr('class','col-2').text('NUM')
        .add($('<div>').attr('class','col-4 left').text('NAME'))
        .add($('<div>').attr('class','col-3 left').text('POSITION'))
        .add($('<div>').attr('class','col-1').text('G'))
        .add($('<div>').attr('class','col-1').text('A'))
        .add($('<div>').attr('class','col-1').text('PTS')));
}

//GET TEAM INFO
function getTeamInfo(year,i){
    phpurl = geturl+"team&year="+year+"&team="+i;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
      printTeamInfo(JSON.parse(response), i);
    })
}

function printTeamInfo(team, i){
    team.forEach(player => {
        $('#players-team'+i).attr('class', 'team-players').append(printEachPlayer(player));
    });
}

//.attr('class', 'row stat-info').append(printEachPlayer(player));

function printEachPlayer(player){
    return $('<div>').attr('class','row stat-info').attr('id', player.id).append(
    $('<div>').attr('class','col-2').text(player.num)
    .add($('<div>').attr('class','col-4 bold left').text(player.name))
    .add($('<div>').attr('class','col-3 left').text(player.pos))
    .add($('<div>').attr('class','col-1').text(player.goals))
    .add($('<div>').attr('class','col-1').text(player.assists))
    .add($('<div>').attr('class','col-1').text(player.points)));
}