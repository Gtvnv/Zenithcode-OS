---
documento: Proposta Formal — Mestrado e Doutorado (guia)
proposito: guia único para levar ao orientador e conduzir a jornada acadêmica
programas: Mestrado em Engenharia de Sistemas (UFMG) + MBA SDA Bocconi/GEMBA + Doutorado em Ciência da Computação (PPGCC-UFMG)
status: estudo (não-canônico) — guia de trabalho
---

# 🎓 PROPOSTA FORMAL — MESTRADO E DOUTORADO

> Guia único e autocontido. Divisão de trabalho: **o Mestrado modela o trade-off; o Doutorado prova o mecanismo.** O ZenithCode OS aparece sempre como **contexto de aplicação**, nunca como o objeto a defender (a palavra "Constituição/Doutrina/mitologia" não entra em texto científico).

## 0. Enquadramento (a base filosófica que legitima tudo)
- **Quadrante de Pasteur:** pesquisa ao mesmo tempo **útil** (produto) e **fundamental** (ciência).
- **Design Science Research (DSR):** metodologia que aceita "construir um artefato **e** avaliá-lo com rigor". É o guarda-chuva que legitima usar o Z2A como laboratório.
- **Regra de ouro:** produto e ciência são trilhos paralelos que se alimentam (ver `PANORAMA_MESTRADO_DOUTORADO.md`), nunca o mesmo texto.

---

## 1. MESTRADO — Engenharia de Sistemas (UFMG)

**Título provisório**
*Um modelo de desempenho do trade-off velocidade × defeito no desenvolvimento de software assistido por IA sob governança arquitetural.*

**Contexto e problema (3 linhas)**
Assistentes de IA generativa aceleram a produção de código, mas há evidência crescente de aumento de defeitos e dívida técnica. Falta um **modelo quantitativo** que descreva o custo (em velocidade) de impor governança e que indique o **ponto ótimo** dessa governança.

**Pergunta de pesquisa (Mestrado)**
Existe — e onde fica — o ponto ótimo entre **lead time** e **densidade de defeitos** quando se varia a **severidade da governança** (gating) sobre a IA no ciclo de desenvolvimento?

**Objetivo geral**
Construir e estimar empiricamente um modelo do trade-off velocidade×defeito em função da severidade do gating.

**Objetivos específicos**
1. Formalizar o gating como uma variável de decisão (severidade) e o trade-off como função objetivo.
2. Derivar um modelo analítico/de desempenho da curva velocidade×defeito.
3. Estimar os parâmetros do modelo a partir de um estudo de campo (piloto de 90 dias).
4. Identificar o ponto ótimo e sua sensibilidade ao contexto (ex.: domínio regulado vs. protótipo).

**Contribuição / delta**
Um **modelo quantitativo do trade-off** (otimização + modelagem de desempenho) com parâmetros estimados em ambiente real — não "achismo", mas a matemática do ponto ótimo.

**Método**
Modelagem de desempenho / pesquisa operacional + **Estudo A** (Série Temporal Interrompida, `ESTUDO_PILOTO_MESTRADO.md`) para estimar parâmetros.

**Avaliação (falseabilidade)**
O modelo é validado se **prevê** o trade-off observado no piloto dentro de uma margem declarada; é descartado se as previsões não baterem com os dados (ver critérios de morte no protocolo).

**Entregáveis**
Dissertação + **1º artigo** (SBES / EMSE). Estimativa de poder para o experimento controlado do Doutorado.

**Aderência ao programa (Eng. de Sistemas)**
O programa é de **modelagem de sistemas e otimização**. A contribuição é **a matemática do trade-off** — servida diretamente pelas disciplinas: *Modelagem de Desempenho de Sistemas*, *Otimização Combinatória*, *Projeto e Análise de Algoritmos*.

**Ingresso**
Entrada via **disciplina isolada** (baixo compromisso, prova de nível) → seleção regular.

---

## 2. DOUTORADO — Ciência da Computação (PPGCC-UFMG)

**Título provisório**
*Composição "sugestão probabilística de IA + decisão determinística" no SDLC, com propriedade verificável de operação-sem-IA: modelo e avaliação empírica.*

**Contexto e problema**
Estudos medem que a IA gera código com mais bugs; a indústria responde com *quality gates*. Mas ninguém integrou e **avaliou empiricamente** uma composição em que a IA é **explicitamente não-autoritativa** e a decisão de integração é **determinística**, com a garantia de que o caminho crítico **opera sem IA**.

**Pergunta de pesquisa (RQ)**
Uma política de gating arquitetural — IA como **sugestão não-autoritativa** e bloqueio de integração decidido por **regras determinísticas (AST/contratos)** — reduz a densidade de defeitos e o retrabalho **sem penalizar o lead time**, comparada ao uso irrestrito de IA, e **sob quais condições**?

**Objetivo geral**
Propor, formalizar e avaliar a composição "IA-sugere / regra-decide" com a propriedade de operação-sem-IA verificável.

