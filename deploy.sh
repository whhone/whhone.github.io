# Build and upload the site.
hugo && rsync -aP --delete public/ whhone.com:/var/www/whhone.com/
