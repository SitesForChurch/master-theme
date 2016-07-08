#!/bin/bash

path="/Users/ryanhayden/github/master-theme/";
git_path="https://github.com/SitesForChurch/master-theme.git";
need_build=false;

echo "Navigate to web root: $path";

cd $path;

echo "Update repo ...";
git pull $git_path;

echo "Test"

echo "Test Abouts from Airtable API"
if  $(node ./buildscripts/test_abouts.js) ; 
then
    echo 'Abouts changed';
    echo 'Build Abouts ...'
    node ./buildscripts/build_abouts.js
    need_build=true;
else
    echo 'Abouts not changed skip build'    
fi

echo "Test Blog from Airtable API"
if  $(node ./buildscripts/test_blog.js) ; 
then
    echo 'Blog changed';
    echo 'Build Blog ...'
    node ./buildscripts/build_blog.js
    need_build=true;
else
    echo 'Blog not changed skip build'    
fi

echo "Test Events from Airtable API"
if  $(node ./buildscripts/test_events.js) ; 
then
    echo 'Events changed';
    echo 'Build Events ...'
    node ./buildscripts/build_events.js
    need_build=true;
else
    echo 'Events not changed skip build'    
fi

echo "Test Ministries from Airtable API"
if  $(node ./buildscripts/test_ministries.js) ; 
then
    echo 'Ministries changed';
    echo 'Build Ministries ...'
    node ./buildscripts/build_ministries.js
    need_build=true;
else
    echo 'Ministries not changed skip build'    
fi

echo "Test homeMinistries from Airtable API"
if  $(node ./buildscripts/test_homeministries.js) ; 
then
    echo 'homeMinistries changed';
    echo 'Build homeMinistries ...'
    node ./buildscripts/build_homeministries.js
    need_build=true;
else
    echo 'homeMinistries not changed skip build'    
fi

echo "Test Photos from Airtable API"
if  $(node ./buildscripts/test_photos.js) ; 
then
    echo 'Photos changed';
    echo 'Build Photos ...'
    node ./buildscripts/build_photos.js
    need_build=true;
else
    echo 'Photos not changed skip build'    
fi

echo "Test Sermons from Airtable API"
if  $(node ./buildscripts/test_sermons.js) ; 
then
    echo 'Sermons changed';
    echo 'Build Sermons ...'
    node ./buildscripts/build_sermons.js
    need_build=true;
else
    echo 'Sermons not changed skip build'    
fi

echo "Test Series from Airtable API"
if  $(node ./buildscripts/test_series.js) ; 
then
    echo 'Series changed';
    echo 'Build Series ...'
    node ./buildscripts/build_series.js
    need_build=true;
else
    echo 'Series not changed skip build'    
fi

echo "Test Home Series from Airtable API"
if  $(node ./buildscripts/test_homeseries.js) ; 
then
    echo 'Home Series changed';
    echo 'Build Home Series ...'
    node ./buildscripts/build_homeseries.js
    need_build=true;
else
    echo 'Home Series not changed skip build'    
fi

if $need_build;
then
echo "Build Jekyll";
jekyll build
## 
## --This is actually not nescessary because glynn run's jekyll build--
echo "Compile SASS";
node-sass _css/app.scss _site/assets/css/app.css;


echo "Run Glynn";
#in progress   run glynn
else 
echo "Everything up to date. Skip building";
fi
echo -e '\n Complete all scripts';