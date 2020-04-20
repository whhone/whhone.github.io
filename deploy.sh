# Build and upload the site.

OUTPUT_DIR=/tmp/whhone/public/

hugo -d ${OUTPUT_DIR} && rsync -aP --delete ${OUTPUT_DIR} whhone.com:/var/www/whhone.com/
