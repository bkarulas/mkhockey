let champs = 
    [
        {
            year: 19,
            team: 'Solun',
            teamId: 4,
            members: getChamps(19,4)
        }
    ]

    function getChamps(year, team){
        phpurl = geturl+"champs&year="+year+"&team="+team;
        $.ajax({url: phpurl, method: "GET"})
        .then((response) => {
            let members = response.substring(0, response.length - 2);
          $('#champ-name').attr('class','row').text(members);
        })
    }

    console.log(champs[0].members);