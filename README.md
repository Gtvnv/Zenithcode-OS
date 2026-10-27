# 🧭 Z2A — Framework de Governança de Engenharia

### *para contextos de missão crítica*

![versão](https://img.shields.io/badge/Vers%C3%A3o:-6.7-darkgreen)
![status](https://img.shields.io/badge/Status:-Homologação-darkblue)
![validação](https://img.shields.io/badge/Valida%C3%A7%C3%A3o:-N%C3%A3o%20Validado%20Empiricamente-darkorange)

---

> **A IA sugere; a regra decide.** A IA é o turbo, não o combustível. Se ela some, o sistema ainda anda.

O **Z2A** é um framework de **governança de engenharia** para contextos de missão crítica. Ele não governa a infraestrutura nem certifica o produto — governa **como** um sistema é decidido, auditado e evoluído, com a IA subordinada a regras determinísticas. Mais **TOGAF que ISO**: dá método, linguagem e estrutura de autoridade, sem emitir selo de conformidade.

> 📖 **Este README é a porta de entrada.** O framework completo — visão, gramática, kernel, as 14 leis com todos os campos, as 5 capacidades, a cultura e o glossário — vive num documento único e autossuficiente:
> ### **→ [`_FRAMEWORK_V6/Z2A.md`](_FRAMEWORK_V6/Z2A.md)**

---

## A tese, em um diagrama

A IA entra como copiloto que **sugere** (uma linha de código, um comando a um atuador, um passo de processo); uma **regra determinística** decide o que entra; e nada sobe sem passar pelo **Teste do Apagão** — a prova de que o sistema opera sem IA e sobrevive à ruptura.

![A tese em um fluxo: a IA sugere, a regra decide](_FRAMEWORK_V6/assets/01-tese-fluxo.png)

---

## Em que dimensão o Z2A atua

Missão crítica tem três camadas. O Z2A vive na terceira:

| Camada | Pergunta | O Z2A atua? |
|---|---|---|
| Infraestrutura | *o sistema fica de pé?* | Não — exige que exista |
| Artefato / produto | *o produto está correto?* | Parcial — põe o portão, não certifica |
| **Processo / governança** | *o jeito de construir é confiável e auditável?* | **Sim — é o core** |

*O Z2A não garante que o avião voa — garante que o processo que decidiu colocar aquele código no avião foi determinístico, auditável e resistente à ausência de IA.*

E ele **não é supremo nem total**: é uma camada que se **combina** com quem resolve bem o que não é o seu foco — certificação (ex.: DO-178C), confiabilidade (ex.: SRE), segurança da informação (ex.: ISO 27001), modelagem de domínio (ex.: DDD). Orquestra a integração, não reescreve o que cada um já faz melhor. Humilde no escopo, firme na convicção.

## A raiz: Engenharia de Sistemas

O Z2A nasceu da **Engenharia de Sistemas** (visão holística: software + hardware + processo + pessoas; o engenheiro como *maestro*), não da Engenharia de Software pura. Por isso ele governa o sistema inteiro — e é o que explica leis como a do mundo físico (P-11), das pessoas (P-08/P-09) e do custo (P-06). Os exemplos aqui falam de software por conveniência; **a Lei vale para o sistema inteiro**. E o que o Z2A faz com a IA não é ensinar a usá-la — é decidir **onde ela entra no workflow e na arquitetura** (*qual prego escolher, não como usar o martelo*).

---

## As 14 leis (síntese)

A constituição auditável. Cada lei tem, no [`Z2A.md`](_FRAMEWORK_V6/Z2A.md), frase normativa, critério observável, a patologia que cura, invariantes complementares e origem.

![Os 14 princípios agrupados nas 5 capacidades](_FRAMEWORK_V6/assets/02-principios-capacidades.png)

| # | A Lei em uma linha |
|---|---|
| **P-01** | A IA sugere; a regra determinística decide; nenhum caminho crítico depende de IA. |
| **P-02** | Segurança é portão determinístico, identidade é o perímetro, auditoria é imutável. |
| **P-03** | Domínio soberano, dependência pra dentro, periferia substituível. |
| **P-04** | Dado entra por contrato com linhagem; verdade / treino / interface não se contaminam. |
| **P-05** | Confiabilidade tem orçamento com poder de veto; falha se contém em escada. |
| **P-06** | Arquitetura e finanças leem o mesmo número; moedas internas não se convertem. |
| **P-07** | Decisão estrutural passa por auditor humano independente antes do capital. |
| **P-08** | Dívida humana se mede como dívida técnica; senioridade é por evidência. |
| **P-09** | Mede-se o artefato, nunca a pessoa; o dado conserta, jamais pune. |
| **P-10** | Sucesso é mover a métrica de negócio; o que não move entra em revisão humana. |
| **P-11** | Nada no físico roda sem Gêmeo Digital; rastro imutável; nada vira tijolo. |
| **P-12** | O externo entra por fronteira única e isolada; o que sai é tradução, não registro. |
| **P-13** | Todo princípio tem critério de morte falseável; red team interno em cadência. |
| **P-14** | Conhecimento vive na organização; documentação é versionada e executável como portão. |

Sobre elas, **5 capacidades transversais** empacotam a prática (Economia de Incentivo, Resiliência de Entrega, Cadeia de Confiança, Inteligência Preditiva e a Governança de Conformidade — a espinha que torna tudo auditável).

> **Como auditar qualquer coisa:** pegue uma decisão e confronte-a com a frase normativa. Se não cumpre o critério, é não-conformidade — nomeável como *"fere P-NN, oposto a P-MM, revisar"*.

---

## O framework em movimento

**Comportamento** (como as leis atuam a cada mudança) e **adoção** (a ordem em que um time as implanta, incluindo o Modo Bootstrap para começar pequeno):

![Roadmap de comportamento](_FRAMEWORK_V6/assets/04-roadmap-comportamento.png)

![Roadmap de adoção](_FRAMEWORK_V6/assets/05-roadmap-adocao.png)

---

## Um exemplo de implementação — *como poderia ser*, não *como deve ser*

> Base de comparação, não receita. O Z2A é a Lei (o **quê**/**porquê**); o **como** é livre. O exemplo abaixo mostra *uma* forma de materializar a P-01 ("a IA sugere; a regra decide"). Existe para você reagir — *"então é assim que funcionaria? posso fazer de outra forma"* — não para amarrar a implementação.

```python
# ---- EXEMPLO ILUSTRATIVO (uma forma possível, não a forma oficial) ----

# 1. A IA SUGERE — saída tratada como "sugestão de risco máximo", assinada e auditável.
proposal = Proposal(
    diff=ai_copilot.propose(change_request).diff,
    signature=sign(model=..., seed=..., temperature=...),   # C-P01.2: reproduzível
)
audit_log.append(proposal.signature)                        # P-02: log imutável

# 2. A REGRA DECIDE — portão determinístico. A IA não tem voto. Falhou = REJEITA.
def deterministic_gate(proposal) -> Decision:
    checks = [
        ast_contract_is_respected(proposal.diff),   # arquitetura (P-03)
        tests_pass(proposal.diff),                   # comportamento
        no_detectable_vulnerability(proposal.diff),  # segurança (P-02)
        contradicts_no_spec(proposal.diff),          # intenção documentada (P-14)
    ]
    if not all(checks):
        raise GateRejected(proposal)                 # build quebra; nada passa em silêncio
    return Decision.ACCEPT

# 3. O TESTE DO APAGÃO — propriedade contínua, não um assert solto.
def blackout_test(critical_flow) -> bool:
    with ai_disabled():                              # turbo off
        return critical_flow.completes()             # o carro ainda anda sem IA?

deterministic_gate(proposal)                         # a regra, não a IA, decide
assert blackout_test(billing_flow) is True           # P-01, Eixo 1
```

> O ponto não é o código — é a **separação de responsabilidades**: a IA e a decisão nunca se tocam, e a prova (o Apagão) é independente das duas. Outra pessoa faria em Go, num pipeline sem Python, ou num motor de regras. **Tudo certo** — a lei mede o comportamento, não a ferramenta.

---

## Como navegar o projeto

| Arquivo | O que é |
|---|---|
| **[`_FRAMEWORK_V6/Z2A.md`](_FRAMEWORK_V6/Z2A.md)** | **A fonte única** — o framework completo, autossuficiente, com sumário e glossário. |
| [`_FRAMEWORK_V6/APRESENTACAO/`](_FRAMEWORK_V6/APRESENTACAO) | Versões por público (comercial, acadêmico, técnico), diagramas e roadmaps. |
| [`CHANGELOG.md`](CHANGELOG.md) | O histórico de versões (política SemVer Constitucional). |

---

## Honestidade de maturidade

Framework estável e portável, em **homologação**. Posiciona-se para missão crítica (de-para com DO-178C / IEC 61508 como **posicionamento, não certificação**). **Não validado empiricamente** — o delta sobre as normas é hipótese a validar. Os limiares numéricos nas leis são *Sugestão*: calibre ao seu contexto. O framework foi endurecido por rodadas de red team adversarial (registro de evolução no `CHANGELOG`).

---

## Licença e autoria

Framework de autoria de Gustavo Vianna ([@Gtvnv](https://github.com/Gtvnv)). Conteúdo reformulado para conformidade de licença.
