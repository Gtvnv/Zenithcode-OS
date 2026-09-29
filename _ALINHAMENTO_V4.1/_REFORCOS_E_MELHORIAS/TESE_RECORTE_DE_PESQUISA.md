---
documento: Recorte de Tese — do Z2A ao Objeto Científico
proposito: converter o meta-framework (doutrina) em uma contribuição de PhD falseável
contexto_academico: Mestrado Eng. de Sistemas (UFMG, via disciplina isolada) → POSCOMP → Doutorado em Ciência da Computação (PPGCC/UFMG)
status: estudo (não-canônico)
---

# 🎓 RECORTE DE TESE — do Z2A ao Objeto Científico

> **A regra de ouro deste documento:** uma tese de Doutorado **não** consolida um framework proprietário. Ela responde a **uma** pergunta falseável, com **novidade** demonstrável frente à literatura e **avaliação empírica** contra um baseline. O ZenithCode OS inteiro é o *laboratório* e a *motivação* — **não** a contribuição. A contribuição é uma fatia fina e profunda.

---

## 1. O problema do enquadramento atual
"Consolidar e validar cientificamente o meta-framework Z2A" é **engenharia de produto**, não ciência. Uma banca do PPGCC/UFMG rejeitaria pelo mesmo motivo do Ataque 2 da Crítica Adversarial: **não é falseável**. Mitologia, "Constituição" e "Doutrina" não sobrevivem a uma qualificação. O Doutorado é, na prática, o **red team definitivo** que força a disciplina epistêmica do `R6`. Abraçar isso é a virada de chave.

**O movimento:** descer de "o OS inteiro" para **um mecanismo isolado, mensurável e contestável**.

---

## 2. Recorte recomendado (A) — Gating de IA no SDLC com Núcleo Determinístico

### Por que este recorte
- **Timing:** "IA no ciclo de desenvolvimento" e "automação da ignorância" são o zeitgeist exato (2025–2026); há um corpo empírico nascente e ainda pouca teoria de *garantia*.
- **Alinhamento:** usa o que você mais domina (IA + arquitetura) e nasce direto da EVELYN + do reforço `R3` (AI-optional by design) + do Whetstone.
- **Mensurabilidade:** o efeito é observável em métricas duras (defeitos, retrabalho, lead time).

### Pergunta de pesquisa (RQ)
> **RQ principal:** Uma política de *gating* arquitetural — em que a IA generativa atua como **sugestão não-autoritativa** e o bloqueio de merge é decidido por **regras determinísticas** (AST/contratos), com a IA proibida no núcleo de domínio — reduz a densidade de defeitos e o retrabalho **sem** penalizar o lead time, comparada a (i) uso irrestrito de IA e (ii) ausência de IA?

**Sub-questões:**
- **SQ1:** Qual o efeito do gating determinístico sobre a densidade de defeitos (defects/KLOC) e o *change failure rate*?
- **SQ2:** Qual o custo em throughput/lead time do gating (existe trade-off, e onde fica o ponto ótimo)?
- **SQ3:** A restrição "IA proibida no Core Domain / liberada em Adapters" (Reserva de Domínio) produz diferença mensurável de manutenibilidade vs. liberação total?
- **SQ4:** O "Teste do Apagão" (núcleo que roda sem IA) é alcançável sem perda relevante de produtividade?

### Hipóteses falseáveis (e o que as derruba)
| Hipótese | Critério de morte |
|----------|-------------------|
| H1: gating determinístico reduz defeitos vs. IA irrestrita | densidade de defeitos **não** difere estatisticamente |
| H2: o custo em lead time é < X% (aceitável) | lead time piora acima do limiar pré-registrado |
| H3: Reserva de Domínio melhora manutenibilidade | métricas de manutenibilidade **não** melhoram vs. controle |

> Repare: **todas podem perder.** É isso que a torna ciência, e não manifesto.

---

## 3. Estado da arte — onde você se posiciona (e o *delta*)
A tese precisa situar-se contra corpos de trabalho existentes e cravar o que é **novo**. Áreas a dominar na revisão:

