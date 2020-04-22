# Build and upload the site.

OUTPUT_DIR=/tmp/whhone/public/

rm -rf ${OUTPUT}

hugo -d ${OUTPUT_DIR} && rsync -aP --delete ${OUTPUT_DIR} whhone.com:/var/www/whhone.com/
