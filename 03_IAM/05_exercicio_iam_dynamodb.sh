aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name DynamoDBFullAccess --policy-document file://dynamodb-policy.json

aws --endpoint-url=http://localhost:4566 iam attach-user-policy --user-name MeuNovoUsuario --policy-arn arn:aws:iam::000000000000:policy/DynamoDBFullAccess

aws --endpoint-url=http://localhost:4566 dynamodb create-table --table-name NomeDaTabela --attribute-definitions AttributeName=ID,AttributeType=S --key-schema AttributeName=ID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5

aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name MeuNovoGrupo --policy-arn arn:aws:iam::000000000000:policy/DynamoDBFullAccess