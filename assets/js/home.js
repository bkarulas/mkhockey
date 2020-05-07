let currentYear = moment().format("YY");
console.log(currentYear);
yearsPlayed = (currentYear-8);
champYear = (currentYear-1)

$('#home-info').attr('class','row into').html(`
<p>The MK Hockey Hockey League was established in 2009 by Paul Taskas. Paul wanted to start a safe and affordable hockey league for players of Macedonian decent. 
The MK Hockey League’s aim is to provide players of all caliber a lot of ice time and a lot of fun. The league to date is comprised of 75 percent Macedonian hockey players.</p>
<p>This year we celebrate our ${yearsPlayed}th year for the MK Hockey League. 
What started out as a dare to me to revive a league for our Macedonian community has now become a great league filled with amazing talent and more importantly good people.</p>
<p>Thank you to all the boys through the years and a special thanks to Duane Rivait and The Sports Village staff for all their hard work in keeping this a great partnership.</p>`);

$('#champ-title').attr("class", "row").text(`Congradulations to ${champs[0].team}`);
$('#champ-subtitle').attr("class", "row").text(`The 20${champs[0].year} MK Hockey League Champions`);
$('#champ-pic').attr('class', 'row').append($('<img>').attr('class','img-fluid')
    .attr('src',`./assets/images/champs/champs${champs[0].year}.jpg`)
    .attr('atl',`${champs[0].team}champs${champs[0].year}`));

$('#footer-info').attr("class", "row").html(`MK Hockey League 20${currentYear} &copy;`);


