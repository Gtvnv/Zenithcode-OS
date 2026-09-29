---
satelite: Hermes
dominio: Supply Chain / Logística / Telemetria Física
camada: nicho (Just-in-Time)
status: canônico V3.9
Nível_Acesso: Liderança
Gatilho_Operacional: "#SupplyChain #Logística"
Domínio_Relacionado: "#EventSourcing #Telemetria #M2M"
identificador: Z2A-FWK-HERMES (v1.0.0)
---

# 📦 HERMES — Sistema Nervoso da Operação Física

## 1. Identidade
O *"Sistema Nervoso da Operação Física"*: supply chain, logística e telemetria de ativos. Alimenta o Árgus (CAPEX físico) e o Zyntra ERP.

## 2. Razão de Existir (vínculo TCC)
Cura: *ataques à Cadeia de Suprimentos* (Log4j/SBOM) na dimensão física, e a falta de rastreabilidade que o TCC associa a passivos irreversíveis.

## 3. Regras Vigentes Canônicas (V3.9)

### 3 Bounded Contexts (DDD)
- **Rastreabilidade:** Event Sourcing (eventos imutáveis: `InsumoRecebido`, etc.); identidade criptográfica por item (ponta a ponta).
- **Telemetria de Ativos:** Time-Series; manutenção preditiva; **Telemetria de Depreciação** (desgaste por condição, ex.: operação > 40 °C).
- **Orquestração de Fábrica:** roteirização, filas, throughput do chão de fábrica.

### Padrões
- **Hexagonal:** core isolado; RFID/balança/GPS só em Adapters.
- **Zero Trust M2M via AegisProtocol** (mandatório).
- **Resiliência:** Circuit Breaker + **Outbox Pattern** offline (sync transacional quando a conexão volta).

### Fluxo
`[IoT] → OmniShift Gateway → Hermes → (eventos) Zyntra SGE/ERP (baixa inventário/fiscal) + (métricas) Árgus (CAPEX real/refugo/depreciação)`. gRPC interno.

### Polinização Cruzada
"Rota de Hermes" é também o canal pelo qual a EVELYN encaminha PRs para auditoria intercontinental (anti-Galápagos) — ver EVELYN.

## 4. Integrações
**OmniShift** (gateway de ingestão), **Zyntra ERP**, **Árgus** (custos físicos), **Themis/AegisProtocol** (Zero-Trust M2M), **Hefesto** (telemetria de hardware).

## 5. Gatilhos
Estoque físico, distribuição de hardware, montagem/manufatura, supply chain externa (3PL/4PL).

## 6. Supersessões (pontuação)
- ✅ **VIGENTE** integralmente (FRAMEWORK HERMES v1.0.0); satélite de nicho sem histórico de substituição. Acoplado Just-in-Time (não faz parte da Tríade do Dia 1).
