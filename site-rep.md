Welcome to a new project! In case you need a reminder, here are the steps to get it up and running:

<iframe width="560" height="315" src="https://www.youtube.com/embed/4dKwt_j1b0Q" frameborder="0" allowfullscreen></iframe>

> At any point - you can run `Run > Start Server` and then `Preview > 30000`

## Step 1: Airtable

<iframe width="560" height="315" src="https://www.youtube.com/embed/8uXDSeF1Mj4" frameborder="0" allowfullscreen></iframe>

1. Setup a new airtable team for the client.
2. Copy all of the default bases into the client's team.
3. Remove the "copy" from the base name.
4. Invite the client to the base as an author.

## Step 2: Setup The Theme

<iframe width="420" height="315" src="https://www.youtube.com/embed/tzlHcvlk-Ak" frameborder="0" allowfullscreen></iframe>

In [Nitrous](https://www.nitrous.io/quickstart?repo=https://github.com/SitesForChurch/master-theme.git), use the top menu's `Run` command to change to the theme of the clients choosing.

![Nitrous Run Menu](https://dl.dropboxusercontent.com/u/47159282/Screen%20Shot%202016-06-24%20at%205.18.06%20PM.png)

After you change the theme, you can confirm it by using `Run > 01. Start Server`

## Step 3: _config.yml

<iframe width="560" height="315" src="https://www.youtube.com/embed/aotzPgh5g9c" frameborder="0" allowfullscreen></iframe>

Follow the comments (Yml comments look like this `# Comment here`)

## Step 4: Customize the following files

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


## Step 5: API Keys

Go to [Airtable's API page](https://airtable.com/api) and find the APP Key for each of the client's bases and replace the ones in this file:

```
├── _gulp
│   ├── Airtable
|           ├── airtable-config.yml
```

## Step 6: Setup and push to a github repository

In the console of Nitrous, type `git init.`

![](https://dl.dropboxusercontent.com/u/47159282/git1.png)
![](https://dl.dropboxusercontent.com/u/47159282/git2.png)
![](https://dl.dropboxusercontent.com/u/47159282/git3.png)
![](https://dl.dropboxusercontent.com/u/47159282/git4.png)
![](https://dl.dropboxusercontent.com/u/47159282/git5.png)

## Step 7: Setup the URLS

## Step 8: Change the URLS in config yaml. 

## Step 9: Relax and Get Paid

## Step 10: Continue to communicate with your client. 