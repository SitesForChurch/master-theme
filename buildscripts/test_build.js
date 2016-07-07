var Airtable = require('airtable');
var fs          = require('fs');
var yaml        = require('js-yaml');

function loadConfig() {
  var ymlFile = fs.readFileSync('_config.yml', 'utf8');
  return yaml.load(ymlFile);
}

var config = loadConfig().airtable;
var jsonfile = require('jsonfile');
var fileAbout = '../../_data/abouts.json';
var abouts = new Airtable({ apiKey: config.apikey }).base(config.abouts);
var aboutJson = [];
var aboutJsonTest = [];


var updated = false;

abouts('Pages').select({
   view: "Main View",
  filterByFormula: "OR(IS_BEFORE(DATEADD(NOW(), -10, 'years'), CREATED_TIME()), IF(ISERROR(IS_BEFORE(DATEADD(NOW(), -10, 'years'), updated_at)), FALSE(),IS_BEFORE(DATEADD(NOW(), -10, 'years'), updated_at)))"
}).eachPage(function page(records, fetchNextPage) {

    records.forEach(function(record) {
      updated = true;
    });
    fetchNextPage();

}, function done(error) {
    if (error) {
        console.log(error);
    }
   console.log("updated");
   console.log(updated);
});

// test to nodejs return value for shell
//return console.log(false);