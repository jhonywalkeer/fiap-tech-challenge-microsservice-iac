echo "Setting profile AWS as test environment"
export AWS_ACESS_KEY=AWS_ACESS_KEY
export AWS_SECRET_KEY=AWS_SECRET_KEY
export AWS_REGION=us-east-1
export LOCALSTACK_URL=http://localhost:4566

echo "Setting up localstack profile"
aws configure set aws_access_key_id $AWS_ACESS_KEY --profile=localstack
aws configure set aws_secret_access_key $AWS_SECRET_KEY --profile=localstack
aws configure set region $AWS_REGION --profile=localstack

echo "✅ Values of the set variables"

echo "Setting up localstack profile"
aws configure list --profile localstack --output text

echo "✅ Default profile required to run localstack set"

echo "Create S3 bucket in localstack"
export BUCKET_NAME=fiap-tech-challenge-terraform-state
aws --endpoint-url $LOCALSTACK_URL s3 mb s3://$BUCKET_NAME --profile localstack --output text

echo "list S3 buckets"
aws --endpoint-url $LOCALSTACK_URL s3 ls --profile localstack --output text

echo "✅ S3 bucket created successfully"

aws --endpoint-url $LOCALSTACK_URL s3 ls s3://$BUCKET_NAME --output text