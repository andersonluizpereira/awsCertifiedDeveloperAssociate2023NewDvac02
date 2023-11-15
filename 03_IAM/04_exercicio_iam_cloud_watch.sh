aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name CloudWatchFullAccess --policy-document file://cloudwatch-policy.json

aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/CloudWatchFullAccess