aws --endpoint-url=http://localhost:4566 iam create-user --user-name MeuNovoUsuario

aws --endpoint-url=http://localhost:4566 iam create-group --group-name MeuNovoGrupo

aws --endpoint-url=http://localhost:4566 iam add-user-to-group --group-name MeuNovoGrupo --user-name MeuNovoUsuario

aws --endpoint-url=http://localhost:4566 iam list-groups-for-user --user-name MeuNovoUsuario





