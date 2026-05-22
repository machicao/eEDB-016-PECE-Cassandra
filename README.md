# eEDB-016-PECE-Cassandra
> **Hands-on Cassandra:** Repositório de suporte para práticas e estudos de modelagem de dados no Apache Cassandra.

---

## ⚠️ Status dos Ambientes e Links Úteis

Devido à aquisição da **DataStax pela IBM** em outubro de 2025, a infraestrutura dos cursos originais passou por mudanças significativas. Fique atento aos status atuais dos laboratórios virtuais:

*   **Documentação Original (Descontinuada):** O portal antigo (`datastax.com/learn/data-modeling-by-example`) está sendo descontinuado ou migrado pela IBM.
*   **Killercoda (Inativo):** O curso interativo no Killercoda foi desativado e o link original não funciona mais.
*   **Gitpods DataStaxDevs (Atualização de Maio/2026):** Os ambientes sandbox baseados em Gitpod agora exigem a vinculação de um cartão de crédito para execução (modelo pago).

---
## Casos de Estudo
Como alternativa confiável, utilize os **repositórios originais do GitHub** listados abaixo para clonar os esquemas e rodar localmente ou em seu próprio cluster Cassandra.

| Domínio de Negócio | Link Neste Repositório (Local) | GitHub Original (Referência) |
| :--- | :--- | :--- |
| 📟 **1. Sensor Data (IoT)** | [1data-modeling-sensor-data](./1data-modeling-sensor-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-sensor-data) |
| 💬 **2. Messaging Data** | [2data-modeling-messaging-data](./2data-modeling-messaging-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-messaging-data) |
| 🎵 **3. Music Data** | [3data-modeling-music-data](./3data-modeling-music-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-music-data) |
| 📈 **4. Investment Data** | [4data-modeling-investment-data](./4data-modeling-investment-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-investment-data) |
| ⏱️ **5. Time Series Data** | [5data-modeling-time-series-data](./5data-modeling-time-series-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-time-series-data) |
| 🛒 **6. Shopping Cart** | [6data-modeling-shopping-cart-data](./6data-modeling-shopping-cart-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-shopping-cart-data) |
| 📦 **7. Order Management** | [7data-modeling-order-management-data](./7data-modeling-order-management-data) | [DataStax Academy](https://github.com/DataStax-Academy/data-modeling-order-management-data) |


---
## 📁 Organização das pastas

Como estes projetos foram unificados neste repositório, cada domínio de negócio está estruturado de forma padronizada. A arquitetura de pastas e arquivos segue o modelo abaixo:
Cada repositório contém os esquemas CQL, explicações conceituais e os fluxos de consultas (`Query-First Approach`)
```text
📂 data-modeling-[nome-do-projeto]/
├── 📄 modelagem.pdf        # Documentação conceitual copiada da versão original
├── 📂 .jpg                 # Gráficos, diagramas e fluxos de consultas (Query-First)
├── 📂 data/
│   └── 📜 schema_data.cql # Arquivo CQL com a estrutura e dados de teste
├── 📝 step-1.md            # Instruções de construção (DDL)
├── 📝 step-2.md            # Instruções de população (DML / Inserts)
└── 📝 step-3.md            # Instruções e validação das consultas (Queries)
└── 📝 step-N.md            # Instruções ..
```

