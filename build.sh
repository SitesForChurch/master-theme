#!/bin/bash

path="/mnt/c/Sites/sitesforchurch/master-theme/";
git_path="https://github.com/SitesForChurch/master-theme.git";

echo "Navigate to web root: $path";

cd $path;

echo "Update repo ...";
git pull $git_path;
echo -e '\n Complete';