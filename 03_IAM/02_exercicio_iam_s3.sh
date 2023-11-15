aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name S3FullAccess --policy-document file://s3-policy.json

aws --endpoint-url=http://localhost:4566 iam attach-user-policy --user-name MeuNovoUsuario --policy-arn arn:aws:iam::000000000000:policy/S3FullAccess