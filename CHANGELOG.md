# Changelog

Todas as mudanças relevantes do meta-framework **ZenithCode OS** são registradas aqui.

O versionamento segue a política própria do framework — **SemVer Constitucional**, definida em [`alinhamento/00_NUCLEO_Z2A_E_GECON.md`](alinhamento/00_NUCLEO_Z2A_E_GECON.md#política-de-versionamento-do-os-v41):

- **Patch** (ex.: V4.0 → V4.1) — refino que não quebra contratos existentes.
- **Minor** (ex.: V4.x → V4.x+1) — nova capacidade retrocompatível.
- **Major** (ex.: V4 → V5) — muda o Kernel ou um contrato de fronteira; exclusivo da Emenda Constitucional anual.
- Atualizar um **satélite** isoladamente não incrementa a versão do OS (Princípio Kernel & Plugins).

> As entradas de V2.5 a V4.1 abaixo foram **reconstruídas a partir do próprio acervo** (que é anterior a este repositório). A partir de **2026-09-28** (publicação no GitHub), o histórico do git passa a ser a fonte de verdade.

## [Não-canônico] Reforços em avaliação (R1–R6)
Propostas em avaliação, ainda **não** promovidas a canon — regra R6: *"nada sobe a canon sem evidência"*. Ver [`alinhamento/_REFORCOS_E_MELHORIAS/00_INDICE_REFORCOS.md`](alinhamento/_REFORCOS_E_MELHORIAS/00_INDICE_REFORCOS.md).

## [4.1] — patch
- Calibração Simétrica.
- Anti-farming de CNF Forense.
- Consolidação do acervo em 1 documento canônico por satélite (base V3.9 + adendos), publicada neste repositório.

## [4.0] — minor · "sela o ciclo"
- Protocolo de Override Fiduciário (Assinatura Dupla do arquiteto + débito automático de ~40% do Error Budget no Árgus + Quarentena de Suporte no DK-Ops).
- Expansão Cirúrgica — pedido de headcount justificado por telemetria (Árgus/Quíron), não por "achismo".
- Protocolo de Resgate de Esquadrão.

## [3.9] — base · "matematicamente fechada"
Consolidação de todas as supersessões V2.5 → V3.9 (detalhe completo em [`alinhamento/00_MAPA_DE_SUPERSESSAO.md`](alinhamento/00_MAPA_DE_SUPERSESSAO.md)). Principais:
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
