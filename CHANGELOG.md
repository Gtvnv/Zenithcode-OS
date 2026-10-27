# Changelog

Todas as mudanças relevantes do meta-framework **ZenithCode OS** são registradas aqui.

O versionamento segue a política própria do framework — **SemVer Constitucional**:

- **Patch** (ex.: V4.0 → V4.1) — refino que não quebra contratos existentes.
- **Minor** (ex.: V4.x → V4.x+1) — nova capacidade retrocompatível.
- **Major** (ex.: V4 → V5) — muda o Kernel ou um contrato de fronteira; exclusivo da Emenda Constitucional anual.
- Atualizar um **satélite** isoladamente não incrementa a versão do OS (Princípio Kernel & Plugins).

> As entradas de V2.5 a V4.1 abaixo foram **reconstruídas a partir do próprio acervo** (que é anterior a este repositório). A partir de **2026-09-28** (publicação no GitHub), o histórico do git passa a ser a fonte de verdade.

## [6.7] — minor · "a raiz de Engenharia de Sistemas (e a IA como ferramenta)"
Ampliação de escopo retrocompatível: o framework assume explicitamente sua raiz de **Engenharia de Sistemas** (software + hardware + processo + pessoas), sem perder a pegada de software nem mexer no título/tese. Dose média, feita a bisturi — generaliza a moldura, mantém os exemplos concretos.
- **Nova seção 1.5 — "A raiz: Engenharia de Sistemas, não só de Software".** A metáfora do maestro + tabela Software vs. Sistemas. Explica por que o framework tem P-11 (hardware), P-08/P-09 (pessoas) e P-06 (custo): são as outras faces do sistema, não apêndices.
- **A IA redimensionada a ferramenta transversal.** De "foco em código" para "ferramenta de alto risco que atravessa qualquer processo" (código, atuador, passo de processo, decisão). A tese "a IA sugere; a regra decide" generaliza o alcance sem perder a essência; a frase do P-01 passou a falar em "o que entra no sistema", não só "no build".
- **Uso consciente da IA (reforço distribuído, ancorado em mecanismo).** O Z2A não ensina a usar IA — decide **onde ela entra no workflow e na arquitetura** (*"qual prego escolher, não como usar o martelo"*). A disciplina anti-muleta/anti-vício é garantida pelo Teste do Apagão (operar sem IA) e pelo P-08 (domínio antes da ferramenta), não por apelo moral.

> **Decisões preservadas:** título e tese central intocados ("missão crítica" é mais útil que "engenharia de sistemas" na capa — nem toda empresa é uma NASA, mas toda tem algo que não pode cair). A raiz entra no corpo, não na capa. Classificado minor por ampliar o escopo declarado do framework, embora sem criar lei nova.

## [6.6] — patch · "navegação: sumário e glossário"
Melhoria de navegabilidade, sem mudar conteúdo de lei. Resolve a carga cognitiva do jargão sem inverter a ordem pedagógica (a Lei continua vindo antes da Cultura — o codinome é casca local, não pré-requisito).
- **Sumário no topo** do `Z2A.md` — as 8 partes + glossário, com links de âncora, e um atalho direto para o glossário ao esbarrar num codinome.
- **Glossário de consulta rápida no fim** — todos os codinomes, siglas e conceitos em uma linha cada, com a parte onde cada um é explicado em contexto. Para consultar, não para ensinar.

> **Decisão de ordem (registrada).** Os termos de cultura seguem na Parte VII (fim), não no início: pôr o léxico antes das leis contrariaria o princípio "Lei universal, Cultura local" e recriaria a sobrecarga de jargão que o red team #3 apontou. A navegação (sumário + glossário) resolve a consulta sem trair a estrutura. GECON não mudou — é sigla brasileira (Gestão Econômica), já em conformidade, documentada como crédito à fonte.

