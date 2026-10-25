---
documento: ZenithCode OS — Versão Acadêmica
publico: orientador, banca, par de pesquisa
foco: rigor, contribuição falseável, posicionamento na literatura
autor: Gustavo Vianna
---

# ZenithCode OS — Visão Acadêmica
### Governança determinística de IA no ciclo de desenvolvimento, fundada no princípio de missão crítica

---

## O problema de pesquisa

Assistentes de IA generativa aceleram a produção de código, mas a literatura empírica recente associa esse uso a aumento de densidade de defeitos, vulnerabilidades e dívida técnica. A indústria respondeu com *quality gates* isolados. **Falta** um modelo de governança que (a) trate a IA como componente probabilístico não-autoritativo, (b) decida a integração por regra determinística, e (c) **garanta, de forma verificável sob ruptura**, que o caminho crítico opera mesmo com a IA desligada ou corrompida.

## A tese central (falseável)

> A IA generativa atua como **sugestão probabilística não-autoritativa**; o bloqueio de integração é decidido por **regras determinísticas** sobre a AST, contratos e tabelas normativas. A operação do caminho crítico **não depende** do componente probabilístico — propriedade verificável e automatizável em CI.

Esta afirmação é **falseável**: se o gating não reduzir a densidade de defeitos, ou o reduzir ao custo de inflar o lead time além de uma margem pré-registrada, a tese é refutada. Resultado nulo bem medido é resultado válido.

## O delta frente à literatura

A novidade **não** é o gating (policy-as-code já existe), nem o chaos engineering (já existe). É a **operação-sob-ruptura como propriedade arquitetural invariante, falseável e verificável em CI** — um *breakdown* que injeta defeito de propósito e mede a interceptação, aplicado a um caminho de **consequência irreversível** (integridade fiscal), com o trade-off defeito × velocidade medido. Uma revisão sistemática da literatura (SLR) é entregável da fase inicial para sustentar — ou refutar — essa afirmação de novidade.

Posicionamento: SE empírica de código LLM (mede o problema); Clean/Hexagonal/DDD (a regra existe, falta enforcement IA-aware medido); DORA/SRE (base de medição); DO-178C / IEC 61508 (**fundamento teórico** — o princípio de determinismo no caminho crítico —, não domínio reivindicado nem alegação de conformidade).

## Rigor metodológico

- **Design Science Research** — o framework é um artefato projetado, avaliado empiricamente.
- **Experimento sobre Gêmeos Digitais** — três braços (IA irrestrita / sem IA / gating) rodam sobre réplicas fiéis do caminho fiscal; só um braço emite de verdade. Validação ciber-física (simular antes de tocar o real), que resolve a impossibilidade de rodar controle destrutivo em produção.
- **Braço probatório determinístico** — o Teste do Apagão como *breakdown* mede a captura de defeito de forma auto-atribuível (o build conta, não o avaliador), contornando o viés de experimentador.
- **Pré-registro** de hipóteses e margens antes da coleta; margem de não-inferioridade derivada por literatura/sensibilidade, não arbitrada.
- **Honestidade de limite** — a atribuição a mecanismos individuais num ecossistema não é identificável sem design fatorial; o mestrado mede **um** mecanismo num caminho crítico; o resto é doutorado.

## Escopo honesto (o que se reivindica)

- **Medido:** integridade financeiro-fiscal (consequência irreversível, não letal).
- **Fundamento:** o princípio de missão crítica *safety* (determinismo no caminho crítico), transposto.
- **Estudo de caso (ilustra):** a dimensão *security* do artefato real.
- **Horizonte (não medido):** o eixo *safety*/ciber-físico. Reivindicar *safety-of-life* sem validação em hardware seria desonesto.

## Disciplina epistêmica embutida

O framework carrega a própria falseabilidade como princípio (P-13): cada mecanismo tem critério de morte pré-registrado, e o sistema passa por red team adversarial em cadência — inclusive contra si mesmo. Esta proposta foi estressada por três rodadas de ataque adversarial simulando banca; o registro é parte do método, não adorno.

## Contribuições esperadas

1. Um modelo de composição "sugestão probabilística + decisão determinística" com propriedade de operação-sob-ruptura verificável.
2. Evidência empírica do trade-off defeito × velocidade num caminho de consequência irreversível.
3. Um método de verificação por *breakdown* em CI (reprodutível, determinístico).
4. Uma SLR do estado da arte em governança de IA no SDLC com garantia determinística.

---

*Gustavo Vianna · base de proposta para o Mestrado Profissional em Computação de Missão Crítica (MPCOMP — IEL/ITA)*
