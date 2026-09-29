---
reforco: R3 — Descentralizar a EVELYN
neutraliza: Ataques 9 (ponto único de falha/confiança), 10 (centralização disfarçada)
status: estudo
---

# 🧠 R3 — Descentralizar a EVELYN (AI-optional by design)

## Diagnóstico
Tudo passa pela IA central: pré-preenche T.D.E., audita, filtra alertas, valida CNF, define baseline comportamental, arbitra a fronteira dos SITOs. Quem corromper o treino ou os pesos **é dono da holding**. O estado "Ícaro" admite a fragilidade, mas tratá-la como *modo de emergência* é insuficiente: a dependência precisa ser baixa **no dia a dia**, por design.

## Princípio: o Núcleo Determinístico
Defina explicitamente o conjunto de funções que **devem funcionar sem nenhuma IA** — e prove isso em CI, não em prosa.

- **Teste do Apagão como gate de arquitetura (não só princípio):** existe um job de CI que **derruba a EVELYN** e roda os fluxos críticos (login, faturamento, deploy, NF, autorização). Se algum depender da IA para completar, o build **quebra**. A "IA é o turbo, não o combustível" vira regra executável.
- **Gating é sempre determinístico.** A IA pode **sugerir** (advisory), nunca **barrar sozinha** sem um fallback determinístico. Ex.: o Whetstone bloqueia por regra de AST (determinística), não pelo "achismo" do modelo.

## Federação no lugar de cérebro único
- **SLMs locais por SITO** (já previsto no Edge) viram a regra, não a exceção: cada satélite tem seu modelo destilado, sem um oráculo central onipotente. Comprometer um não compromete todos.
- **Modelos especializados por domínio (least-privilege de dados):** em vez de um modelo onisciente, treinam-se **modelos por especialização** (Financeiro, Edge, Copiloto, Segurança…), e **cada um consome APENAS a fatia da base marcada com o seu NOME + TAG de domínio** (o endereçamento por Hash-ID / "DNS de dados" da Truth-Layer). Efeitos:
  - **Menos abuso/consumo:** o modelo não enxerga o que não é do seu domínio (privilégio mínimo aplicado ao dado de treino).
  - **Raio de explosão reduzido:** envenenar o modelo Financeiro **não** contamina o Edge nem o Copiloto — a membrana do SITO vale também para a IA.
  - **Auditável:** o TAG de domínio no dado torna rastreável qual modelo pode/pôde consumir o quê (governança de fronteira aplicada ao treino).
- **A fronteira é arbitrada por contrato versionado (schema), não pela IA em runtime.** A IA ajuda a *desenhar* o schema; não é ela quem decide, evento a evento, o que cruza a membrana. Isso responde direto ao Ataque 10: a autonomia do SITO vira real quando a regra de fronteira é **código auditável**, não inferência.

## Human-in-the-loop que não depende de IA
- Validações críticas (ex.: CNF Forense, Override) exigem **assinatura humana** cuja legitimidade não passa pela IA — a IA pode ter sido comprometida exatamente para forjar essas validações.
- O baseline comportamental (UEBA) — **se mantido** (ver R4) — nunca pode ser **a única** evidência para uma ação punitiva.

## Viabilidade das tarefas da EVELYN (honestidade — não é tudo factível hoje)
O sistema atribui à IA central tarefas de graus muito diferentes de maturidade. Classificar evita o ataque *"LLM atual não faz metade disso"*:

| Tarefa atribuída à EVELYN | Status realista |
|---------------------------|-----------------|
| Copiloto/boilerplate, sumarização de log, RAG sobre docs | ✅ **viável hoje** |
| Detecção de anomalia (UEBA), classificação/tagging, scan de dependência | ✅ **viável hoje** (ML maduro) |
| Pré-preencher ADR/T.D.E. de forma confiável; revisão semântica de DDD além de AST; rascunho de post-mortem | 🟡 **viável ~2 anos** (parcial, com humano no loop) |
| Validar CNF Forense ("alta relevância pedagógica"); relatório autônomo de viabilidade de contratação; *machine unlearning* sob demanda (Mnemósine) | 🔴 **especulativo** (grau de pesquisa) |

> **Regra de ouro:** o que é 🔴 especulativo **não** pode ser caminho crítico nem **única** evidência para decisão. Onde a IA ainda não é confiável, quem decide é o **determinístico + humano**. Isso ancora o R3 na realidade, não na promessa.

## Como testar
- Implementar o **job "Apagão"** no piloto e medir quantos fluxos quebram (linha de base da dependência).
- Meta trimestral: reduzir o número de fluxos críticos AI-dependentes a **zero**.
- Red Team: simular envenenamento da Intelligence-Layer e verificar o raio de dano (deve ser local ao SITO, não global).

## Critério de sucesso / morte
- **Sucesso:** o "Apagão" derruba conforto, não operação. A holding sobrevive intacta sem a IA por 24h.
- **Morte do design atual:** se um único modelo comprometido ainda derrubar a holding após o reforço, a federação não foi longe o suficiente.

## Trade-off honesto
Você perde elegância (um cérebro onisciente é mais "limpo") e ganha latência/redundância. Mas troca um ponto único de catástrofe por degradação graciosa. Em segurança, feio e vivo > elegante e morto.
