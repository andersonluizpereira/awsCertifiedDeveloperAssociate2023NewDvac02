aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name SNSFullAccess --policy-document file://sns-policy.json


aws --endpoint-url=http://localhost:4566 sns create-topic --name NomeDoTopico

aws --endpoint-url=http://localhost:4566 iam create-group --group-name MeuNovoGrupo

aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name MeuNovoGrupo --policy-arn arn:aws:iam::000000000000:policy/SNSFullAccess