## [6.5] — patch · "a cultura ganha suas definições"
A Parte VII (Cultura) passa a documentar o que estava implícito: **todo codinome é um acrônimo autodescritivo** — o nome carrega a função. A regra é cravada e cada sigla é aberta.
- **Léxico completo documentado:** LEVEL e seus 7 níveis (NASCER→ZENITAR), ORION, as guildas (ELOS, ARCO), os ritos (FORJA, BREAK, Apoptose) e os 5 escopos arquiteturais (SITIO→BLOCO→VIGA→PILAR→TETO), cada um com sua expansão.
- **Refinamento de nomenclatura** (alinhamento a DDD/SRE): SITIO ("Transações e Interfaces"), o "U" de GUIAR/ILUMINAR (Unificação / Ubiquidade-DDD), NASCER (Sintaxe/Conformidade), TRANSCENDER (enxugado), TETO ("Estratégica"), BREAK ("Estancamento"). Esta é a versão oficial canônica das siglas.
- **Correção de coerência:** a descrição antiga de ELOS/ARCO por stack técnica (backend/SRE vs. UX/Front) foi substituída pela função real das siglas (liderança/orientação de sistemas vs. arquitetura/regras/controle).
- **GECON documentado como crédito à fonte** — não é sigla do Z2A, é o Modelo de Gestão Econômica (Catelli, anos 1970) em que a economia de incentivo (P-06) se baseia.

> **Vínculo com P-14.** Documentar os acrônimos é a própria doutrina aplicada à cultura: o conhecimento vive na organização, inclusive nos nomes — e por isso o léxico não se higieniza (trocar a sigla jogaria fora a definição que ela carrega).

## [6.4] — patch · "a escrita à altura da engenharia"
Quarta rodada de red team — a de maior qualidade, focada em **comunicação**, não em conteúdo. Três refinos de redação e precisão, aplicados de forma orgânica (dentro das frases, sem bloco de correção). Sem lei nova.
- **Lei × mecanismo (o mais importante).** Novo parágrafo na gramática (Parte II): a Lei é inviolável desde o Dia 1; o que escala com o tamanho da empresa é o **mecanismo que a executa** (humano/analógico → script/automatizado). A tabela do Modo Bootstrap foi reescrita — o humano no Dia Zero é o **processador analógico** da regra (governado por P-14), não um "acordo de time" frouxo. Elimina a contradição "lei absoluta × bootstrap flexível" e firma o "qualquer estágio" como escalabilidade, não luxo de Big Tech.
- **Tom: de defesa moral a declaração mecânica.** A seção 1.2 foi reescrita para provar a proteção do humano pelo mecanismo (bloqueio de deploy em P-05, proibição de vigilância em P-09) em vez de justificar-se retoricamente. Notas defensivas redundantes foram removidas/enxugadas.
- **Revelação progressiva do jargão.** As três moedas (kernel, 3.3) passam a ser apresentadas pela mecânica universal (liquidez / confiabilidade / reputação) antes do nome proprietário (Z-Points / Error Budget / CNF). O conceito ancora antes da etiqueta.

> **Nota de processo.** Dois dos três problemas foram criados por respostas a red teams anteriores (o tom defensivo e o bootstrap frouxo). Isso encerra a série de red teams externos reativos — as próximas revisões devem ser internas e cadenciadas (P-13), não reação a cada crítica. Patch, não minor.

## [6.3] — patch · "o terceiro red team, e o que recusamos dele"
Terceira rodada de red team externo — a mais fraca, sinal de que o framework estabiliza. Um complementar real, duas melhorias de ênfase, e **duas recusas registradas** (a auto-refutação do P-13 inclui refutar o crítico quando ele erra).
- **C-P06.7 — anti-gamificação da moeda interna.** Fecha o *bug farming*: os Z-Points só se consolidam quando o ciclo de P-10 prova o impacto (não no deploy), e o ganho de uma guilda é validado por **outra** guilda (P-07 em microescala, anti-conluio). Complementa o C-P06.6 (da 6.1), não o duplica.
- **O Teste do Apagão como premissa de abertura.** A Parte I passa a abrir com "o sistema vai falhar; o Teste do Apagão é o norte" — o apagão deixa de entrar tímido no kernel e vira o fio condutor narrativo.
- **Rampa cultural explícita (Parte 7).** Ligada ao Modo Bootstrap: uma equipe pode manter termos legados no Dia 1 e migrar para os codinomes com maturidade. A identidade é meta, não pedágio.
- **`01_COMERCIAL.md` reforçado** com um bloco que explica o vocabulário ao decisor (por que "substrato", não "RH") — a camada de tradução executiva, sem higienizar o framework.

