// Configuration
const CAMPAIGN_GOAL = 1000; // Your fundraising goal, in dollars

// Initialize an Express app
const express = require('express');
const app = express();
app.use("/static", express.static(__dirname + '/static')); // Serve static files
app.use(express.json()); // Can parse POST requests
app.listen(1337); // The best port
console.log("App running on http://localhost:1337");

// Serve homepage
app.get("/",function(request,response){

    // TODO: Actually get fundraising total
    response.send(
        ""+ "Your Crowdfunding Campaign"+"raised ??? out of $"+CAMPAIGN_GOAL.toFixed(2)+""+"Fund This"
    );

});

// Serve funding page
app.get("/fund",function(request,response){
    response.sendfile("fund.html");
});