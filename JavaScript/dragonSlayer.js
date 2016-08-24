var slaying = true;
var youHit = Math.floor(Math.random() * 2);
var damageThisRound = Math.floor(Math.random()*5 + 1);
var totalDamage = 0;

while(slaying) {
    if (youHit == 1){
        console.log("You hit the dragon to " + youHit + " damage!");
        totalDamage += damageThisRound;
        if (totalDamage >= 4){
            console.log("You slew the Dragon!");
            slaying = false;
            } else {
                youHit = Math.floor(Math.random() * 2);
                }
        } else {
            console.log("Dragon defeated you!");
            slaying = false;
            }
    
    }