aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name SQSFullAccess --policy-document file://sqs-policy.json

aws --endpoint-url=http://localhost:4566 iam create-user --user-name MeuNovoUsuario

aws --endpoint-url=http://localhost:4566 iam attach-user-policy --user-name MeuNovoUsuario --policy-arn arn:aws:iam::000000000000:policy/SQSFullAccess

aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name NomeDaFila


