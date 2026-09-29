# ZenithCode OS

![versão](https://img.shields.io/badge/vers%C3%A3o-4.1-blue)
![status](https://img.shields.io/badge/status-privado-lightgrey)
![validação](https://img.shields.io/badge/valida%C3%A7%C3%A3o-n%C3%A3o%20validado%20empiricamente-orange)

Meta-framework de arquitetura, governança e cultura para organizações de engenharia — um "sistema operacional" de regras, papéis e protocolos, estruturado como um **kernel** (Z2A + GECON) mais **14 satélites** (plugins) que cobrem segurança, FinOps, plataforma/SRE, RH sociotécnico, IA, go-to-market, governança societária, supply chain, onboarding, data mesh/LGPD e ITSM.

Este repositório é o acervo canônico do sistema: serve como **contexto de referência** para outros projetos (arquitetura, políticas, vocabulário e heurísticas), não é um projeto de código em si.

## Estrutura

Todo o conteúdo vive em [`alinhamento/`](alinhamento/). Comece pelo índice mestre:

- **[`00_INDICE_MESTRE.md`](alinhamento/00_INDICE_MESTRE.md)** — mapa de entrada, macroarquitetura (Kernel & Plugins), lista dos 14 satélites e portas de entrada por público (técnico, acadêmico, comercial).

Documentos-chave de apoio:

- [`00_NUCLEO_Z2A_E_GECON.md`](alinhamento/00_NUCLEO_Z2A_E_GECON.md) — o kernel que todos os satélites assumem, incluindo a política de versionamento do OS.
- [`00_MAPA_DE_SUPERSESSAO.md`](alinhamento/00_MAPA_DE_SUPERSESSAO.md) — regras vigentes × obsoletas.
- [`00_GLOSSARIO.md`](alinhamento/00_GLOSSARIO.md) — de-para entre codinomes mitológicos e nomes técnicos.
- [`00_MATRIZ_INTEGRACAO.md`](alinhamento/00_MATRIZ_INTEGRACAO.md) — dependências entre satélites.
- [`00_TENSOES_ABERTAS.md`](alinhamento/00_TENSOES_ABERTAS.md) / [`00_ESTADOS_OPERACIONAIS.md`](alinhamento/00_ESTADOS_OPERACIONAIS.md) — decisões em aberto e máquina de estados operacionais.
- [`99_CRITICA_ADVERSARIAL.md`](alinhamento/99_CRITICA_ADVERSARIAL.md) e [`_REFORCOS_E_MELHORIAS/`](alinhamento/_REFORCOS_E_MELHORIAS/) — red team e planos de reforço (R1–R6), não-canônicos.
- [`_PILOTO/`](alinhamento/_PILOTO/) — kit de piloto/dogfooding (métricas, gates de CI, scripts de validação).

## Versionamento

O acervo segue a política **SemVer Constitucional** própria do framework (detalhada em [`00_NUCLEO_Z2A_E_GECON.md`](alinhamento/00_NUCLEO_Z2A_E_GECON.md#política-de-versionamento-do-os-v41)): patch para refino sem quebra de contrato, minor para capacidade nova retrocompatível, major reservado à Emenda Constitucional anual.

- **Versão atual:** [`VERSION`](VERSION) → `4.1`.
- **Histórico completo:** [`CHANGELOG.md`](CHANGELOG.md).
- Cada versão publicada vira uma **tag git** (`vX.Y`) e um **[GitHub Release](../../releases)** — é esse o link estável para mandar a terceiros, não o `master` (que segue evoluindo).

### Como compartilhar uma versão específica

Este repositório é **privado**: quem for ver precisa ter acesso concedido (colaborador) na conta GitHub. Feito isso, para que o link não mude de conteúdo com o tempo, aponte para a tag em vez do branch `master`:

```
https://github.com/Gtvnv/zenithcode-os/tree/v4.1
```

em vez de

```
https://github.com/Gtvnv/zenithcode-os          (sempre mostra o mais recente)
```

## Estatuto do acervo

Este é um produto de design bem pensado, **ainda não validado empiricamente**. Números e limiares são ilustrativos (hipóteses de calibração), salvo indicação explícita de fonte. Ver detalhes no índice mestre.

## Uso

Repositório privado, mantido como fonte de contexto (arquitetura, vocabulário, heurísticas de governança) para reuso em outros projetos.
