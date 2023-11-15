aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name EC2FullAccess --policy-document file://ec2-policy.json

aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name MeuNovoGrupo --policy-arn arn:aws:iam::000000000000:policy/EC2FullAccess