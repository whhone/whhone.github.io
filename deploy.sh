#!/bin/sh
#
# Build and upload the site.
# See https://gohugo.io/hosting-and-deployment/deployment-with-rsync/

OUTPUT_DIR=/tmp/whhone/public/

rm -rf ${OUTPUT_DIR}

hugo -d ${OUTPUT_DIR} && rsync -avzP --delete ${OUTPUT_DIR} whhone.com:/var/www/whhone.com/
