# Changelog

Todas as mudanças relevantes do meta-framework **ZenithCode OS** são registradas aqui.

O versionamento segue a política própria do framework — **SemVer Constitucional**:

- **Patch** (ex.: V4.0 → V4.1) — refino que não quebra contratos existentes.
- **Minor** (ex.: V4.x → V4.x+1) — nova capacidade retrocompatível.
- **Major** (ex.: V4 → V5) — muda o Kernel ou um contrato de fronteira; exclusivo da Emenda Constitucional anual.
- Atualizar um **satélite** isoladamente não incrementa a versão do OS (Princípio Kernel & Plugins).

> As entradas de V2.5 a V4.1 abaixo foram **reconstruídas a partir do próprio acervo** (que é anterior a este repositório). A partir de **2026-09-28** (publicação no GitHub), o histórico do git passa a ser a fonte de verdade.

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
