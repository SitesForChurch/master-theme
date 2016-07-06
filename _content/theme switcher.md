For each script:

## Step 1 - Copy Current Theme Files to a folder in _archive

These include:

* All `.html` files in the root directory.
* The `_css` folder
* The `_includes` folder
* The `_layouts` folder

## Step 2 - Copy the selected theme files back into the root and overrite the current folders/files.

The theme files live in `_themes` 

mkdir -p ./_themeBackups/$(date '+%d-%b-%Y') && cp *.html ./_themeBackups/$(date '+%d-%b-%Y') && rsync -av _css ./_themeBackups/$(date '+%d-%b-%Y') && rsync -av _includes ./_themeBackups/$(date '+%d-%b-%Y') && rsync -av _layouts ./_themeBackups/$(date '+%d-%b-%Y')

cp -f _themes/california/*.html ./ && rsync -av _themes/california/_css ./ && rsync -av _themes/california/_layouts ./ && rsync -av _themes/california/_includes ./
