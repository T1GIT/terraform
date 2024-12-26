# Terraform example

Запускать с работающим vpn и minikube:
```shell
minikube start
```

## Добавление утилиты
```shell
./terraform_setup.sh
```

## Создание
```shell
./terraform_init.sh
./terraform_plan.sh
./terraform_apply.sh
```

## Просмотр

_Дашборд (namespace: terraform-example-ns)_
```shell
minikube dashboard
```

_Стартовая страница nginx_
```shell
minikube service nginx-service --url -n terraform-example-ns        
```

## Очистка
```shell
./terraform_destroy.sh
```