> **Recusas registradas (na evidência).** (1) Reagrupar as 14 leis em "escudo/sobrevivência/reconstrução" — recusado: taxonomia frouxa que concorreria com a ordem de autoridade e as 5 capacidades. (2) "Dicionário de-para" higienizante na vitrine — recusado: trocar "substrato inegociável" por "recurso humano" contradiz a seção 1.2 (o framework prega contra o jargão vazio) e enfraquece a proteção da pessoa. Patch, não minor.

## [6.2] — patch · "clareza vinda de um segundo red team"
Refinos de **apresentação e ênfase** (sem lei nem complementar novo) nascidos de uma segunda rodada de red team externo, cujas críticas eram de ordem e destaque — "as conexões já estavam no texto". Aplicados com moderação: a tese central (a IA sugere, a regra decide) continua sendo a primeira coisa.
- **Teste do Apagão + físico.** O exemplo do Eixo 1 passa a citar o caso ciber-físico (a IA sugere acelerar um atuador; a regra veta contra o limite térmico antes de virar comando), e a Apollo 11 é relida como software protegendo o físico (propulsores, vidas). **Escopo honesto:** o Z2A audita a decisão de **alto nível** que comanda o hardware, não o firmware/RTOS de baixo nível (isso é certificação de artefato, fora do escopo — ver 1.4).
- **Contenção em escada protege a pessoa (P-05 ↔ P-08).** Nova nota: a contenção automática existe também para tirar do engenheiro em pânico (o cenário das 3h da manhã) a decisão do rollback cego — o sistema vira read-only sozinho e compra tempo mental à equipe. Dívida humana tratada por mecanismo.
- **Salvaguarda ética colada à provocação (1.2).** O contraste "não pintamos a parede; bloqueamos deploy matematicamente e proibimos vigilância individual" passa a vir junto da inversão "humano como substrato", em vez de só páginas adiante — provando a tese na hora.

> **Nota de prudência (registrada na evidência).** Red team tende a pedir "traga X para o início"; aceitar toda rodada desse tipo incharia a abertura. Estas foram acatadas como ênfase pontual, não reescrita. Patch, não minor: nenhuma capacidade nova.

## [6.1] — minor · "o framework responde ao red team"
Três emendas retrocompatíveis nascidas de uma rodada de red team adversarial (origem externa). Nenhuma fere o núcleo — todas amarram pontas que o framework já comportava. Cumpre o rito da P-13 (red team em cadência + emenda com evidência citada).
- **C-P12.6 + C-P01.6 — contaminação externa.** Toda integração externa de missão crítica passa a exigir um **fallback determinístico local** (cache estático validado): um valor em formato válido mas semanticamente absurdo (ex.: API de terceiros que usa IA alucinando um preço) aciona o fallback em vez de ser engolido. O Teste do Apagão passa a injetar ruído probabilístico externo para provar a degradação graciosa. Liga P-12 ↔ P-01 ↔ P-05 ↔ P-04.
- **C-P10.5 + C-P06.6 — atrito resultado × pessoa.** A falha de **hipótese de mercado** deixa de punir a **engenharia**: a carteira de reputação é imune à métrica-norte de P-10 quando a infra ficou de pé (P-05), e a **remoção limpa de código zumbi gera liquidez** (Z-Points). Inverte o incentivo de manter projeto morto respirando por aparelho; preserva o blameless (P-03) e a proteção da pessoa (P-09).
- **Modo Bootstrap (Dia Zero) — "qualquer estágio" vira verdade.** A adoção pode começar com os mecanismos determinísticos realizados por processo **sociotécnico** (ADR em texto no PR, Error Budget como dashboard sem veto, revisão humana), migrando para automação travante nas fases maduras. A Lei é fixa; só a instrumentação é gradual. Resolve a contradição entre "qualquer estágio" (Parte I) e o peso do Dia 1.