**Objetivos específicos**
1. Formalizar o **modelo de composição** e a **propriedade de operação-sem-IA** (o "Teste do Apagão" como propriedade verificável em CI).
2. Avaliar causalmente o efeito sobre defeitos/retrabalho/lead time (experimento controlado).
3. Generalizar via **mineração de repositórios** (validade externa).
4. Refinar o **modelo de trade-off** herdado do Mestrado e determinar as **condições** de benefício.

**Contribuição / delta (a novidade defensável, em 1 frase)**
O **modelo de composição "sugestão probabilística + decisão determinística" com propriedade de operação-sem-IA**, avaliado empiricamente quanto ao trade-off — combinação ainda não integrada nem medida na literatura.

**Método**
Design Science Research + **Estudo B** (experimento controlado within-subjects) + mineração de repositórios + modelagem analítica. (Detalhe em `TESE_RECORTE_DE_PESQUISA.md`.)

**Avaliação (falseabilidade)**
Hipóteses com critério de morte pré-registrado (defeito, lead time ≤15% estacionário, manutenibilidade); resultado **nulo** bem medido é válido e publicável.

**Entregáveis**
Tese + paper-âncora (ICSE / FSE / TSE / EMSE) + pacote de replicação público.

**Aderência ao programa (CC)**
Engenharia de Software empírica + IA aplicada: artefato verificável + avaliação rigorosa + novidade frente à literatura.

**Ingresso**
Via **POSCOMP** + projeto delimitado + ≥1 publicação do Mestrado.

---

## 2.5. MBA — SDA Bocconi / GEMBA (a validação ECONÔMICA/COMERCIAL)

**Título provisório**
*A economia da engenharia governada por IA: unit economics e disposição a pagar em software regulado.*

**Natureza (honestidade):** um MBA executivo **não** produz falseabilidade científica — produz uma **tese de negócio com critério de sucesso/fracasso explícito** (*business validation*). Aqui "falseável" = **hipótese comercial mensurável que os números do mercado podem refutar**.

**Pergunta (mensurável)**
A adoção do modelo governado (gating de IA + TDABC) melhora as *unit economics* (custo por feature / TCO) **e** existe **disposição a pagar prêmio** por mitigação de risco mensurável em mercado regulado?

**Instrumento:** TDABC automatizado (custo real por objeto de custo — ver `02_ARGUS.md`) + experimentos de precificação / entrevistas de *willingness-to-pay* / análise de TCO vs. baseline.

**Critério de fracasso (kill):** se o prêmio de disposição a pagar < X% **ou** a redução de TCO < Y%, a tese comercial **cai** — o posicionamento "vender mitigação de risco" não se sustenta economicamente.

**Contribuição / entregável:** capstone/business plan + a **base de pricing do Apolo** + a **story de valuation/GTM para VC**. Traduz OmniShift/AegisProtocol em *Valuation*, *Compliance* e mitigação de risco — a linguagem do conselho.

**Aderência ao GEMBA:** estratégia, finanças, go-to-market, valuation. É o eixo "Devorador de Riscos / Imposição de Valor" do seu Plano Profissional.

## Síntese — três trilhas, três pilares (o ROI da PI)

O mesmo **cenário único** (software regulado + gating de IA no SDLC) é atacado por **três perguntas ortogonais** — cada trilha de-risca um ângulo diferente da **mesma** IP:

| Trilha | Pergunta | Pilar que valida | Saída/venue | Ativo de PI gerado |
|--------|----------|------------------|-------------|--------------------|
| **Mestrado** (Eng. Sistemas) | o trade-off é real e **modelável**? | Matemática / Sistemas | SBES/EMSE + dissertação | modelo preditivo do trade-off (diferencial técnico) |
| **Doutorado** (CC) | o mecanismo **causa** a melhora? | Técnico / Causal | ICSE/FSE/TSE + tese | evidência do gating (publicável sem vazar o produto) |
| **MBA** (Bocconi/GEMBA) | isso **dá dinheiro** / há mercado? | Econômico / Comercial | capstone + pitch VC | pricing + GTM + story de valuation |

> **Juntos = Quadrante de Pasteur completo:** útil + fundamental + comercial. Nenhum recorte se sobrepõe; cada um valida um pilar distinto do mesmo ativo. Esse é o ROI: **três diplomas, três provas, uma PI coerente.**
>
> ⚠️ **Cautela:** três formações é uma maratona de anos — o *Just-in-Time Learning* do seu plano protege (cada trilha tem gatilho próprio). Não rode as três em paralelo total; sequencie e reaproveite (o Mestrado alimenta o Doutorado; o TDABC do Árgus alimenta o MBA).

## 2.7. Critérios numéricos pré-registrados (os três experimentos prontos)

> ⚠️ **Estatuto:** os valores abaixo são **hipóteses pré-registradas e calibráveis** — *defaults* defensáveis, **não fatos**. O piloto estima os reais; o quadro é **congelado ANTES da coleta** (R6). `[cal]` = calibrar com dados/orientador. Onde há convenção estatística real, ela está citada.

