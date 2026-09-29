---
documento: Matriz de Integração cross-satélite
status: canônico V3.9
Nível_Acesso: Liderança
Gatilho_Operacional: "#Arquitetura #Consulta"
Domínio_Relacionado: "#KernelPlugins #SITOs"
---

# 🔗 MATRIZ DE INTEGRAÇÃO — Quem fala com quem

> Cada satélite é um SITO autônomo (membrana de fronteira). A integração acontece **na fronteira** via Schema de Eventos (gRPC/Protobuf no OmniShift), nunca tocando a lógica interna do outro. Esta matriz consolida as integrações declaradas em cada documento.

## 1. Tabela de Dependências

Lê-se: **linha → coluna** ("a linha envia/depende de"). `●` = integração direta e forte; `○` = integração situacional.

| de ↓ / para → | Z2A | Themis | Árgus | DK-Ops | Quíron | Hefesto | EVELYN | Apolo | Prometeu | Atlas | Cathar. | Hermes | Odyssey | Oráculo | Égide |
|---------------|-----|--------|-------|--------|--------|---------|--------|-------|----------|-------|---------|--------|---------|---------|-------|
| **Z2A** | — | ● | ● | ● | ● | ○ | ● | ○ | ○ | ○ | ● | ○ | ○ | ● | ○ |
| **Themis** | ● | — | ○ | ● | ● | ● | ● | ○ | ● | ● | ○ | ● | ○ | ● | ● |
| **Árgus** | ● | ● | — | ● | ● | ○ | ● | ○ | ● | ● | | ● | ○ | ○ | ● |
| **DK-Ops** | ● | ● | ● | — | ○ | ○ | ● | ● | ○ | ○ | ● | ○ | ○ | ○ | ○ |
| **Quíron** | ● | ● | ● | ○ | — | | ● | ○ | ○ | ● | ● | | ● | ○ | ○ |
| **Hefesto** | ● | ● | ● | ○ | | — | ● | | | | | ● | ○ | ● | |
| **EVELYN** | ● | ● | ● | ● | ● | ● | — | ○ | ● | ○ | ● | ○ | ● | ● | ● |
| **Apolo** | ○ | ● | ● | ● | ○ | | ● | — | ● | ○ | | | ○ | ○ | ● |
| **Prometeu** | ○ | ● | ● | ○ | ○ | | ● | ● | — | ○ | | | | ○ | |
| **Atlas** | ○ | ● | ● | ○ | ● | | ○ | ○ | ○ | — | | ○ | | ● | |
| **Catharsis** | ● | ○ | | ● | ● | | ● | | | | — | | ● | ○ | ○ |
| **Hermes** | ○ | ● | ● | ○ | | ● | ○ | | | ○ | | — | | ○ | |
| **Odyssey** | ● | ○ | ○ | ○ | ● | ○ | ● | ○ | | | ● | | — | ○ | |
| **Oráculo** | ● | ● | ○ | ○ | ○ | ● | ● | ○ | ○ | ● | ○ | ○ | ○ | — | |
| **Égide** | ● | ● | ● | ○ | ○ | | ● | ● | | | ○ | | | | — |

## 2. Binômios e acoplamentos críticos

- **Themis ↔ Oráculo** — binômio de governança: Crypto-Shredding + cadeia de custódia (logs Append-Only com hashes).
- **Árgus ↔ Prometeu** — Cadeira da Avareza: o Árgus tem voz e veto orçamentário no Conselho.
- **Themis = AegisProtocol** e **Oráculo = OmniShift** — manifestações físicas (mesma entidade).
- **Hefesto → EVELYN Edge** — telemetria de borda alimenta a IA tática.
- **Catharsis → Odyssey → Quíron** — pipeline de pessoas (entrada → forja → operação).
- **Apolo → Égide** — o cliente entra pelo Apolo (vendas) e é sustentado pela Égide (suporte).
- **DK-Ops → Apolo** — logs viram munição comercial (ROI/cases).

## 3. Diagrama de Dependências (macro)

```mermaid
flowchart LR
    subgraph CORE["⚙️ Núcleo"]
        Z2A["Z2A Core"]
        GECON["GECON (Árgus)"]
        EVELYN["E.V.E.L.Y.N."]
    end

    subgraph PESSOAS["👥 Pessoas (pipeline)"]
        CAT["Catharsis"] --> ODY["Odyssey"] --> QUI["Quíron"]
    end

    subgraph GOV["🏛️ Governança"]
        THE["Themis ≡ AegisProtocol"]
        PRO["Prometeu"]
        ATL["Atlas"]
    end

    subgraph FRONTEIRA["🌐 Fronteira & Físico"]
        HEF["Hefesto"]
        HER["Hermes"]
        ORA["Oráculo ≡ OmniShift"]
    end

    subgraph EXTERNO["💼 Externo"]
        APO["Apolo"]
        EGI["Égide"]
    end

    Z2A --> THE
    Z2A --> GECON
    EVELYN --> THE
    EVELYN --> ORA
    HEF --> EVELYN
    HER --> ORA
    HER --> GECON
    THE <--> ORA
    GECON --> PRO
    ATL --> THE
    ATL --> GECON
    QUI --> GECON
    APO --> EGI
    APO --> PRO
    EGI --> THE
    PESSOAS --> Z2A

    classDef core fill:#e8f0fe,stroke:#1a73e8;
    classDef gov fill:#fce8e6,stroke:#d93025;
    classDef ppl fill:#e6f4ea,stroke:#34a853;
    classDef front fill:#fef7e0,stroke:#f9ab00;
    classDef ext fill:#f3e8fd,stroke:#a142f4;
    class Z2A,GECON,EVELYN core;
    class THE,PRO,ATL gov;
    class CAT,ODY,QUI ppl;
    class HEF,HER,ORA front;
    class APO,EGI ext;
```

## 4. Regra de ouro da integração (SITOs)
Nenhum satélite chama a lógica interna de outro. Toda troca passa pela **fronteira** (Schema de Eventos versionado). Atualizar um satélite **não** quebra os demais (Kernel & Plugins / Versionamento Seguro).
