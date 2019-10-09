export AWS_PROFILE=lambda-julia
export AWS_DEFAULT_REGION=eu-west-1

# aws lambda delete-function --function-name MANUAL-bash-runtime

aws lambda create-function --function-name MANUAL-bash-runtime \
--layers arn:aws:lambda:eu-west-1:324686637734:layer:MANUAL-bash-runtime:10 \
--zip-file fileb://function-only.zip \
--handler function.handler \
--runtime provided \
--role arn:aws:iam::324686637734:role/MANUAL-lambda-role