| Trilha | Hipótese | Métrica | ✅ Sucesso | ❌ Morte (kill) | Instrumento |
|--------|----------|---------|-----------|-----------------|-------------|
| **Mestrado** | o modelo prediz o trade-off | MAPE fora-da-amostra | MAPE ≤ **20%** `[cal]` **e** supera baseline ingênuo | MAPE não bate o baseline **ou** o "ponto ótimo" é instável em cross-validation | modelo + dados do piloto |
| **Doutorado H1** | gating reduz defeitos | Dd (defeitos/KLOC); Cliff's δ | redução significativa (p<0,05) **e** efeito ≥ médio (**δ ≥ 0,33**) ou ≥ **20%** relativo `[cal]` | p ≥ 0,05 **ou** efeito desprezível (δ < 0,147) | Experimento B + ITS |
| **Doutorado H2** | não penaliza lead time | LTC (não-inferioridade) | degradação ≤ **15%** estacionário (limite superior do IC) | LTC piora **> 15%** sem queda equivalente de CFR | DORA |
| **Doutorado H3** | reduz violação de dependência | Infra→Core; manutenibilidade | violações → **~0** **e** manutenibilidade não piora | sem redução vs. controle | ArchUnit + CK |
| **MBA B1** | melhora unit economics | Redução de TCO por feature | **≥ 15%** vs. baseline `[cal]` | **< 15%** (o overhead de governança não se paga) | TDABC (Árgus) |
| **MBA B2** | há prêmio de risco | *Willingness-to-pay* | prêmio **≥ 20%** em **≥ 15–20** prospects qualificados `[cal]` | prêmio **< 20%** (você compete em preço, não em risco) | pricing study (Van Westendorp / Gabor-Granger) |

**Notas de rigor:**
- **Convenções citadas (reais):** Cliff's δ — 0,147 = pequeno, 0,33 = médio, 0,474 = grande (Romano et al.); poder do Experimento B = **0,8**, α = **0,05** (Cohen); MAPE ≤ 20% = heurística usual de "boa previsão". Os números de negócio (TCO 15%, WTP 20%) são **julgamento a calibrar**, não benchmark.
- **Uma coleta, três análises:** o mesmo piloto gera **defeito + lead time + custo** → alimenta o **modelo** (Mestrado), o **teste causal** (Doutorado) e o **TCO** (MBA). Você instrumenta uma vez, colhe três vezes.
- **Congelamento:** este quadro **é** o pré-registro. Depois da coleta, nada muda — mudar limiar após ver o dado é *p-hacking*.

## 3. A ponte (como o Mestrado alimenta o Doutorado)
| O Mestrado entrega | O Doutorado consome |
|--------------------|---------------------|
| Modelo do trade-off + parâmetros estimados | refina o modelo e determina condições |
| 1ª publicação (SBES/EMSE) | requisito de ingresso/sobrevivência |
| Base matemática (otimização/desempenho) | sustenta a contribuição teórica |
| Estudo A (campo, relevância) | complementado pelo Estudo B (controle, rigor) + mining |
| Estimativa de poder estatístico | dimensiona o experimento definitivo |

> **Mestrado = "quanto custa e onde é o ótimo?" (modelo). Doutorado = "o mecanismo é causalmente benéfico, e quando?" (prova).**

## 4. Roadmap (marcos)
| Fase | Programa | Foco científico | Marco de saída |
|------|----------|-----------------|----------------|
| 1 | Disciplina isolada | base matemática + orientador | aprovação + orientação |
| 2 | Mestrado (Eng. Sistemas) | modelo do trade-off + Estudo A | dissertação + 1º paper |
| 3 | POSCOMP | transição | ingresso no PPGCC |
| 4 | Doutorado (CC) | Estudo B + mining + modelo formal | tese + papers de elite |

## 5. Plano mínimo de publicações
1. **Modelo do trade-off** (Mestrado, disciplina Modelagem de Desempenho) → conferência.
2. **Estudo de campo A** (dissertação) → SBES industrial / EMSE.
3. **Revisão sistemática** (início do Doutorado) → SLR publicável.
4. **Experimento controlado B** (corpo da tese) → ICSE/FSE.

## 6. Checklist — "isto é ciência, não manifesto?"
- [ ] Uma pergunta de pesquisa por programa (não o framework inteiro).
- [ ] Cada afirmação central tem critério de morte.
- [ ] Há baseline/controle e pré-registro.
- [ ] O *delta* frente à literatura cabe em uma frase.
- [ ] Avaliação replicável (pacote público).
- [ ] "Constituição/Doutrina/mitologia" **não** aparece no texto científico.
- [ ] Z2A citado como **contexto de aplicação**, não como contribuição.

---

*Documentos irmãos:* `TESE_RECORTE_DE_PESQUISA.md` (aprofundamento do recorte), `ESTUDO_PILOTO_MESTRADO.md` (protocolo do 1º paper), `EMAIL_PROPOSTA_ORIENTACAO.md` (abordagem ao orientador), `PANORAMA_MESTRADO_DOUTORADO.md` (produto × ciência).
