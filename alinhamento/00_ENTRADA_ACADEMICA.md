---
documento: Entrada Acadêmica — Proposta de Pesquisa (1–2 páginas)
audiencia: orientador / banca (PPGCC-DCC-UFMG; Eng. de Software empírica)
regra: ZERO jargão mitológico. Zero menção a "framework proprietário".
uso: anexo do e-mail de contato com orientador
---

# Governança Determinística de Assistentes de IA no Ciclo de Desenvolvimento de Software

**Proposta de pesquisa — Mestrado/Doutorado**
*[Seu nome] · [Lattes] · [GitHub] · [e-mail]*

---

## 1. Problema
Assistentes de IA generativa foram adotados massivamente no desenvolvimento de software. A literatura empírica recente documenta **aumento de defeitos, vulnerabilidades e dívida técnica** em código assistido por LLM. A indústria respondeu com *quality gates* isolados (SAST, linters, políticas de CI), mas **não há um modelo de composição** que trate explicitamente a IA como **componente probabilístico não-autoritativo** e que **garanta**, de forma verificável, que o caminho crítico do sistema **opera sem IA**.

**A lacuna:** os estudos existentes **medem o problema**; poucos **propõem e avaliam empiricamente um mecanismo de governança com garantia**.

## 2. Pergunta de pesquisa
> Uma política de *gating* arquitetural — em que a IA generativa atua como **sugestão probabilística não-autoritativa** e o **bloqueio de integração é decidido por regras determinísticas** sobre a Árvore Sintática Abstrata (AST) e contratos de dependência — **reduz a densidade de defeitos e o retrabalho sem penalizar o lead time**, quando comparada ao uso irrestrito de assistentes de IA? **E sob quais condições?**

**Sub-questões:** (SQ1) efeito sobre densidade de defeitos e *change failure rate*; (SQ2) custo em lead time (existe ponto ótimo?); (SQ3) efeito da restrição de geração por IA no núcleo de domínio sobre manutenibilidade; (SQ4) a propriedade de **operação-sem-IA** é alcançável sem perda relevante de produtividade?

## 3. Contribuição / delta
1. **Modelo formal de composição** *"sugestão probabilística + decisão determinística"* no SDLC.
2. **Propriedade verificável de operação-sem-IA** (*AI-free operation property*): um job de integração contínua **desliga 100% dos componentes de IA** (ou injeta *outputs* corrompidos) e executa os fluxos críticos; se **qualquer** caminho crítico depender do componente probabilístico, **o build falha**. É a peça central: uma propriedade **automatizável e falseável**, não uma promessa.
3. **Evidência empírica** do trade-off defeito × velocidade sob diferentes regimes de governança.
4. **Modelo analítico** do trade-off (ponto ótimo de severidade do gate).

**O delta em uma frase:** ninguém integrou — e mediu — (a) IA não-autoritativa, (b) *enforcement* determinístico por AST/contrato, (c) restrição de geração no núcleo de domínio e (d) a propriedade de operação-sem-IA verificável.

## 4. Método (triangulação)
| Estudo | Desenho | O que entrega |
|--------|---------|---------------|
| **A — Campo** | Série Temporal Interrompida (cada equipe é seu próprio *baseline*), *mixed-methods* | relevância em ambiente real (limite causal declarado) |
| **B — Controlado** | Quase-experimento **within-subjects**, tarefas isomórficas com oráculo de defeitos oculto, contrabalanceamento (quadrado latino); 3 regimes: **sem IA / IA irrestrita / IA com gating** | **isola o mecanismo** e dá poder estatístico |
| **C — Mineração de repositórios** | MSR sobre projetos open-source | validade externa |

**Rigor:** pré-registro das hipóteses e limiares **antes** da coleta; grupo de controle; pacote de replicação público; análise por modelos de efeitos mistos (com *fallback* não-paramétrico) e **tamanhos de efeito** sempre reportados.

## 5. Hipóteses e critérios de morte (pré-registrados)
| Hipótese | ✅ Sucesso | ❌ Refutação |
|----------|-----------|--------------|
| H1 — o gating reduz defeitos | redução significativa (p<0,05) **e** efeito ≥ médio (Cliff's δ ≥ 0,33) | p ≥ 0,05 **ou** efeito desprezível (δ < 0,147) |
| H2 — não penaliza o lead time | degradação ≤ **15%** em regime estacionário (margem de não-inferioridade) | > 15% sem redução equivalente do *change failure rate* |
| H3 — restrição no domínio melhora manutenibilidade | menos violações de dependência **e** manutenibilidade não piora | sem diferença vs. controle |

> **Resultado nulo pré-registrado é um resultado válido e publicável.** A hipótese pode perder — é isso que a torna ciência.

## 6. Viabilidade (o que já está pronto)
- **Ambiente real de coleta** (operação de engenharia própria) + possibilidade de recrutamento para o estudo controlado.
- **Kit de instrumentação já implementado:** regras de AST (ArchUnit), gate de cobertura do *diff*, verificação de racional no commit, coleta automatizada de métricas DORA — versionado e pronto para rodar.
- **Protocolo experimental redigido e pré-registrado** (hipóteses, métricas operacionais, plano de análise, ameaças à validade, ética).
- **Piloto de viabilidade** (n=1, série temporal interrompida) em execução para calibrar instrumentos e estimar poder.

## 7. Instrumentação e métricas
**Primárias:** densidade de defeitos (defeitos/KLOC via oráculo oculto), *change failure rate*, lead time (DORA), violações de dependência (ArchUnit), retrabalho (*churn* pós-merge).
**Secundárias:** manutenibilidade (complexidade ciclomática, acoplamento/CK), carga cognitiva percebida (NASA-TLX), custo por objeto de custo (TDABC automatizado — evidência do custo-benefício da governança).

> As dimensões humana e econômica **não são teses paralelas**: são **instrumentos que medem o impacto** da governança de IA.

## 8. Aderência à linha de pesquisa
*[Preencher com o(a) orientador(a) alvo: linha de Engenharia de Software empírica / mineração de repositórios; citar 1 trabalho recente dele(a) e onde esta proposta dialoga.]*

## 9. Veículos-alvo
**Nacional:** SBES (trilha de pesquisa/industrial), VEM, SAST. **Internacional:** ESEM → EMSE; com o estudo completo, ICSE/FSE/TSE.

## 10. Referencial de partida
Qualidade de código gerado por LLM (Engenharia de Software empírica; *datasets* de interação dev-LLM); Clean Architecture (Martin) e Ports & Adapters (Cockburn); DDD (Evans); SRE e *Error Budgets*; métricas DORA/*Accelerate*; dívida técnica (Cunningham); *policy-as-code* e DevSecOps; *Design Science Research* como enquadramento metodológico.

---

*Ética: submissão a Comitê de Ética antes de qualquer coleta com participantes humanos; dados anonimizados; telemetria restrita a artefatos (código, commits, CI) — nunca biometria ou monitoramento de teclado.*
