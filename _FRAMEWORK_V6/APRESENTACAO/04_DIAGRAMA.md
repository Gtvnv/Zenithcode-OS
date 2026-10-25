---
documento: Z2A — Versão Visual (diagramas de apresentação)
versao: V6.0
status: vitrine — material de apresentação
autor_voz: Gustavo Vianna (GV)
natureza: três recortes visuais do Z2A para mostrar o framework em uma olhada
publico: misto (abre qualquer conversa — comercial, acadêmica ou técnica)
---

# 🎨 Z2A em diagramas

> **Como usar.** Três diagramas, do mais simples ao mais estrutural. O primeiro conta a tese inteira em um fluxo; o segundo mostra como os 14 princípios se agrupam em 5 capacidades; o terceiro separa as 5 camadas que as pessoas costumam confundir. Os blocos abaixo são [Mermaid](https://mermaid.js.org/) — renderizam direto no GitHub, no VS Code com a extensão Mermaid, ou colados em [mermaid.live](https://mermaid.live). *Os codinomes (EVELYN, Teste do Apagão) são Cultura; as frases normativas são Lei; os mecanismos citados são Sugestão.*

---

## 1 · A tese em um fluxo — "a IA sugere; a regra decide"

É o coração do Z2A. A IA entra como copiloto que **sugere**; uma **regra determinística** decide o que entra no build; e nada sobe sem passar pelo **Teste do Apagão** (prova que o sistema opera sem IA e sobrevive à ruptura).

```mermaid
flowchart TD
    DEV["👤 Engenheiro / Negócio<br/>pede uma mudança"]
    IA["🤖 IA (EVELYN)<br/>copiloto preditivo<br/><i>sugere — nunca decide</i>"]
    SUG["📄 Saída da IA<br/><i>'sugestão de risco máximo'</i><br/>assinada: modelo / seed / temperatura"]

    GATE{"⚖️ GATE DETERMINÍSTICO<br/>regra que decide<br/>AST · testes · contratos · arquitetura"}

    REJ["❌ Rejeitado<br/>não entra no build<br/>registrado no log imutável"]

    APAGAO{"🔌 TESTE DO APAGÃO<br/>2 eixos de prova"}
    EIXO1["Eixo 1 — Apagão<br/>IA 100% desligada<br/><i>todo fluxo crítico completa?</i>"]
    EIXO2["Eixo 2 — Breakglass<br/>chaos + pentest + estresse ao limite<br/><i>onde cede? documenta e corrige</i>"]

    ACHADO["📝 Achado documentado<br/><b>+ ação sobre o achado</b><br/><i>(Challenger: apontar não basta)</i>"]

    PROD["✅ Produção<br/>sobe com North Star declarada<br/>sucesso = mover a métrica de negócio"]

    DEV --> IA --> SUG --> GATE
    GATE -->|"não passou"| REJ
    GATE -->|"passou"| APAGAO
    APAGAO --> EIXO1
    APAGAO --> EIXO2
    EIXO1 -->|"depende de IA p/ completar"| REJ
    EIXO2 -->|"quebrou no limite"| ACHADO
    ACHADO -->|"corrigido ANTES de produção"| PROD
    EIXO1 -->|"completa sem IA"| PROD

    classDef lei fill:#1f2937,stroke:#f59e0b,stroke-width:3px,color:#fff
    classDef ia fill:#312e81,stroke:#818cf8,color:#fff
    classDef ok fill:#064e3b,stroke:#34d399,color:#fff
    classDef bad fill:#7f1d1d,stroke:#f87171,color:#fff
    class GATE,APAGAO lei
    class IA,SUG ia
    class PROD ok
    class REJ bad
```

> **Leitura em uma frase:** a IA é o turbo, não o combustível — se ela some, o carro ainda anda; e antes de vender o carro, leva-se ao limite para achar onde quebra.

---

## 2 · Os 14 princípios agrupados nas 5 capacidades

Os **14 princípios** são a constituição auditável (a Lei). As **5 capacidades** são feixes de prática reutilizável — cada uma realiza vários princípios ao mesmo tempo. A **C-05 (Governança de Conformidade)** é a espinha: é ela que torna todos os princípios acionáveis ("isto fere P-04, revisar").

```mermaid
flowchart LR
    subgraph NUCLEO["🏛️ Núcleo constitucional (P-01 a P-03)"]
        P01["P-01 · Governança<br/>determinística da IA"]
        P02["P-02 · Segurança<br/>por mecanismo"]
        P03["P-03 · Arquitetura<br/>soberana"]
    end

    subgraph C01["💰 C-01 Economia de Incentivo"]
        P06["P-06 · Incentivo alinhado"]
    end
    subgraph C02["🛡️ C-02 Resiliência de Entrega"]
        P05["P-05 · Confiabilidade<br/>é orçamento"]
        P11["P-11 · Rastreabilidade<br/>físico-ciber"]
    end
    subgraph C03["🔐 C-03 Cadeia de Confiança"]
        P12["P-12 · Fronteira<br/>com o externo"]
        P04["P-04 · Dado como<br/>produto governado"]
    end
    subgraph C04["🔮 C-04 Inteligência Preditiva"]
        P09["P-09 · Medir o artefato,<br/>nunca a pessoa"]
    end
    subgraph C05["⚖️ C-05 Governança de Conformidade<br/>(a espinha — torna tudo acionável)"]
        P07["P-07 · Validação<br/>adversarial"]
        P10["P-10 · Sucesso =<br/>resultado de negócio"]
        P08["P-08 · Pessoas são<br/>o substrato"]
        P13["P-13 · Auto-refutação<br/>é sobrevivência"]
        P14["P-14 · Conhecimento<br/>documentado é gate"]
    end

    NUCLEO --> C01 & C02 & C03 & C04
    NUCLEO --> C05
    C05 -.audita.-> C01 & C02 & C03 & C04

    classDef nuc fill:#1f2937,stroke:#f59e0b,stroke-width:2px,color:#fff
    classDef cap fill:#1e3a5f,stroke:#60a5fa,color:#fff
    classDef esp fill:#4c1d95,stroke:#c084fc,stroke-width:2px,color:#fff
    class P01,P02,P03 nuc
    class P04,P05,P06,P09,P11,P12 cap
    class P07,P08,P10,P13,P14 esp
```

> **Leitura em uma frase:** P-01 a P-03 são a constituição que todo o resto assume; as capacidades empacotam a prática; a C-05 é o que faz os princípios morderem.

---

## 3 · As 5 camadas — o que é framework, o que não é

A confusão mais comum sobre o Z2A é misturar cinco coisas diferentes. Este diagrama as separa: o **framework** (leis agnósticas) fica no topo; a **tese** o sustenta por baixo; e **metodologia, implementação e produto** são como o framework vira realidade na firma de GV. O framework não depende dos produtos para existir — os produtos são a prova de que ele roda.

```mermaid
flowchart TD
    TESE["🧪 TESE / PESQUISA<br/><i>governança determinística de IA no SDLC é mensurável</i><br/>Design Science · domínio medido: integridade financeiro-fiscal<br/>(o PORQUÊ, falseável)"]

    FRAME["📜 FRAMEWORK Z2A (V6)<br/>14 princípios + 5 capacidades · leis agnósticas e auditáveis<br/>(o QUÊ — independente de empresa, linguagem ou fornecedor)"]

    METODO["🛠️ METODOLOGIA<br/>GECON · T.D.E. · Error Budget · ritos de carreira<br/>(o COMO organizar o trabalho)"]

    IMPL["⚙️ IMPLEMENTAÇÃO DE REFERÊNCIA<br/>os 20 satélites V5 · gates em CI · ArchUnit · Gêmeo Digital<br/>(o COMO em código — a cozinha de GV)"]

    PROD["📦 PRODUTOS REAIS<br/>Zyntra ERP · AegisProtocol · OmniShift · Vertex · Fafnir ...<br/>(a PROVA de que o framework roda em produção)"]

    TESE -->|fundamenta| FRAME
    FRAME -->|se organiza como| METODO
    METODO -->|se materializa em| IMPL
    IMPL -->|entrega| PROD
    PROD -.evidência empírica que realimenta.-> TESE

    classDef tese fill:#4c1d95,stroke:#c084fc,color:#fff
    classDef frame fill:#1f2937,stroke:#f59e0b,stroke-width:3px,color:#fff
    classDef resto fill:#1e3a5f,stroke:#60a5fa,color:#fff
    class TESE tese
    class FRAME frame
    class METODO,IMPL,PROD resto
```

> **Leitura em uma frase:** o framework é o conjunto de leis; a tese prova que elas funcionam; os produtos são a prova viva — mas a lei vale mesmo para quem nunca viu os produtos de GV.

---

## Qual diagrama levar para cada conversa

| Público | Comece por | Por quê |
| --- | --- | --- |
| **Comercial** (investidor, cliente) | Diagrama 1 | Mostra o valor em 10 segundos: "se a IA cai, seu faturamento não cai." |
| **Acadêmico** (banca, orientador) | Diagrama 3 → depois 2 | Separa tese de framework (rigor) e mostra a estrutura auditável. |
| **Técnico** (engenheiro, arquiteto) | Diagrama 2 → depois 1 | Vê a constituição e como o gate determinístico opera no fluxo. |

---

*Vitrine. Para o detalhe por público, ver `01_COMERCIAL.md`, `02_ACADEMICO.md`, `03_TECNICO.md`. Para a Lei completa, ver `../01_PRINCIPIOS.md` e `../02_CAPACIDADES_TRANSVERSAIS.md`. Conteúdo reformulado para conformidade de licença.*
