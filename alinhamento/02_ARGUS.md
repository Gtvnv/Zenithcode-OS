---
satelite: Árgus
dominio: FinOps / Controle de Ativos & Orçamento
camada: 0 (Inegociável) — opera o GECON
status: canônico V3.9
Nível_Acesso: Liderança
Gatilho_Operacional: "#Deploy #Orçamento #FinOps"
Domínio_Relacionado: "#GECON #ErrorBudget #FinOps"
---

# 👁️ ÁRGUS — FinOps & Oxigênio Financeiro

## 1. Identidade
O *"Oxigênio Financeiro"* da holding. Atuador/vigia ortogonal do balanço, **Camada 0 inegociável**: prevalece sobre produto e engenharia; ninguém pode silenciar suas travas. É a voz da **Cadeira da Avareza** no Conselho de Prometeu e o operador do **GECON**.

## 2. Razão de Existir (vínculo TCC)
Cura: *Code Bloat / Lei de Wirth / insustentabilidade ecológica* (cada ciclo de CPU desperdiçado é custo e pegada de carbono), *Vendor Lock-in / Cloud Captive* (faturas exorbitantes, perda de soberania) e a falta de *Unit Economics* na engenharia.

## 3. Regras Vigentes Canônicas (V3.9)

### Arquitetura interna (DDD)
- **Ledger Core** (Event Sourcing; estornos compensatórios, nunca altera registro), **Asset Management** (TCO/depreciação de ativos digitais + físicos), **Policy Engine** (travas / Cadeira da Avareza).
- **Circuit Breakers Fiduciários** autônomos: kill switch revoga tokens em anomalia de gasto.

### Controle financeiro
- **Error Budget Financeiro:** `EB = 100% − SLI(Custo)`; `EB ≤ 0` → bloqueia deploys/provisionamento.
- **Controle CAPEX** (comitê) vs **OPEX** (limite linear sobre faturamento).
- **Recuperação Judicial Interna (Bailout):** missão que zera o Error Budget não é desligada; sofre resgate punitivo (liderança perde autonomia; Prometeu congela features e força quitação da dívida técnica).
- **Débito do Override Fiduciário (V4.0):** quando a gestão força um lançamento por cima do veto técnico, o Árgus debita **~40% do Error Budget trimestral** do squad (slash automático). Reincidência (2× no semestre) → squad proibido de lançar features novas até o fim do ciclo. Ver `00_PROTOCOLO_OVERRIDE_E_RESGATE.md`.
- **Bússola do GECON (Gatilho de Expansão Cirúrgica):** se o custo acumulado (multas de nuvem + queima de Error Budget por Override) ultrapassar o salário de um novo dev, o Árgus monta a **justificativa fiduciária automática** para abertura de vaga (sem o gestor "implorar em PowerPoint").
- **Contabilidade da Fadiga:** debita a receita perdida da unidade que falhou na Égide.

### Motor econômico (GECON — ver `00_NUCLEO`)
- **Halving Algorítmico** (deflação programada do preço da tarefa).
- **Bounty Escrow 60/40** (risco técnico) e **Moonshot Tier** (risco de mercado, 100% holding).
- **Cadeia de Custódia do Risco (quem aposta):** o lastro é o **saldo coletivo do squad**, nunca o pessoal. O **dev só marca `#VentureRisk`** (zero acesso à aposta — Muro de Berlim Financeiro); ELOS/ORION podem vetar por exaustão; **só o Tech Leader (Guiar) assina** o Smart Contract de Venture Risk. O **Árgus é quem arbitra o 60/40 nos bastidores** (Gamificação Invisível: a UI mostra "Risco Blindado", não roleta). *Detalhe completo em `00_NUCLEO_Z2A_E_GECON.md`.*
- **Filtro Preditivo (V3.9):** *Simulação Árgus* pré-avalia propostas Moonshot (cruza preço AWS/Azure, calcula Burn Rate); ROI negativo preditivo → rejeita silenciosamente pedindo "Otimização de Escala". Protege o tempo do Zenitar.
- **Liquidez Gênesis** (Venture Debt custo zero) com **Trava Subprime** (NASCER só em risco técnico).
- **Sumidouros de Liquidez (T2.07):** Via Expressa de Hardware (Z-Points queimados para furar fila de GPU; seca inflação); Mercado Anjo Interno (sênior financia Moonshot de júnior por dividendos passivos).
- **Z-Points nunca em cash** (PLR Algorítmica / Vesting de Equity); IPC-Z para paridade regional.

