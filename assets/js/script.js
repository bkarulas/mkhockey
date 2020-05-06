const geturl = './assets/php/routes/get-routes.php?api=';

const totalTeams = 4;

//TEMP FOR TESTING
let year = 19;

let SecTeams = document.getElementById("teams");
let SecSchedule = document.getElementById("schedule");
let SecStats = document.getElementById("stats");
SecTeams.style.display = "block";
SecStats.style.display = "block"


document.addEventListener('DOMContentLoaded', () => {
    console.log('Ready', year);
    getAllTeams(year);
    getSchedule(year);
    getTeamsInfo(year);
    getGoaliesInfo(year);
    getPlayersInfo(year);
  });