# Oficina Database Infra

Provisiona PostgreSQL gerenciado em AWS RDS usando Terraform, com storage criptografado, backup, Performance Insights e credenciais armazenadas no AWS Secrets Manager.

## Pré-requisito
Receber do repositório de infraestrutura Kubernetes: `vpc_id`, `private_subnet_ids` e `vpc_cidr`.

## Deploy
```bash
cd terraform
terraform init
terraform validate
terraform plan -var='vpc_id=...' -var='private_subnet_ids=["subnet-..."]' -var='vpc_cidr=10.42.0.0/16'
terraform apply
```

## Modelagem
Veja [docs/ER.md](docs/ER.md).