### FinOps de Nuvem & Silício
- **Arbitragem Multi-Cloud:** trader noturno que migra cargas para a nuvem mais barata (≈ −15% fatura), anti-lock-in (sobe Adapters no GCP, drena conexões, desliga AWS).
- **Geocerceamento Matemático (Geofencing Criptográfico):** o otimizador é **matematicamente cego** a servidores fora da zona soberana permitida (Etiqueta de Gravidade Soberana, ex.: `ZONA-EU-STRICT`). Separa Árgus (preço) de Themis (lei) — um servidor sancionado **não entra na equação**.
- **QoS Criptográfico do Silício:** Tier 0 (segurança/AegisProtocol) fura a fila de GPU; Tier 2 (refatoração) roda em lote assíncrono.
- **Telemetria de Inferência:** Índice de Fricção de Prompt (Tokens ÷ PRs aprovados) + GPU Burn Rate + Punição da Preguiça (trava cota de inferência, exige DDD antes).
- **Índice de Densidade Cibernética (IDC):** `Valor de Negócio Entregue ÷ (Custo de Inferência GPU + Custo Biológico)`. Mede a eficiência do squad Centauro.

### Custeio ABC / TDABC Automatizado (V4.2 — controladoria + auditoria)

> 🎯 **Papel narrativo (para textos externos):** o TDABC **não é um satélite genérico de finanças** — é o **instrumento empírico que prova comercialmente que a governança de IA se paga** (reduz retrabalho por bugs não rastreáveis e downtime → ROI positivo e quantificável). Em pitch/banca, apresente-o como **evidência comercial do modelo "IA sugere / regra decide"**, não como tese autônoma. Ver `00_ENTRADA_TECNICA.md`.
O Árgus deixa de ratear overhead por igual ("peanut-butter") e passa a **rastrear o custo real até o que o gera**, via **Time-Driven Activity-Based Costing (TDABC) automatizado**. É o que torna rigoroso o "P&L por microsserviço" e o Preço de Transferência (que antes eram promessa).

- **Modelo (Recursos → Atividades → Objetos de Custo):**
  - **Recursos:** cloud, GPU, salários, licenças.
  - **Atividades:** build, test, deploy, inferência de IA, resposta a incidente, code review.
  - **Objetos de Custo:** microsserviço, feature, squad, **cliente/contrato**.
  - **Drivers (medidos automaticamente):** compute-segundos, tokens de inferência, GB/egress, nº de deploys, nº de tickets, horas — colhidos de OpenTelemetry, billing de cloud e metering de GPU.
- **Por que TDABC e não ABC clássico:** o ABC tradicional morre pelo **custo de coleta** (surveys, proliferação de atividades). Aqui a instrumentação já coleta os drivers → **ABC automatizado**; usa equações de tempo/driver, não entrevistas.
- **Alimenta:** IDC (denominador real), P&L por microsserviço, Preço de Transferência não-arbitrário, **custo verdadeiro por cliente** (munição do Apolo no B2B regulado) e o Value Budget (R2).
- **Auditoria:** o dado ABC assenta no **Ledger Core (Event Sourcing)** + logs **WORM do Themis Ômega** → cada real **rastreável ao seu driver** (cadeia de custódia de custo, não planilha).

**Cautelas honestas (inegociáveis):**
- 🚧 **Firewall dos Z-Points:** o ABC vive **só** na camada de custo/gestão (radar do Árgus). **Nunca** toca a recompensa (Z-Points) — misturar recria o "Dev Trader" e derruba o Muro de Berlim Financeiro.
- 🚧 **Cap de drivers (anti-Ataque 11):** limite o nº de atividades/drivers pela regra 80/20 — modele o custo que importa, não todo custo. TDABC existe justamente para não virar a burocracia que o sistema condena.
- 🚧 **Camada de produto, não ciência:** é método de controladoria, não afirmação falseável por si.

> 🎓 **Candidato a validação futura (Doutorado ou MBA internacional):** *"TDABC automatizado para objetos de custo de software"* — funcionou? A alocação bate com a fatura real? Reduz decisão por achismo? Onde falhou/superou o esperado? É uma **thread secundária** possível (ver `_REFORCOS/TESE_RECORTE_DE_PESQUISA.md`), separada do recorte principal de gating de IA.

## 4. Integrações
- **Hermes & DK-Ops** (inbound de custos: CAPEX físico, refugo, depreciação, consumo de nuvem).
- **Atlas** (envia telemetria → cruza com SPED/eSocial, Event Sourcing imutável).
- **Prometeu** (Cadeira da Avareza, veto orçamentário).
- **Themis** (anomalia de gasto aciona kill switch).
- **CI/CD** (Deployment Gates) e ERPs Fiscais (outbound).

## 5. Supersessões (pontuação)
- ❌ **OBSOLETA:** *Cassino Corporativo visível* → ✅ Gamificação Invisível (Árgus arbitra a aposta nos bastidores; UI mostra "Risco Blindado").
- ❌ **OBSOLETA:** *Moonshot 10x imediato* → ⬆️ Vesting (3x + 7x escrow, V3.2).
- ✅ **VIGENTE:** Error Budget, Halving, arbitragem multi-cloud, Circuit Breakers Fiduciários (desde V2.6, sem substituto).

## 6. Observações
- A separação **Telemetria GECON (radar de gestão)** × **Z-Points (combustível)** é inviolável: medir é para iluminar, não punir.
- A *Fronteira Anti-Microgerenciamento*: o Árgus é trava de CAPEX global, **não** bedel de micro-despesa — aloca Error Budget mensal; como o time gasta é do líder tático.
