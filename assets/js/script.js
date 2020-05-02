const geturl = './assets/php/routes/get-routes.php?api=';

const totalTeams = 4;

//TEMP FOR TESTING
let year = 19;

document.addEventListener('DOMContentLoaded', () => {
    console.log('Ready', year);
    getAllTeams(year);
    getTeamsInfo(year);
    getGoaliesInfo(year);
    getPlayersInfo(year);
  });