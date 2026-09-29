---
documento: Protocolo do Estudo-Piloto (1º paper do Mestrado) — v2 reconciliada
recorte: Gating de IA no SDLC com Núcleo Determinístico
status: estudo (não-canônico) — pré-registro corrigido (confound + unidade de análise + LTC travado)
---

# 🔬 ESTUDO-PILOTO — Protocolo Reconciliado (v2)

> **Por que esta v2:** a v1 (e o rascunho de 2 squads) misturava dois experimentos e cometia dois erros que uma banca acharia na hora — **(1) confound** (testava o pacote inteiro, não o mecanismo) e **(2) unidade de análise** (1 squad por braço = n=1, p-valor vazio). A correção não joga nada fora: ela **separa em dois estudos complementares e triangulados.**

## 0. Os dois estudos (e por que precisam ser dois)
| | **Estudo A — Caso Industrial (90 dias)** | **Estudo B — Experimento Controlado** |
|---|---|---|
| Pergunta | "O ZenithCode Lite (pacote) é líquido-positivo num ambiente regulado real?" | "A composição *IA-sugere / regra-decide* reduz defeitos sem matar o lead time?" (**RQ da tese**) |
| Unidade | o **squad ao longo do tempo** (séries) | o **desenvolvedor** (within-subjects) |
| Desenho | Série Temporal Interrompida + mixed-methods | within-subjects, tarefas isomórficas |
| Alegação | relevância de negócio (causalidade fraca, honesta) | **delta científico** com poder estatístico |
| Saída | 1º paper (SBES — track industrial) | paper-âncora da tese (ESEM/EMSE → ICSE/FSE) |

A triangulação A+B (+ mineração de repositórios no Doutorado) é o que torna a contribuição **inatacável**: o campo dá relevância, o controlado dá rigor, o mining dá validade externa.

---

## 1. Estudo A — Caso Industrial de 90 dias (Série Temporal Interrompida)

### Desenho
- **2 squads** (Alpha = ZenithCode Lite; Beta = esteira tradicional + IA livre).
- **Cada squad é seu próprio controle no tempo** (Interrupted Time Series): mede-se DORA por **4 semanas antes** das travas, **durante** os 90 dias, e a tendência. A "interrupção" é a ativação das 6 regras no Alpha.
- Beta = **referência contextual**, não braço estatístico inferencial (assumido).
- **Mixed-methods:** métricas automáticas + entrevistas/diário do time (o "porquê" por trás dos números).

### Tratamento (as 6 Regras do Lite, em runtime no Alpha)
1. **T.D.E. Enxuto** — PR exige cabeçalho de racional + teste; build quebra se cobertura do diff = 0.
2. **Muro de Berlim Arquitetural** — ArchUnit barra Infra→Core no CI.
3. **Error Budget Puro (SLO)** — teto de 5% de erro/sprint; estourou → só refatoração.
4. **Filtro de Anticorpos** — fechar incidente Sev-1 exige PR da regra que previne a recidiva.
5. **Firewall de Dependências** — registry interno obrigatório + scan de CVE.
6. **Limite de WIP** — trava visível no board.

### Limite causal (declarado, não escondido)
O Estudo A mede o **pacote**. Ele **não isola** qual das 6 regras causou o efeito — por isso existe o Estudo B. Apresentar o A como prova causal do gating de IA seria desonesto; o A prova **adoção e efeito agregado** num contexto real.

### Fogo Sintético — em STAGING, não produção
A simulação de incidente (dia ~45) roda em **ambiente de homologação**, não em produção. Injetar P1 real na janela DORA contaminaria a própria métrica e mexeria com negócio real. Marca-se a janela como evento controlado.

---

## 2. Estudo B — Experimento Controlado (o delta da tese)

### Desenho
- **within-subjects**, **12–24** desenvolvedores, **tarefas isomórficas** (núcleo de domínio + adapters, pontos de defeito sabidos), **contrabalanceamento por quadrado latino**.
- **Fator isolado:** regime de IA = {Sem-IA, IA irrestrita, IA *gated*}. **Tudo o mais é constante** — é isto que isola o mecanismo que o Estudo A não consegue.
- Resolve as duas rachaduras: sem confound (só o regime varia) e com poder (n por participante, não por squad).

*(Detalhe completo de tarefas, oráculo oculto e instrumentos = seção 3.)*

---