> **Evidência (P-13.3).** As três emendas citam a rodada de red team registrada na cozinha — material de trabalho que não é publicado neste repositório. A emenda é minor (capacidades retrocompatíveis), não major: não muda o Kernel nem um contrato de fronteira.

## [6.0] — major · "o framework puro, em vitrine"
Reformulação de framework: o V6 deixa de tratar os satélites como o framework e os destila em **14 leis normativas auditáveis** + **5 capacidades transversais** sobre um núcleo portável. Esta publicação traz a **vitrine** — o framework puro, sem a camada de implementação ou produto.
- **`_FRAMEWORK_V6/Z2A.md`** — documento único e autossuficiente: visão, gramática (Lei/Sugestão/Cultura), kernel inviolável, as 14 leis (com critério observável, patologia, invariantes complementares e origem), as 5 capacidades, o framework em movimento e a cultura.
- **README** como porta de entrada, com diagramas (tese em fluxo, princípios por capacidade, roadmaps de comportamento e adoção) e um **exemplo de implementação** da lei P-01 — enquadrado como base de comparação ("como poderia ser, não como deve ser").
- **Novas leis do ciclo de estresse:** P-13 (auto-refutação como condição de sobrevivência) e P-14 (documentação executável como portão).
- **Material de apresentação** por público em `_FRAMEWORK_V6/APRESENTACAO/` (comercial, acadêmico, técnico) + diagramas e roadmaps.
- **Honestidade de maturidade:** framework estável e portável, que se **posiciona** para missão crítica (de-para com DO-178C / IEC 61508 como posicionamento, não certificação). **Não validado empiricamente.**

> **Nota sobre o salto 4.1 → 6.0.** A consolidação V5 (os 20 satélites) e a reformulação V6 (satélites → princípios) ocorreram no acervo de trabalho, fora deste repositório. O git passa a ser a fonte de verdade a partir desta entrada; o repositório publica a vitrine do framework, não o acervo bruto.

## [4.1] — patch
- Calibração Simétrica.
- Anti-farming de CNF Forense.
- Consolidação do acervo em 1 documento canônico por satélite (base V3.9 + adendos), publicada neste repositório.

## [4.0] — minor · "sela o ciclo"
- Protocolo de Override Fiduciário (Assinatura Dupla do arquiteto + débito automático de ~40% do Error Budget no Árgus + Quarentena de Suporte no DK-Ops).
- Expansão Cirúrgica — pedido de headcount justificado por telemetria (Árgus/Quíron), não por "achismo".
- Protocolo de Resgate de Esquadrão.

## [3.9] — base · "matematicamente fechada"
Consolidação de todas as supersessões V2.5 → V3.9. Principais:
- **Apoptose de Código** substitui a Guilhotina Algorítmica / rollback cego.
- **Escudo do Themis** substitui a Guilhotina do Themis.
- **Paradigma Biológico** (apoptose/anticorpos/antifrágeis) substitui o jargão bélico anterior.
- **7 níveis da Constituição** (Nascer→Crescer→Guiar→Iluminar→Edificar→Transcender→Zenitar) selam a carreira; ELOS/ARCO passam a ser guildas, não níveis; Orion é a trilha de gestão.
- **Hub Continental / Nodo / Célula Local** substitui a geografia S.I.T.I.O./V.I.G.A./P.I.L.A.R./B.L.O.C.O./T.E.T.O.
- **Override Fiduciário** substitui o veto técnico absoluto.

## Como registrar a próxima versão
1. Atualize o arquivo [`VERSION`](VERSION) e o `versao_referencia` dos documentos afetados.
2. Adicione uma entrada no topo deste arquivo (versão, tipo — patch/minor/major — e resumo).
3. Marque o commit com uma tag `vX.Y` (`git tag -a vX.Y -m "..."`) e publique um GitHub Release a partir dela — é o link que deve ser compartilhado com terceiros, para que continue apontando para o conteúdo daquele momento mesmo após novas mudanças no `master`.
