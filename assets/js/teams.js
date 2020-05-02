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
    console.log("NAME Team ",i);
    console.log(team[0].name);
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
    console.log("Players for Team ",i)
    console.log(team)
}