// Require these npm packages
var express = require("express");
var exphbs = require("express-handlebars");
var bodyParser = require("body-parser");
var methodOverride = require("method-override");

var port = process.env.PORT || 3000;

var app = express();

// Import routes and give the server access to them.
var routes = require("./controllers/burgers_controllers.js");

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static(process.cwd() + "/public"));

// 
app.use(bodyParser.urlencoded({ extended: true }));

// Override with POST having ?_method=UPDATE
app.use(methodOverride("_method"));

// Set Handlebars.
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

app.use("/", routes);

app.listen(port, function() {
  console.log("Listening on PORT " + port);
});