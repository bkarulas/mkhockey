let geturl = './assets/php/routes/get-routes.php?api=';
let allTeams = [];
let divinfo = document.getElementById('info');
let year = 19;

//TEAM INFO
getTeamsInfo(year)

//TEAM INFO
function getTeamsInfo(year){
  let teamData = []
  phpurl = geturl+"teams&year="+year;
  $.ajax({
    url: phpurl,
    method: "GET"
  })
  .then((response) => {
    teamData = JSON.parse(response);
    console.log(teamData);
    printStandings(teamData)
  })
};

//Print Team Info
function printStandings(teams){
  for (let i=0; i<teams.length; i++){
    ct=i+1
    console.log(ct+" - "+teams[i].name)
    //$('#rank-team'+ct).html(`<h5>${ct}</h5>`)
    $('#name-team'+ct).html(`<h4>${teams[i].name}</h4>`);
    $('#win-team'+ct).html(`<h5>${teams[i].win}</h5>`);
    $('#lose-team'+ct).html(`<h5>${teams[i].lose}</h5>`);
    $('#tie-team'+ct).html(`<h5>${teams[i].tie}</h5>`);
    $('#pts-team'+ct).html(`<h5>${teams[i].points}</h5>`);
    $('#gf-team'+ct).html(`<h6>${teams[i].gf}</h6>`);
    $('#ga-team'+ct).html(`<h6>${teams[i].ga}</h6>`);
    $('#pm-team'+ct).html(`<h6>${teams[i].pm}</h6>`)
  }
}
//END TEAM INFO