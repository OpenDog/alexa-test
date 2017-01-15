/**
 * Created by OpenDog on 1/14/17.
 */

let express = require("express");
let bodyParser = require("body-parser");
let alexasdk = require("alexa-app");

let exp = express();
exp.set("port", 3000);
exp.use(bodyParser.json({type: "application/json"}));

let app = new alexasdk.app("test", "test");

let request = (request, response): void => {
    try {
        response.say("We have been launched!").shouldEndSession(true);
    }
    catch (ex) {
        console.error(ex, ex.stack || ex);
    }
}

app.launch(request);

app.express(exp);

// Start the server
let server = exp.listen(exp.get("port"), function () {
    console.log("Server is listening on port %s", 3000);
});
