#!/bin/bash
for VAR in deployment/custom-control-tower-buckets.cfn.yml deployment/custom-control-tower-initiation.template
do
    sed -i \
    -e "s/%SOLUTION_NAME%/$SOLUTION_NAME/" \
    -e "s/%VERSION%/$VERSION`/" \
    -e "s/%TEMPLATE_BUCKET_NAME%/$TEMPLATE_BUCKET_NAME/" \
    -e "s/%DIST_BUCKET_NAME%/$DIST_BUCKET_NAME/" \
    $VAR
done