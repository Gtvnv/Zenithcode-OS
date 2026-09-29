---
reforco: R1 — ZenithCode Lite
neutraliza: Ataques 1 (complexidade), 2 (zero validação), 3 (mitologia), 11 (proliferação)
status: estudo
---

# 🪶 R1 — ZenithCode Lite (o núcleo mínimo testável)

## Diagnóstico
O sistema completo é grande demais para ser adotado ou validado. Ninguém compra uma constituição de 22 documentos para um squad de 5 pessoas. Para provar que o ZenithCode OS **funciona** (e não só que é coerente no papel), é preciso destilar o **mínimo irredutível** — as regras que entregam 80% do valor com 5% do peso, **sem nenhuma mitologia, economia de pontos ou IA central**.

## A destilação: as 6 regras do Lite
Cada regra abaixo é defensável isoladamente, já provada na indústria, e implementável em uma semana.

1. **Mudança = Racional + Teste (T.D.E. enxuto).** Nenhum código vai a produção sem (a) um parágrafo dizendo *por que*, e (b) um teste automatizado. Sem mitologia, sem cerimônia. *(Origem: T.D.E.)*
2. **Regra de Dependência no linter.** O domínio não importa infraestrutura; o CI quebra se importar. Uma regra, automatizada, ensina Clean Architecture sozinha. *(Origem: Z2A/Whetstone)*
3. **Error Budget real.** Cada serviço tem um orçamento de confiabilidade (SLO). Estourou → congela features novas, foca estabilidade. Sem Z-Points, sem Árgus — só um número e uma trava. *(Origem: SRE/GECON, a parte provada)*
4. **Post-Mortem que conserta o sistema, não a pessoa.** Incidente → pergunta "por que a barreira não pegou?" → PR de correção da barreira antes da próxima sprint. *(Origem: Blameless/Compliance as Code)*
5. **Firewall de dependências.** Nada de `npm install` direto; tudo passa por um registry interno com scan de CVE/licença. *(Origem: Sigma/Crystal Forge)*
6. **Limite de WIP por carga.** Cada squad tem um teto de trabalho-em-progresso e de troca de contexto; ninguém empilha escopo num time saturado. Sem fórmula Cc — só um limite visível no board. *(Origem: Quíron/Carga Cognitiva)*

> O que **fica de fora** do Lite (de propósito): mitologia, GECON/Z-Points, CNF, biometria, UEBA, os 14 nomes, ORION, guildas, máquina de estados. Nada disso entra **até o Lite provar valor**.

## Como testar (piloto de 90 dias)
- **1 squad piloto + 1 squad de controle** (mesmo tipo de trabalho).
- O piloto adota as 6 regras; o controle segue como está.
- Instrumentação: ver `R6` (métricas DORA + retenção + satisfação).

## Critério de sucesso / morte
- **Sucesso:** o piloto melhora lead time **e** taxa de falha de deploy sem piorar a satisfação do time, em 90 dias.
- **Morte:** se uma regra não move nenhuma métrica ou irrita o time sem retorno, ela é **cortada do Lite** — não promovida "na fé".

## Caminho de crescimento (Lite → Full)
Só se promove uma camada do sistema completo **quando uma dor real do piloto a justificar**:
- Disputa de prioridade entre squads → introduzir Error Budget como moeda (embrião do GECON).
- Conflito recorrente negócio×técnica → introduzir o Override com custo (R-relacionado ao protocolo).
- Necessidade de reconhecimento → introduzir reputação (embrião do CNF).
A mitologia, **se entrar**, entra por último e como **opcional cosmético** — nunca como pré-requisito.

## Trade-off honesto
Você perde a grandiosidade narrativa e a coesão estética. Ganha algo que o sistema completo nunca teve: **prova de que funciona com gente real**. Um Lite validado vale mais que um Manifesto perfeito não testado.
