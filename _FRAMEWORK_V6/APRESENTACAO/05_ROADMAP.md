---
documento: Z2A — Roadmap dos 14 princípios (versão visual complementar)
versao: V6.0
status: vitrine — material de apresentação
autor_voz: Gustavo Vianna (GV)
natureza: dois roadmaps horizontais que se complementam — comportamento (runtime) e adoção (rollout)
publico: misto
---

# 🗺️ Roadmap dos 14 princípios

> **Por que dois roadmaps.** Os 14 princípios podem ser lidos por dois eixos de tempo diferentes, e os dois juntos contam a história inteira:
>
> - **Roadmap A — Comportamento:** a ordem em que os princípios **atuam** quando uma mudança atravessa o sistema (do pedido à evolução). É o *runtime* do framework — o que acontece a cada mudança, todo dia.
> - **Roadmap B — Adoção:** a ordem em que um time **implanta** os princípios ao adotar o Z2A (do Dia 1 à missão crítica). É o *rollout* — acontece uma vez, por maturidade.
>
> A ligação entre eles: **o comportamento maduro (A) só existe depois que a adoção (B) completou.** Um time no Dia 1 roda só o começo do fluxo A; um time maduro roda o fluxo inteiro. Os blocos abaixo são [Mermaid](https://mermaid.js.org/) — renderizam no GitHub, no VS Code com a extensão Mermaid, ou em [mermaid.live](https://mermaid.live). *Frases normativas são Lei; mecanismos citados são Sugestão; codinomes são Cultura.*

---

## Roadmap A · Comportamento — uma mudança atravessando o sistema

Leia da esquerda para a direita: é o caminho de **uma** mudança, do momento em que alguém a pede até a evolução do próprio framework. Cada estação mostra quais princípios estão no comando naquela etapa. A seta de retorno fecha o ciclo — o aprendizado da evolução realimenta a fundação.

```mermaid
flowchart LR
    A1["🏛️ FUNDAÇÃO<br/>──────<br/>P-03 arquitetura soberana<br/>P-02 segurança por mecanismo<br/>P-01 IA sugere, regra decide<br/><i>a constituição já está de pé</i>"]
    A2["🧱 ENTRADA<br/>──────<br/>P-14 base documentada (SPEC/ADR)<br/>P-04 dado por contrato + linhagem<br/><i>o gate tem o que verificar</i>"]
    A3["⚖️ DECISÃO<br/>──────<br/>P-07 auditor humano antes do capital<br/>P-06 mesmo número p/ arq. e finanças<br/><i>vale a pena gastar?</i>"]
    A4["🔌 PROVA<br/>──────<br/>P-01 Teste do Apagão (IA off)<br/>P-05 Error Budget + contenção em escada<br/>P-11 Gêmeo Digital (físico)<br/><i>sobrevive à ruptura?</i>"]
    A5["🚀 OPERAÇÃO<br/>──────<br/>P-10 sucesso = métrica de negócio<br/>P-12 fronteira única com o externo<br/>P-09 mede o artefato, nunca a pessoa<br/>P-08 pessoas são o substrato<br/><i>entrega valor sem ferir gente</i>"]
    A6["🔁 EVOLUÇÃO<br/>──────<br/>P-13 auto-refutação / red team<br/><i>a doutrina se questiona;<br/>o artefato certificado congela</i>"]

    A1 --> A2 --> A3 --> A4 --> A5 --> A6
    A6 -.o aprendizado realimenta a fundação.-> A1

    classDef fase fill:#1e3a5f,stroke:#60a5fa,color:#fff
    classDef nuc fill:#1f2937,stroke:#f59e0b,stroke-width:2px,color:#fff
    classDef evo fill:#4c1d95,stroke:#c084fc,color:#fff
    class A2,A3,A5 fase
    class A1,A4 nuc
    class A6 evo
```

> **Leitura em uma frase:** fundação de pé → dado e base documentada entram → decisão humana libera capital → o Teste do Apagão prova a ruptura → opera entregando valor sem ferir gente → o framework se refuta e aprende.

---

## Roadmap B · Adoção — um time implantando o Z2A

Leia da esquerda para a direita: é a **maturidade** de um time ao longo do tempo. Ninguém liga os 14 princípios no primeiro dia. Começa-se pelo Núcleo Mínimo (6 regras irredutíveis) e sobe-se até a capacidade de operar em missão crítica, auditável na língua das normas (DO-178C / IEC 61508).

```mermaid
flowchart LR
    B1["📅 FASE 1 · DIA 1<br/>Núcleo Mínimo<br/>──────<br/>P-03 dependência pra dentro<br/>P-14 começar a documentar<br/>P-05 Error Budget<br/><i>6 regras irredutíveis</i>"]
    B2["🔒 FASE 2 · CONFIANÇA<br/>──────<br/>P-02 gate de segurança<br/>P-04 contrato de dado<br/>P-01 IA fora do caminho crítico<br/><i>nada crítico depende de IA</i>"]
    B3["💰 FASE 3 · INCENTIVO<br/>──────<br/>P-06 GECON / unit economics<br/>P-08 senioridade por evidência<br/>P-09 ética de medição<br/><i>incentivo alinhado, gente protegida</i>"]
    B4["🎯 FASE 4 · VALOR<br/>──────<br/>P-10 North Star por feature<br/>P-07 validação adversarial<br/>P-12 fronteira com o externo<br/><i>mede resultado de negócio</i>"]
    B5["🏭 FASE 5 · MISSÃO CRÍTICA<br/>──────<br/>P-11 Gêmeo Digital / físico<br/>P-13 red team em cadência<br/>De-Para normativo (C-05)<br/><i>auditável na língua das normas</i>"]

    B1 --> B2 --> B3 --> B4 --> B5

    classDef fase fill:#1e3a5f,stroke:#60a5fa,color:#fff
    classDef nuc fill:#1f2937,stroke:#f59e0b,stroke-width:2px,color:#fff
    class B2,B3,B4 fase
    class B1,B5 nuc
```

> **Leitura em uma frase:** começa pelas 6 regras do Dia 1 → fecha a confiança (segurança, dado, IA contida) → alinha incentivo e protege as pessoas → passa a medir valor de negócio → chega a missão crítica, auditável por norma.

---

## Como A e B se encaixam

| | Roadmap A — Comportamento | Roadmap B — Adoção |
| --- | --- | --- |
| **Eixo de tempo** | Uma mudança (segundos a dias) | Uma organização (meses a anos) |
| **Acontece** | A cada mudança, sempre | Uma vez, por maturidade |
| **Pergunta que responde** | "O que o framework faz com esta mudança?" | "Por onde eu começo a adotar?" |
| **Fim da linha** | A doutrina se refuta e aprende (P-13) | Missão crítica auditável (P-11, P-13, C-05) |

**A ponte entre os dois:** cada fase de adoção em **B** *liga* um trecho do comportamento em **A**. Um time na Fase 1 só roda "Fundação + Entrada" do fluxo A. Um time na Fase 5 roda o fluxo A inteiro, incluindo a prova do Apagão no físico e a auto-refutação. Ou seja: **B é a ordem em que você acende as estações de A.**

```mermaid
flowchart LR
    BF1["Adoção Fase 1"] -.liga.-> AF1["Comportamento: Fundação + Entrada"]
    BF2["Adoção Fase 2"] -.liga.-> AF2["+ Prova (Apagão de IA)"]
    BF3["Adoção Fase 3-4"] -.liga.-> AF3["+ Decisão + Operação"]
    BF5["Adoção Fase 5"] -.liga.-> AF5["+ Prova física + Evolução (fluxo completo)"]
    classDef b fill:#1f2937,stroke:#f59e0b,color:#fff
    classDef a fill:#1e3a5f,stroke:#60a5fa,color:#fff
    class BF1,BF2,BF3,BF5 b
    class AF1,AF2,AF3,AF5 a
```

---

## Qual roadmap levar para cada conversa

| Público | Mostre | Por quê |
| --- | --- | --- |
| **Comercial** | Roadmap B | "Você não precisa comprar tudo de uma vez — adota por fases, valor desde o Dia 1." |
| **Acadêmico** | Roadmap A | Mostra o framework como sistema de comportamento falseável (fecha em P-13, auto-refutação). |
| **Técnico** | A e B juntos + a ponte | Vê o runtime e o rollout, e entende que adotar = acender estações do comportamento. |

---

*Vitrine. Complementa `04_DIAGRAMA.md` (tese, capacidades, camadas). Para a Lei completa dos 14 princípios, ver `../01_PRINCIPIOS.md`; para as 5 capacidades, `../02_CAPACIDADES_TRANSVERSAIS.md`. Conteúdo reformulado para conformidade de licença.*
