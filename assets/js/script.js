const geturl = './assets/php/routes/get-routes.php?api=';

const totalTeams = 4;

const secHome = document.getElementById("home")
const secTeams = document.getElementById("teams");
const secSchedule = document.getElementById("schedule");
const secStats = document.getElementById("stats");

//TEMP FOR TESTING
let year = 19;

document.addEventListener('DOMContentLoaded', () => {
  console.log('Ready', year);
  getAllTeams(year);
  getSchedule(year);
  getTeamsInfo(year);
  getGoaliesInfo(year);
  getPlayersInfo(year);
  secTeams.style.display = "none";
  secSchedule.style.display = "none";
  secStats.style.display = "none";
});

  function menuClick(showSec){
    switch (showSec){
      case 'Home':
        secHome.style.display = "block"
        secTeams.style.display = "none";
        secSchedule.style.display = "none";
        secStats.style.display = "none";
        break;
      case 'Teams':
        secHome.style.display = "none"
        secTeams.style.display = "block";
        secSchedule.style.display = "none";
        secStats.style.display = "none";
        break;
      case 'Schedule':
        secHome.style.display = "none"
        secTeams.style.display = "none";
        secSchedule.style.display = "block";
        secStats.style.display = "none";
        break;
      case 'Stats':
        secHome.style.display = "none"
        secTeams.style.display = "none";
        secSchedule.style.display = "none";
        secStats.style.display = "block";
        break;
      default:
        secHome.style.display = "block"
        secTeams.style.display = "none";
        secSchedule.style.display = "none";
        secStats.style.display = "none";
    }  
  }