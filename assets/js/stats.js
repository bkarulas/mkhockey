//GET TEAM INFO
function getTeamsInfo(year){
    phpurl = geturl+"teams&year="+year;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
      printTeamStandings(JSON.parse(response));
    })
  };

function printTeamStandings(teams){
    teams.forEach(team => {
        $('#statTeam').attr('class', 'row stat-info')
        .append($('<div>').attr('class','col-4 bold left').text(team.name)
        .add($('<div>').attr('class','col-1').text(team.win))
        .add($('<div>').attr('class','col-1').text(team.lose))
        .add($('<div>').attr('class','col-1').text(team.tie))
        .add($('<div>').attr('class','col-2 bold').text(team.points))
        .add($('<div>').attr('class','col-1').text(team.gf))
        .add($('<div>').attr('class','col-1').text(team.ga))
        .add($('<div>').attr('class','col-1').text(team.pm))); 
    });
}

//GET GOALIE INFO
function getGoaliesInfo(year){
    phpurl = geturl+"goalies&year="+year;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
      printGoalieStandings(JSON.parse(response));
    })
  };

function printGoalieStandings(goalies){
    goalies.forEach(goalie => {
        $('#statGoalie').attr('class', 'row stat-info')
        .append($('<div>').attr('class','col-5 bold left').text(goalie.name)
        .add($('<div>').attr('class','col-2').text(goalie.team))
        .add($('<div>').attr('class','col-1').text(goalie.gp))
        .add($('<div>').attr('class','col-1').text(goalie.ga))
        .add($('<div>').attr('class','col-2 bold').text(goalie.gaa))
        .add($('<div>').attr('class','col-1').text(goalie.so))); 
    });
}

//GET PLAYER INFO
function getPlayersInfo(year){
    phpurl = geturl+"players&year="+year;
    $.ajax({url: phpurl, method: "GET"})
    .then((response) => {
        printPlayerStandings(JSON.parse(response));
    })
  };

function printPlayerStandings(players){
    players.forEach(player => {
        $('#statPlayer').attr('class', 'row stat-info')
        .append($('<div>').attr('class','col-4 bold left').text(player.name)
        .add($('<div>').attr('class','col-2').text(player.pos))
        .add($('<div>').attr('class','col-1').text(player.num))
        .add($('<div>').attr('class','col-2').text(player.team))
        .add($('<div>').attr('class','col-1').text(player.goals))
        .add($('<div>').attr('class','col-1').text(player.assists))
        .add($('<div>').attr('class','col-1 bold').text(player.points))); 
    });
}

