#!/usr/bin/env bash

aws s3 sync dist/ s3://beta.gpvaccinesearch.com/ --delete

# Don't cache on frontend
aws s3 cp s3://beta.gpvaccinesearch.com/index.html s3://beta.gpvaccinesearch.com/index.html --metadata-directive REPLACE --cache-control max-age=0,no-cache,no-store,must-revalidate --content-type text/html --acl public-read
