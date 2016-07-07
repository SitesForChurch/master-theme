#!/bin/bash

path="/mnt/c/Sites/sitesforchurch/master-theme/";
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

if $need_build;
then
echo "Will build Jekyll";
#jekyll build
#in progress   compile sass
#in progress   run glynn
else 
echo "Everithing up to date. Skip building";
fi
echo -e '\n Complete all scripts';