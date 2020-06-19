aws cloudformation create-stack --region us-east-1 --stack-name c3-s3 --template-body file://../task2/c3-s3.yml
#{
#    "StackId": "arn:aws:cloudformation:us-east-1:332528381496:stack/c3-s3/519f2030-b1a3-11ea-b2d4-0a531bfc577e"
#}

aws cloudformation create-stack --region us-east-1 --stack-name c3-vpc --template-body file://../task2/c3-vpc.yml
#{
#    "StackId": "arn:aws:cloudformation:us-east-1:332528381496:stack/c3-vpc/8cf5e6e0-b1a4-11ea-8342-0ece9c9311f7"
#}

aws cloudformation create-stack --region us-east-1 --stack-name c3-app --template-body file://../task2/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=cloud-k2-kv --capabilities CAPABILITY_IAM
#{
#    "StackId": "arn:aws:cloudformation:us-east-1:332528381496:stack/c3-app/e8db7c80-b1a5-11ea-85b7-1277ff2044b7"
#}


aws s3 cp free_recipe.txt s3://cand-c3-free-recipes-332528381496/ --region us-east-1

aws s3 cp secret_recipe.txt s3://cand-c3-secret-recipes-332528381496/ --region us-east-1

# view the files in the secret recipes bucket
aws s3 ls  s3://cand-c3-secret-recipes-332528381496/ --region us-east-1

# download the files
aws s3 cp s3://cand-c3-secret-recipes-332528381496/secret_recipe.txt  .  --region us-east-1

# view contents of the file
cat secret_recipe.txt