# Modelo Entidade-Relacionamento

```mermaid
erDiagram
  CUSTOMER ||--o{ VEHICLE : owns
  CUSTOMER ||--o{ SERVICE_ORDER : opens
  VEHICLE ||--o{ SERVICE_ORDER : receives
  SERVICE_ORDER ||--o{ ORDER_SERVICE_ITEM : contains
  SERVICE ||--o{ ORDER_SERVICE_ITEM : references
  SERVICE_ORDER ||--o{ ORDER_PART_ITEM : contains
  PART ||--o{ ORDER_PART_ITEM : references
  SERVICE_ORDER ||--o{ STATUS_HISTORY : tracks

  CUSTOMER {
    uuid id PK
    string document UK
    string name
    boolean active
  }
  VEHICLE { uuid id PK string plate UK uuid customer_id FK }
  SERVICE_ORDER { uuid id PK uuid customer_id FK uuid vehicle_id FK string status timestamp created_at }
  SERVICE { uuid id PK string name decimal price }
  PART { uuid id PK string sku UK string name decimal price int stock }
  ORDER_SERVICE_ITEM { uuid order_id FK uuid service_id FK decimal price }
  ORDER_PART_ITEM { uuid order_id FK uuid part_id FK int quantity decimal price }
  STATUS_HISTORY { uuid id PK uuid order_id FK string status timestamp changed_at }
```

## Justificativa
PostgreSQL foi mantido por oferecer integridade referencial, transações ACID, índices, constraints e boa aderência ao domínio relacional da oficina. Em cloud, RDS reduz a carga operacional ao fornecer backups, monitoramento e manutenção gerenciada.