- **Qualidade de código gerado por LLM (Empirical SE):** estudos empíricos sobre taxa de bugs/vulnerabilidades em código de assistentes de IA; datasets de interações dev-LLM (ex.: linha do *DevGPT*, MSR). → *Eles medem o problema; poucos propõem um mecanismo de governança com garantia.*
- **Arquitetura e regras de dependência:** Clean Architecture (R. C. Martin), Hexagonal/Ports & Adapters (Cockburn), DDD (Evans). → *Existe a regra; falta um enforcement IA-aware avaliado empiricamente.*
- **SRE / Error Budgets / DORA (Accelerate):** métricas de entrega e confiabilidade. → *Sua base de medição; não é sua novidade.*
- **Dívida técnica (Cunningham; SE empírica):** modelos de acúmulo/pagamento de dívida. → *Conecta ao seu conceito de Apoptose/Lombada, mas não é o recorte.*
- **Policy-as-code / quality gates (DevSecOps):** SAST/DAST como gate. → *O gate existe; a novidade é torná-lo o árbitro determinístico **sobre** a sugestão probabilística da IA.*

**O *delta* (a sua novidade defensável):** um **modelo e uma política de composição "IA-sugere / regra-decide"** com **garantia determinística no caminho crítico** (o "Núcleo Determinístico"/Teste do Apagão como propriedade verificável em CI), avaliado empiricamente quanto ao trade-off defeito × velocidade. Ninguém integrou (a) IA não-autoritativa, (b) enforcement por AST/contrato, (c) reserva de domínio e (d) propriedade de operação-sem-IA, **com medição**.

### 🔦 O Teste do Apagão é a peça-heroína da tese
De todas as partes, **esta é a que carrega a contribuição** — e deve ser o centro do manuscrito, não um detalhe:
- **É uma propriedade formal e verificável**, não uma promessa: um job de CI desliga 100% da IA (ou injeta outputs corrompidos) e executa os fluxos críticos; se **qualquer** caminho crítico depender do componente probabilístico, o **build quebra**.
- **É falseável e automatizável** — o avaliador consegue reproduzir e refutar.
- **É o que distingue você do mercado:** todo mundo tem *quality gate*; ninguém **garante e verifica** que a operação sobrevive a um apagão de IA (envenenamento de modelo, alucinação sistêmica, queda do fornecedor).
- **Reposicionamento dos demais eixos:** ergonomia (carga cognitiva) e finanças (TDABC) **não são teses paralelas** — são **instrumentos que medem o impacto** desta governança: a carga cognitiva mede o efeito colateral positivo; o TDABC prova que a governança **se paga**. Nunca os apresente como co-protagonistas (é o que dilui a inovação).

---

## 4. Desenho experimental (o coração da tese, ligado ao `R6`)

### Estratégia metodológica (triangulação)
1. **Estudo controlado** (interno, no seu próprio studio/holding — vantagem real de ter a operação): squads/projetos sob três tratamentos — *IA irrestrita* (baseline 1), *sem IA* (baseline 2), *gating determinístico* (tratamento). Pré-registro das hipóteses (este documento serve de âncora).
2. **Mining de repositórios (MSR):** validar externamente em projetos open-source que adotaram (ou não) quality gates + assistentes de IA, medindo as mesmas variáveis em escala.
3. **Modelagem analítica/desempenho:** usar o ferramental do Mestrado (Modelagem de Desempenho, Filas, Otimização) para **modelar o trade-off** defeito×lead time e prever o ponto ótimo do gating — a "prova científica" que eleva de relato empírico a contribuição teórica.

### Variáveis e métricas
- **Dependentes:** densidade de defeitos (defects/KLOC), *change failure rate*, retrabalho (churn pós-merge), métricas de manutenibilidade (acoplamento/coesão, violações de dependência), lead time e deploy frequency (**DORA**).
- **Independentes:** regime de IA (irrestrita / proibida / gated), escopo da Reserva de Domínio (Core vs Adapters), severidade do gate.
- **Controle:** complexidade da tarefa, senioridade, domínio do projeto.

### Rigor (anti-Goodhart, anti-viés)
- **Grupo de controle obrigatório** e pré-registro (espelha o `R6`).
- Cegamento onde possível; análise estatística declarada antes da coleta.
- Replicabilidade: pacote de replicação público (esperado em ICSE/FSE/EMSE).

---

## 5. Contribuições científicas esperadas
1. **Um modelo formal** de composição "sugestão probabilística + decisão determinística" no SDLC, com a propriedade de **operação-sem-IA** verificável.
2. **Evidência empírica** do trade-off defeito × velocidade sob diferentes regimes de gating (o número que hoje ninguém tem).
3. **Um método** de Reserva de Domínio IA-aware (enforcement por AST) e sua avaliação de manutenibilidade.
4. (Opcional/forte) **Um modelo analítico** que prevê o ponto ótimo do gate — ponte com Engenharia de Sistemas/Pesquisa Operacional.

