---
documento: Índice dos Reforços e Melhorias
proposito: transformar a Crítica Adversarial (99) em planos de ação
status: estudo (não-canônico) — laboratório de evolução do sistema
---

# 🧪 REFORÇOS & MELHORIAS — do ataque ao antídoto

> Esta subpasta pega cada ferida exposta em `99_CRITICA_ADVERSARIAL.md` e a converte em um **plano de reforço concreto, testável e com trade-offs declarados**. Não é doutrina: é o laboratório. O que aqui se provar, sobe para o acervo canônico; o que falhar, é descartado com honra.

## Princípio-mãe destes documentos
*"Um sistema só fica robusto quando sobrevive ao próprio ceticismo."* Cada reforço inclui **como saber se funcionou** — métrica, experimento e critério de morte.

## Mapa dos reforços

| # | Reforço | Ataques que neutraliza | Tese em uma frase |
|---|---------|------------------------|-------------------|
| **R1** | [ZenithCode Lite](R1_ZENITHCODE_LITE.md) | 1, 2, 3, 11 | Prove o valor com 6 regras sem mitologia antes de cobrar a complexidade inteira. |
| **R2** | [Mercado no Kernel](R2_MERCADO_NO_KERNEL.md) | Golpe Profundo | Cliente e validação viram o Pilar Zero — não satélite. |
| **R3** | [Descentralizar a EVELYN](R3_DESCENTRALIZAR_EVELYN.md) | 9, 10 | O sistema precisa funcionar bem **sem** IA, por design — não só no estado Ícaro. |
| **R4** | [Auditoria do Panóptico](R4_AUDITORIA_DO_PANOPTICO.md) | 6, 12 | Vigiar artefatos e sistemas, nunca corpos e teclas. Consentimento > coerção. |
| **R5** | [Abrir a Oligarquia](R5_ABRIR_A_OLIGARQUIA.md) | 5 | Poder (CNF) que não decai vira casta; renovação forçada mantém o sangue novo. |
| **R6** | [Honestidade Epistêmica](R6_HONESTIDADE_EPISTEMICA.md) | 2 | Declare o que **provaria o sistema errado** — e teste contra um grupo de controle. |

## Ordem sugerida de execução
1. **R6 primeiro** (define como medir tudo).
2. **R1** (o piloto mínimo, instrumentado pelo R6).
3. **R2 e R4** em paralelo no piloto (mercado + ética desde o início).
4. **R3 e R5** quando o piloto escalar para 2+ squads.

## Piloto executável (o kit para rodar)
- [`../_PILOTO/00_PROTOCOLO_DOGFOOD.md`](../_PILOTO/00_PROTOCOLO_DOGFOOD.md) — protocolo de piloto solo (n=1, série temporal interrompida: baseline → gates → tratamento) + kit em `_PILOTO/kit/` (ArchUnit, GitHub Actions, checagem de T.D.E., lead-time, planilha de métricas). É a execução concreta do R1/R6.

## Estudos estratégicos (complementares)
- [Análise de Mercado e Aplicação](ANALISE_DE_MERCADO_E_APLICACAO.md) — o sistema faz sentido? quem precisa? quem deveria se preocupar? + a cunha de posicionamento (governança de engenharia para a era da IA em software regulado).
- [Recorte de Tese — do Z2A ao Objeto Científico](TESE_RECORTE_DE_PESQUISA.md) — como transformar o meta-framework em uma contribuição de Doutorado falseável (recorte "AI-gated SDLC"), o estado da arte, o desenho experimental e a sequência de publicações do Mestrado ao PhD.
- [Protocolo do Estudo-Piloto (1º paper)](ESTUDO_PILOTO_MESTRADO.md) — quase-experimento within-subjects pré-registrado: hipóteses, métricas operacionais, análise estatística, ética e cronograma para o primeiro artigo do Mestrado.
- [Abordagem a Orientador (PPGCC/DCC-UFMG)](EMAIL_PROPOSTA_ORIENTACAO.md) — como achar o orientador certo, e-mail pronto (curto), proposta de 1 página e os erros que matam o contato.
- [Panorama Mestrado → Doutorado](PANORAMA_MESTRADO_DOUTORADO.md) — reconcilia "Z2A produto" × "Z2A objeto científico" (Quadrante de Pasteur / Design Science), o flywheel, a linha do tempo e o status-foto de hoje.
- [**Proposta Formal — Mestrado e Doutorado**](PROPOSTA_MESTRADO_E_DOUTORADO.md) — **o guia**: as duas propostas formalizadas (título, RQ, objetivos, contribuição, método, aderência ao programa, ingresso), a ponte entre elas, roadmap, plano de publicações e checklist.
- [Leis & Heurísticas — Kit Anti-Ataque](LEIS_E_HEURISTICAS.md) — as leis (Segal, Brandolini, Cunningham, Steelman, Trade-off/Consequências Não Intencionais, Accountability, Gilbert) com **fonte verificada**, aplicação refinada e vetor de gaming. **Camada de produto** — não é evidência de tese.
- [Risco Jurídico (além do R4)](RISCO_JURIDICO.md) — mapa da superfície legal (Duress PIN, biometria sensível, Z-Points×salário, dados transfronteiriços) como **gates com parecer humano**. Não é parecer jurídico.
- [Revisão de IP e Nomes](REVISAO_IP_E_NOMES.md) — separa codinome-descartável de ativo-defensável; sem patente INPI o framework está desprotegido; o que registrar primeiro (marca > código > segredo). Não é parecer de PI.
