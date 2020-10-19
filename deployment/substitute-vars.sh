for VAR in deployment/custom-control-tower-buckets.cfn.yml deployment/custom-control-tower-initiation.template
do
    sed -i \
    -e "s/%SOLUTION_NAME%/Ripe Control Tower custom/" \
    -e "s/%VERSION%/`git describe --tags --abbrev=0`/" \
    -e "s/%TEMPLATE_BUCKET_NAME%/custom-control-tower-templates/" \
    -e "s/%DIST_BUCKET_NAME%/custom-control-tower-dist/" \
    $VAR
done