---

## 6. Como o Mestrado alimenta o Doutorado (sequência de publicações)
O Mestrado em Eng. de Sistemas não é só pré-requisito — é a **fábrica das suas primeiras publicações** e a prova da base matemática.

| Etapa | Disciplina/ação (do seu plano) | Entregável científico |
|-------|-------------------------------|------------------------|
| M1 | Modelagem de Desempenho de Sistemas | 1º paper: **modelo analítico** do trade-off defeito×lead time (workshop/conferência nacional) |
| M2 | Projeto e Análise de Algoritmos + Otimização | formalização do gate como problema de decisão; rigor de complexidade |
| M3 | Inteligência Artificial (fundação formal) | base para o regime de IA não-autoritativa |
| M-dissertação | — | **estudo-piloto** (um tratamento, dados internos) → 2º paper empírico (ESEM/EMSE) |
| Transição | POSCOMP | ingresso PPGCC com 1–2 papers + objeto delimitado |
| D1–D2 | revisão sistemática + replicação MSR | survey/SLR publicável + dataset |
| D3–D4 | estudo controlado completo + modelo | **paper-âncora** (ICSE/FSE/TSE) → corpo da tese |

> Meta mínima de admissão/sobrevivência: **chegar ao Doutorado com pelo menos 1 publicação revisada por pares e a pergunta já delimitada.** Hoje o nº de publicações é zero — o Mestrado resolve isso.

---

## 7. Riscos acadêmicos e mitigação
- **"Isto é consultoria, não ciência":** mitigado pelo recorte estreito + baseline + pré-registro. Nunca apresente "o Z2A"; apresente *a política de gating e seu efeito medido*.
- **Conflito de interesse (avaliar o próprio sistema):** mitigado pela triangulação (MSR externo) e pela publicação do pacote de replicação.
- **Generalização (n pequeno do studio):** o braço MSR dá validade externa.
- **Orientador/linha:** procurar no PPGCC/UFMG (e DCC) docentes de **Engenharia de Software empírica / Sistemas Inteligentes / Sistemas Distribuídos**; alinhar o recorte à linha do orientador desde a disciplina isolada.

---

## 8. Recortes alternativos (reserva)
- **(B) Carga Cognitiva como variável de escalonamento:** modelar `Cc` (Quíron) como restrição de alocação de squads; diálogo/*delta* explícito contra **Team Topologies**. Forte em Pesquisa Operacional; risco: medir carga cognitiva é metodologicamente espinhoso.
- **(C) Fronteira de SITOs / degradação graciosa (CAP-aware):** modelo formal do Contrato de Degradação entre serviços isolados. Forte em Sistemas Distribuídos; risco: competição com vasta literatura de microsserviços/resiliência — o *delta* precisa ser muito nítido.
- **(D) TDABC automatizado para objetos de custo de software:** modelo e avaliação de *Time-Driven Activity-Based Costing* alimentado por telemetria (OpenTelemetry/billing/GPU metering), aplicado a microsserviço/feature/cliente. Mais aderente a **Engenharia de Sistemas / Controladoria / MBA internacional** do que a CC pura. Pergunta: a alocação automatizada bate com a fatura real e reduz decisão por achismo vs. rateio tradicional? *Delta:* ABC clássico morre pelo custo de coleta — aqui a coleta é automática; falta modelar e **medir** o ganho. (É a contraparte "controladoria" do recorte principal; ver refinamento canônico em `02_ARGUS.md`.)

---

## 9. Checklist — "isto é tese, não manifesto?"
- [ ] Tem **uma** pergunta de pesquisa, não um framework inteiro.
- [ ] Cada afirmação central tem **critério de morte** (pode perder).
- [ ] Há **baseline** e **grupo de controle**.
- [ ] O *delta* frente à literatura está em **uma frase**.
- [ ] A avaliação é **replicável** (pacote público).
- [ ] A palavra "Constituição/Doutrina/mitologia" **não aparece** no texto científico.
- [ ] O Z2A é citado como **contexto de aplicação**, não como contribuição.

> Se todos marcados: você saiu da teologia e entrou na engenharia. É exatamente o que o `R6` pedia — e o que transforma o ZenithCode de obra de fé em sistema validado.
