var Airtable = require('airtable');
var yaml     = require('js-yaml');
var fs       = require('fs');

function loadConfig() {
  var ymlFile = fs.readFileSync('_config.yml', 'utf8');
  return yaml.load(ymlFile);
}

var config = loadConfig().airtable;
var jsonfile = require('jsonfile');
var fileAbout = './_data/abouts.json';
var abouts = new Airtable({ apiKey: config.apikey }).base(config.abouts);
var aboutJson = [];


abouts('Pages').select({
        maxRecords: 100,
      //sort
        sort: [{field: "title", direction: "asc"}],
        filterByFormula: "TRUE(published)",
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          aboutJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(fileAbout, aboutJson, function (err) {
        console.error(err)
      });
      console.log(aboutJson);
    });

