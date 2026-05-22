# eEDB-016-PECE-Cassandra
> **Hands-on Cassandra:** Repositório de suporte para práticas e estudos de modelagem de dados no Apache Cassandra.

---

## ⚠️ Status dos Ambientes e Links Úteis

Devido à aquisição da **DataStax pela IBM** em outubro de 2025, a infraestrutura dos cursos originais passou por mudanças significativas. Fique atento aos status atuais dos laboratórios virtuais:

*   **Documentação Original (Descontinuada):** O portal antigo (`datastax.com/learn/data-modeling-by-example`) está sendo descontinuado ou migrado pela IBM.
*   **Killercoda (Inativo):** O curso interativo no Killercoda foi desativado e o link original não funciona mais.
*   **Gitpods DataStaxDevs (Atualização de Maio/2026):** Os ambientes sandbox baseados em Gitpod agora exigem a vinculação de um cartão de crédito para execução (modelo pago).

---

## 📁 Organização dos Casos de Estudo

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
Como alternativa confiável, utilize os **repositórios originais do GitHub** listados abaixo para clonar os esquemas e rodar localmente ou em seu próprio cluster Cassandra.


--- 
## 📚 Repositórios de Modelagem por Exemplo (DataStax Academy)

Abaixo estão os links originais para os cenários práticos de modelagem de dados.

| Domínio de Negócio | Link do Repositório GitHub |
| :--- | :--- |
| 🛒 **Shopping Cart** | [data-modeling-shopping-cart-data](https://github.com/DataStax-Academy/data-modeling-shopping-cart-data) |
| 📦 **Order Management** | [data-modeling-order-management-data](https://github.com/DataStax-Academy/data-modeling-order-management-data) |
| 🎵 **Music Data** | [data-modeling-music-data](https://github.com/DataStax-Academy/data-modeling-music-data) |
| 📟 **Sensor Data (IoT)** | [data-modeling-sensor-data](https://github.com/DataStax-Academy/data-modeling-sensor-data) |
| 💬 **Messaging Data** | [data-modeling-messaging-data](https://github.com/DataStax-Academy/data-modeling-messaging-data) |
| 📈 **Investment Data** | [data-modeling-investment-data](https://github.com/DataStax-Academy/data-modeling-investment-data) |
| ⏱️ **Time Series Data** | [data-modeling-time-series-data](https://github.com/DataStax-Academy/data-modeling-time-series-data) |

