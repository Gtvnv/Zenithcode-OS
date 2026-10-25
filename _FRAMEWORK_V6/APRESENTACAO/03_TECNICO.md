---
documento: ZenithCode OS — Versão Técnica
publico: engenheiro, arquiteto, par técnico
foco: arquitetura, os princípios, os mecanismos reais
autor: Gustavo Vianna
---

# ZenithCode OS — Visão Técnica
### O framework de governança determinística de IA, pelos seus mecanismos

---

## A tese, sem analogia

A IA generativa é um **componente de Plano de Controle não-autoritativo**: sugere, nunca decide o que entra no build. A decisão de integração é de **regras determinísticas** sobre a AST (ex.: ArchUnit barrando `infra → domínio`), contratos de dependência e tabelas normativas. O caminho crítico de negócio é **Plano de Dados determinístico** — nenhuma IA nele. O **Teste do Apagão** é um job de CI que prova essa propriedade a cada release: desliga a IA (ou injeta saídas corrompidas), roda os fluxos críticos, e quebra o build se algum depender do componente probabilístico.

## A estrutura de autoridade (como ler o framework)

Cada afirmação tem um estatuto explícito — inspirado na hierarquia normativa (lei + nota explicativa + lei complementar):

- **Princípio (Lei):** frase normativa verificável. O que se audita.
- **Notas explicativas:** o porquê (a patologia que cura) + o critério observável de conformidade.
- **Complementares:** detalham o princípio-mãe sem competir.

E três categorias de vocabulário: **Lei** (não muda sem nova versão) · **Sugestão** (o "como" técnico, substituível) · **Cultura** (codinomes de identidade, preservados, com De-Para técnico).

## Os 14 princípios (a constituição auditável)

| # | Princípio | Mecanismo de referência |
|---|-----------|-------------------------|
| P-01 | IA sugere, regra decide; caminho crítico opera sem IA | gate AST + Teste do Apagão (breakdown) em CI |
| P-02 | Segurança é gate, identidade é perímetro, auditoria imutável | Zero-Trust sidecar (ABAC/RBAC), logs WORM, SAST/DAST no commit |
| P-03 | Domínio soberano, dependência pra dentro, periferia substituível | Clean Arch + Hexagonal + DDD, enforcement por AST; cripto como periferia (migração + recertificação, anti-vendor-lock-in) |
| P-04 | Dado por contrato; verdade/treino/interface não se contaminam | Data Mesh + contrato declarativo; Triplo Plano (Truth/Intelligence/HUD); crypto-shredding p/ LGPD |
| P-05 | Confiabilidade tem orçamento; falha se contém em escada | Error Budget (SLO) com autoridade sobre roadmap; contenção Imposto→Throttling→Read-Only (nunca rollback cego) |
| P-06 | Arquitetura e finanças leem o mesmo número | ledger de unit economics (TDABC por telemetria); 3 moedas não-conversíveis (liquidez/confiabilidade/reputação) |
| P-07 | Decisão estrutural passa por auditor humano antes do capital | conselho de validação adversarial; rigor proporcional ao blast radius |
| P-08 | Dívida humana se mede como técnica; senioridade por evidência | carga cognitiva como métrica de engenharia; clearance por prova prática |
| P-09 | Mede-se o artefato, nunca a pessoa; o dado conserta, não pune | telemetria sobre artefato/fricção agregada; proibição de vigilância individual; devido processo de contestação |
| P-10 | Sucesso é mover a métrica; o que não move entra em revisão humana | North Star por feature; descontinuação por decisão humana auditada (não automática) |
| P-11 | Nada no físico sem Gêmeo Digital; rastro imutável; anti-brick | SIL→HIL antes do metal; Event Sourcing; OTA dual-bank com rollback |
| P-12 | Externo entra por fronteira única e isolada | API Gateway (alfândega) + Anti-Corruption Layer; blast radius isolado por escopo societário |
| P-13 | Framework se auto-refuta: critério de morte + red team interno em cadência | R6 (critério de morte pré-registrado) por princípio; red team adversarial versionado |
| P-14 | Conhecimento vive na organização; documentação executável como gate | SPEC/ADR versionadas; contradizer doc vigente = não-conformidade barrada |

## As 5 capacidades transversais

Feixes de prática que realizam vários princípios de uma vez:
- **Economia de Incentivo** (P-06/08/05) · **Resiliência de Entrega** (P-05/01/11) · **Cadeia de Confiança** (P-02/11/12/04) · **Inteligência Preditiva** (P-01/09) · **Governança de Conformidade** (todos — a auditoria "fere o P-X?").

## Framework × implementação × produto

Três camadas distintas, propositalmente separadas:
- **Framework (portável):** os 14 princípios + 5 capacidades. Qualquer negócio adota.
- **Implementação de referência (a minha, no nicho software):** 20 "satélites" — o jeito concreto como realizei cada princípio. Rico, específico, trocável.
- **Produto (software real):** ~14 produtos nomeados que manifestam os satélites. Ex.: **Vertex** (IDP determinística, Go), **AegisProtocol** (IdP Zero-Trust, Java/JWT/Redis), **OmniShift** (ETL por modelo canônico), **Fafnir** (classificação fiscal: SLM sugere NCM, regra valida contra SEFAZ/IBPT).

Um terceiro adota os **princípios** sem herdar a minha implementação. É a diferença entre framework e metodologia: digo o **o quê** e o **porquê**, sou deliberadamente vago no **como**.

## Decisões de arquitetura que valem destacar

- **Operação-sob-ruptura como invariante de CI** (não só chaos pontual): o breakdown injeta defeito e mede captura, a cada release.
- **Gêmeo Digital para validar sem dano**: experimento de controle roda em réplica; só um braço toca o mundo real.
- **IA adversária em regimes**: decisão estrutural → gate; volume → IA×IA independente; semântico-crítico → humano com IA assessora. O binário "sugere/decide" é um espectro de 5 regimes.
- **EVELYN é copiloto preditivo, não muleta**: Plano de Controle. Se cai, o preventido assume. Zero-Trust aplicado à própria IA (nada é 100% confiável, nem a IA).

---

*Gustavo Vianna · ZenithCode OS · Framework V6 · detalhamento completo em `../01_PRINCIPIOS.md`*
