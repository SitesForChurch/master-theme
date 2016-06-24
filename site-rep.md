Welcome to a new project! In case you need a reminder, here are the steps to get it up and running:

> At any point - you can run `Run > Start Server` and then `Preview > 30000`  

## Step 1: Airtable

* Setup a new airtable team for the client.
* Copy all of the default bases into the client's team.
* Remove the "copy" from the base name.
* Invite the client to the base as an author.


## Step 2: _config.yml

Follow the comments (Yml comments look like this `# Comment here`)

## Step 3: Customize the following files 

In each file you'll find instructions in the comments.  (Comments look like this in HTML files `<!--Comment-->` and this in almost every other kind of file `/ Comment here`.)

```
├── _css
│   ├── _settings.scss (This is where you will change site colors, etc.)
├── _includes
│   ├── address.html (Just change the info)
│   └── service-schedule.html (ditto)
├── assets
│   ├── calendar_default.jpg (This corresponds with the default images in _config.yml - change them if you want.)
│   ├── default_header.jpg
│   ├── logo.png (This must be changed to the clients logo.)

└── welcome.html 
```


## Step 4: API Keys

Go to [Airtable's API page](https://airtable.com/api) and find the APP Key for each of the client's bases and replace the ones in this file:

```
├── _gulp
│   ├── config.yml 
```