## 3. Variáveis e métricas (comuns aos dois estudos)
| Métrica | Definição operacional | Instrumento |
|---------|------------------------|-------------|
| **Densidade de Defeitos (Dd)** | bugs ÷ KLOC (A: em produção; B: testes ocultos) | issue tracker / suíte oculta + `cloc` |
| **Change Failure Rate (CFR)** | % de deploys que falham/exigem mitigação | logs de CD |
| **Lead Time for Changes (LTC)** | 1º commit da tarefa → produção/aceite | git + CI |
| **Violações de dependência** | nº de Infra→Core | ArchUnit |
| **Retrabalho** | churn pós-1ª submissão | git diff |
| **Carga Cognitiva (Cc)** | NASA-TLX ao fim de cada ciclo | questionário validado |
| **Taxa de Overrides de Negócio** | nº de exceções comerciais que queimaram Error Budget | logs do protocolo de exceção |
| **% de código de origem IA** | proveniência por instrumentação consentida | telemetria opt-in (R4) |

> Coleta **automatizada** sempre que possível (anti-interferência humana). Telemetria = **opt-in, sobre artefato/proveniência, nunca keystroke/biometria** (coerência com R4).

---

## 4. ⚖️ Pré-registro do LTC (decisão travada)
- **Teto de degradação aceitável do Lead Time = 15%.** Razão: a cunha de mercado é **software regulado/alta-garantia**, onde defeito caro pesa mais que velocidade; aceitar 25% contradiria o posicionamento.
- **Medido em estado estacionário — Ciclo 3 (dias 60–90)**, não na janela inteira (os primeiros 30 dias inflam o LTC só por curva de aprendizado; isso é adaptação, não defeito do mecanismo).
- Tratado como **margem de não-inferioridade**: reporta-se efeito + intervalo de confiança, **não** um corte binário cego.

---

## 5. Critérios de Morte / Falseabilidade (R6)
| Regra / mecanismo | Hipótese | Critério de morte |
|-------------------|----------|-------------------|
| **Gating de IA (B)** | Dd(gated) < Dd(irrestrito) | sem diferença significativa (p≥0,05) **ou** efeito desprezível |
| **Error Budget rígido (A/B)** | mais estabilidade no longo prazo | LTC piora **>15% no Ciclo 3** sem queda equivalente de CFR |
| **T.D.E. / Racional (A/B)** | menos code bloat e retrabalho | time gasta mais tempo **burlando** o racional (descrições genéricas) do que projetando — *Efeito Goodhart* |
| **Reserva de Domínio (B)** | menos violações + melhor manutenibilidade | manutenibilidade não melhora vs. controle |

> Resultado **nulo bem medido é publicável**. A simbiose pode dar **líquido-negativo** em algum contexto — e dizer isso com dados é a contribuição honesta.

## 6. Plano de análise (declarado antes da coleta)
- **Estudo A:** *segmented regression* da série temporal interrompida (nível e tendência pré/pós); análise temática das entrevistas. Sem p-valor entre squads (n=1/braço); foco em **efeito intra-squad + IC**.
- **Estudo B:** mixed-effects (aleatório por participante e tarefa); fallback não-paramétrico (Friedman + Nemenyi); **tamanhos de efeito** sempre (Kendall's W, Cliff's δ); correção de Holm.

## 7. Ameaças à validade (e como foram tratadas)
- **Construto/confound** → resolvido pela separação A (pacote) × B (mecanismo isolado).
- **Unidade de análise** → A não faz inferência entre squads; B faz inferência no nível do indivíduo.
- **Externa** → A é um contexto real (relevância); B é controlado (rigor); **mining no Doutorado** fecha a generalização.
- **Maturação/aprendizado** → ITS + janela estacionária (Ciclo 3) + contrabalanceamento (B).

## 8. Ética e privacidade (R4)
Consentimento informado; anonimização de hashes; telemetria opt-in sobre artefatos; submissão ao Comitê de Ética antes da coleta; pacote de replicação público.

## 9. Cronograma (90 dias) e saídas
| Janela | Atividade | Alimenta |
|--------|-----------|----------|
| Dias 1–15 | Setup: linters/ArchUnit, logs, registry, instrumentação; aplicar Contrato de Hipótese no backlog | A |
| Dias 16–45 | Ciclo 1 (estabilidade): linha de base DORA + Cc | A |
| Dias 46–75 | Ciclo 2 (estresse): Fogo Sintético **em staging** | A |
| Dias 60–90 | Ciclo 3 (estacionário): janela oficial do LTC | A |
| Em paralelo | Rodadas do Estudo B com tarefas isomórficas (12–24 devs) | B |
| Dias 76–90 | Fechamento estatístico + pacote de replicação público | A + B |

**Saídas:** Estudo A → 1º paper (SBES industrial, a "prova de mercado"); Estudo B → paper-âncora da tese (ESEM/EMSE). Juntos = base do recorte de Doutorado.
