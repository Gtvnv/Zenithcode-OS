---
documento: Núcleo — Z2A (Kernel) + GECON (Motor Econômico)
camada: 0 (Kernel) — NÃO é satélite
status: canônico V3.9
---

# ⚙️ O NÚCLEO — Z2A + GECON

> Os 14 satélites são **plugins**. Este documento descreve o **Kernel** que todos eles assumem. Modelo oficial: **Kernel & Plugins** — o Núcleo SDx/Z2A contém as leis universais; cada satélite é um manual de expansão acoplável. Atualiza-se um satélite sem tocar o núcleo (Versionamento Seguro).

## Z2A (Zenith to Aether) — Constituição Arquitetural

- **Papel:** meta-framework supremo, Camada 0 inegociável. É a "Constituição do software".
- **Pilares técnicos:** Clean Architecture; Arquitetura Hexagonal (Ports & Adapters); DDD; **Regra da Subserviência** (Core Domain isolado, dependências apontam para dentro).
- **Ciclo de trabalho:** **T.D.E.** (Think → Document → Execute) — inegociável, sem Fast-Track por senioridade. Emergência usa **T.E.D.** (Think → Execute → Document, com PR de dívida na sprint seguinte).
- **Soberania Tecnológica:** anti-Vendor-Lock-in (core cripto-isolado, agnóstico de nuvem); OmniShift na borda (interop gRPC/Protobuf, conversão assíncrona).
- **Cultura Blameless (Axioma da Inocência Operacional):** *"A culpa é do martelo."* O indivíduo nunca é punido moralmente; o Post-Mortem pergunta "por que o Themis não barrou? por que o DK-Ops não isolou o blast radius?". Erro humano = bug na governança. (A malícia/Insider Threat, porém, é punida — ver UEBA no Themis/Quíron.)
- **Inversão de Conway:** a arquitetura do software dita o comportamento da holding; o humano é Arquiteto Livre e delega a "crueldade" da gestão à máquina.
- **Onboarding (Revelação Progressiva):** Tríade essencial do Dia 1 = **Z2A + DK-Ops + Catharsis**. Frameworks de nicho entram Just-in-Time.

## A Razão de Existir (vínculo com o TCC)

O sistema inteiro é a solução de engenharia para o problema diagnosticado no artigo acadêmico **"A Dissonância Estrutural entre o Perfil Profissional Exigido pelo Mercado de TI e a Formação Formal"** (Gustavo Ventura Nery Vianna). O TCC identifica as patologias (pedagogia da superficialidade, automação da ignorância, inflação de senioridade, code bloat, monocultura de software, falência técnica, Q-Day, riscos Therac-25/CrowdStrike/Log4j, guilhotina jurídica); cada satélite é o anticorpo de uma ou mais delas. Ver a matriz Patologia→Cura em `00_INDICE_MESTRE.md`.

## GECON — Motor Econômico (transversal a todos os satélites)

O GECON transforma cada squad em **Centro de Resultado** (não de custo). É operado pelo Árgus.

### Moedas e instrumentos
- **Z-Points** — combustível motivacional (PLR gamificada). **Nunca pago como dinheiro vivo** (evita natureza salarial/passivo trabalhista). Liquidado por agregado monetário:
  - **M1** — imediato (bounties/incidentes → PLR cash no fechamento).
  - **M2/M3** — Venture Escrow (travado em Venture Budgets; vira dividendo se for a produção).
  - **M4** — Equity/Stock Options (sênior vira sócio).
- **Error Budget** — moeda de confiabilidade. `EB = 100% − SLI(Custo)`. Se `EB ≤ 0` → bloqueia deploys/provisionamento.
- **IPC-Z (Índice de Preços ao Desenvolvedor)** — Z-Point atrelado a % do salário-base **regional**, não a moeda fiduciária. Elimina risco cambial; base do Câmbio Imutável na portabilidade geográfica.

### Leis econômicas vigentes
- **Bounty Escrow (60/40)** — risco **técnico**. O lastro da aposta é o **saldo coletivo do squad** (nunca o saldo pessoal do indivíduo). Parâmetros: teto de aposta 15–20% do saldo (40% proteção); multiplicador 5–10x no sucesso (60% instigação); reembolso 50% por "Falha Valiosa" com Post-Mortem; cooldown de 30 dias após 2 falhas no trimestre. **Quem decide e assina a aposta é o Tech Leader (Guiar)** — ver Cadeia de Custódia do Risco abaixo.
- **Cadeia de Custódia do Risco (T2.10) — quem pode apostar:** esta é a regra que dissolve qualquer ambiguidade sobre "o time apostar".
  1. **Dev = radar:** apenas marca a tag `#VentureRisk` no T.D.E.; **zero acesso ao painel de apostas** (Muro de Berlim Financeiro / "Fim do DEV Trader"). Vê só *previsibilidade* (Z-Points esperados por foco/complexidade), nunca a roleta.
  2. **Arquiteto / ELOS / ORION = auditoria de banda cognitiva:** pode **vetar** a aposta por exaustão do time.
  3. **Tech Leader (Guiar) = única "Chave Fiduciária":** assina o Smart Contract de Venture Risk **em nome do squad**. É o único papel que "aposta".
  4. **Holding / Prometeu:** apostas acima do Cap entram em *delay* de 12h para veto.
  - **Gamificação Invisível (V3.8):** não há roleta na UI; o **Árgus arbitra o 60/40 nos bastidores**; a interface mostra "Fator de Impulso 10x / Risco Blindado", não "aposta/perda".
- **Moonshot Tier** — risco de **mercado**: a holding absorve 100% do risco (Venture Budget global do T.E.T.O.). Não há "pele em jogo" do squad nem do dev.
- **Halving Algorítmico** — deflação programada: problema já dominado paga menos com o tempo (bug ano 1 = 1000 Z-Points → ano 3 = 100). Deflaciona o *preço da tarefa*, não o valor do Z-Point.
- **Multiplicador Coletivo (Morte do Lobo Solitário)** — Z-Points recompensam sinergia; "paga mais para quem constrói pontes do que muros".
- **Liquidez Gênesis** — Banco Central do GECON: Venture Debt a custo zero para novatos/M&A (resolve cold start). ⚠️ Restrição (V3.7, Trava Subprime): NASCER só pode usá-la em **risco técnico**, nunca em Moonshot de mercado.
- **Falência Técnica Saudável** (V3.4) — reabilitação de dívida: (A) perdão 100% documentando 3 lições no Banco de Estudos; (B) Multiplicador Reverso (manutenção abate dívida em dobro).
- **Telemetria GECON** ≠ Z-Points: a telemetria é **radar de gestão** (mede fluxo de capital/gargalos, decide headcount/realocação). *"Medir = iluminar, não punir."*

### Modelo de Carteiras (resolve o atrito CNF × coletivo)

O GECON opera **três carteiras distintas e não-conversíveis** entre si. Confundi-las é a origem da maioria das ambiguidades do sistema:

| Carteira | Titular | Natureza | Para que serve | Conversível? |
|----------|---------|----------|----------------|--------------|
| **Z-Points** | **Squad** (coletiva) | Liquidez / combustível | PLR, bounties, apostas (Bounty Escrow). Liquida em M1–M4. | Vira cash/equity (M1–M4); **não** vira CNF |
| **Error Budget** | **Squad** (coletiva) | Confiabilidade | Orçamento de risco operacional; `≤0` bloqueia deploy. | Não — é consumível técnico |
| **CNF** (Commit Não Fungível) | **Indivíduo** | Reputação / Capital Político | Lastro de **ascensão** (Orion/Zenitar) e **poder de voto** nas emendas. | **Inegociável** — não se compra com Z-Points |

- **Regra que dissolve a tensão "mercenário × mentor":** o **CNF não entra no Multiplicador Coletivo** (que mexe só em Z-Points). Ou seja, o brilho técnico paga **Z-Points** (liquidez), mas o que promove e dá **poder político** é o **CNF** (mentoria/estrutura/forense). Um "mercenário brilhante" acumula liquidez, mas **não ascende** sem CNF. *"Dinheiro compra equity; reputação compra poder."*
- O **Capital Político Criptografado** = saldo de CNF: converte-se em peso de voto/veto na Emenda Constitucional anual e no Quórum Cego (Júri de Pares).

#### Anti-farming de CNF Forense (V4.1)
O CNF Forense (o mais valioso) vem de Post-Mortems "de alta relevância pedagógica". Sem guarda, isso convida à fraude:
- **Síndrome de Munchausen (incidente fabricado p/ colher reputação):** a EVELYN correlaciona o autor do incidente com o autor do Post-Mortem; **causar e "heroicamente resolver" o próprio incêndio não gera CNF** (cruza com a UEBA — pode virar sinal de malícia). O CNF Forense premia quem cura a falha **alheia ou sistêmica**, não a autoinfligida.
- **Cherry-picking no Mercado de Mercenários:** o valor do CNF é proporcional à **dificuldade real** da dívida (medida pelo Efesto/Baseline Histórico), não ao número de bounties. Pegar 10 refatorações triviais vale menos que 1 desacoplamento crítico.
- **Validação humana final:** todo CNF Forense exige homologação de um **Zenitar** (não só da IA), fechando o loop contra gaming algorítmico.

### Z-Points no offboarding (saída de membro)

Como a carteira de Z-Points e as apostas (Bounty Escrow) pertencem ao **squad**, e não ao indivíduo:

- **Aposta em andamento:** permanece **integralmente com o squad**. Quem sai **não "saca"** a fatia de uma aposta em curso — não há pele individual em jogo (o lastro sempre foi coletivo).
- **Saída honrosa (Protocolo Valhalla):** liquida apenas os Z-Points **já consolidados** do indivíduo (M3/M4 em vesting) via recompra com deságio; o Capital Político (CNF) vira **"Monumento Digital" inerte** (não transferível). Código que roda anos sem falha pode gerar Royalties Residuais (Legacy Escrow).
- **Capital Político no offboarding (V4.1, anti-dinastia):** o peso de voto do veterano que sai **evapora** — não é herdável nem "legável" a um protegido (evita feudos/dinastias). O legado dele permanece como **reputação histórica imutável** (Monumento), mas **poder ativo exige presença ativa**: quem quiser herdar influência precisa **forjar os próprios CNFs**. *"Reputação é histórico; poder é presente."*
- **Saída desonrosa (Protocolo Cerberus):** credenciais → Read-Only imediato (AegisProtocol); a EVELYN faz auditoria forense retrospectiva de 30 dias (caça a Logic Bombs/backdoors); liquidação suspensa até a auditoria fechar.

## Macroarquitetura — As 3 Órbitas

1. **Tríade de Sobrevivência (Dia 1):** Z2A Core → DK-Ops → Quíron.
2. **Governança de Alta Órbita:** GECON/Halving → Themis → AegisProtocol; + Árgus, Prometeu, Atlas.
3. **Malha de Fronteira (Deep Tech):** Hefesto/Gêmeos → Sovereign Shard → Cripto Pós-Quântica.

## A Constituição dos Satélites Autônomos (SITOs) — V3.9

- Cada satélite opera como **ecossistema isolado** (membrana de fronteira). Falha não propaga (não compartilham runtime).
- **Lei da Complexidade Conservada:** tira-se complexidade do Micro (código/DDD, livre) e empurra-se para o Macro (contratos de fronteira). *"Anárquico no micro, constitucional no macro."*
- **Rigidez de Fronteira:** a IA central não arbitra a lógica interna de um SITO; controla apenas o **Schema de Eventos** na fronteira (Truth-Layer/Cadeia de Custódia).
- **Autonomia dentro de Trilhos:** 3 trilhos homologados têm custo fiduciário zero; fora deles, o satélite paga o ônus operacional local.
- **Contrato de Degradação na Fronteira (V4.1):** SITOs não compartilham runtime, mas se comunicam por eventos — então a falha de um *provedor* pode esfomear *consumidores* a jusante. Regra: todo Schema de Eventos da fronteira declara um **comportamento de degradação** (timeout + fallback/cache/valor-padrão) que o consumidor adota se o provedor estiver indisponível **ou marcado em Quarentena de Override Fiduciário**. Um serviço em quarentena **anuncia seu estado degradado na fronteira**; os consumidores degradam graciosamente em vez de quebrar em cascata. A membrana isola o incêndio; o Contrato de Degradação impede a "fome" colateral.
- **Emenda Constitucional de Arquitetura:** 1x/ano (Aetherium Summit) o conselho + arquitetos podem alterar o núcleo (rigidez tática no curto prazo, fluidez evolutiva no longo).

## Montagem Modular sob Demanda (o Z2A se adapta)

O Z2A **não é um pacote monolítico "tudo ou nada"** — ele é **montado conforme a necessidade** (mecanismo: a *Matriz de Gravidade Z2A*, Camada 0 *Required* + Camada 1 *If-This-Then-That*, estilo gerenciador de pacotes).

- **Camada 0 (inegociável):** Z2A (cultura/arquitetura) + Themis (segurança) + Árgus (orçamento). Todo mundo herda.
- **Camada 1 (sob demanda):** a empresa **escolhe** os satélites que a dor dela justifica. Exemplo real: *Núcleo de Cultura (Quíron) + Logística (Hermes) + Hardware (Hefesto)* — e **deixa os demais domínios sob controle próprio** (ou terceirizados, se optar). Não se adota Prometeu, Apolo ou Oráculo "porque existem"; adota-se porque há um gatilho real.
- **Adoção mínima viável = ZenithCode Lite** (`_REFORCOS/R1`): 6 regras determinísticas, sem mitologia/economia/IA, como cunha de entrada.

## Quando NÃO adotar (fronteira de aplicabilidade — honestidade obrigatória)

Um framework que não diz **onde não serve** convida o ataque "one-size-fits-all". O Z2A é **veneno** ou **overhead injustificado** nestes contextos:

- **Startup pré-PMF / em busca de product-market fit:** precisa de **velocidade e descoberta**, não de governança. O rigor mataria a janela. (A condição *negativa* da simbiose humano-IA: onde time-to-market domina e o custo do defeito é baixo, o gating **não** compensa.)
- **Times muito pequenos (2–5 pessoas):** o overhead de operar a maquinaria esmaga o benefício.
- **Protótipos / PoCs / projetos descartáveis:** governança de longo prazo em código que vai morrer é desperdício.
- **Organizações sem massa crítica** para operar IA/telemetria/plataforma (custo fixo alto demais).
- **Culturas que não toleram o rigor/onboarding:** não force — o filtro imunológico rejeita o próprio órgão.

> **Regra:** onde não se aplica o todo, aplica-se **só a Camada 0 + Lite**, ou **nada**. Adoção honesta > adoção universal.

## Política de Versionamento do OS (V4.1)

O próprio Meta-Framework é versionado com semântica explícita (SemVer Constitucional), para distinguir um ajuste fino de uma mudança de paradigma:

- **Patch (V4.0 → V4.1):** refino que **não quebra contratos** existentes (ex.: Calibração Simétrica, Anti-farming de CNF). Pode entrar **a qualquer momento**, aprovado pelo Conselho + arquitetos.
- **Minor (V4.x → V4.x+1):** nova capacidade **retrocompatível** (ex.: Protocolo de Resgate de Esquadrão). Entra em janelas planejadas.
- **Major (V4 → V5):** mudança que **altera o Kernel** ou um contrato de fronteira (quebra compatibilidade). **Exclusivo da Emenda Constitucional anual** (Aetherium Summit), sob Multisig C-Level + Arquitetos. Rigidez tática no curto prazo, fluidez evolutiva no longo.
- **Princípio Kernel & Plugins:** atualizar um **satélite** (plugin) não muda a versão do OS; só mudanças no **núcleo/contratos** incrementam a versão global. Cada satélite tem seu próprio versionamento interno (Versionamento Seguro).

## Taxonomia de Documentos (Tiers)

- **T0** Manifesto Base (todos, Dia 1) · **T1** Tríade de Sobrevivência (dev/NASCER) · **T2** Governança de Alta Órbita (Tech Lead/Gestão) · **T3** Malha de Fronteira (C-Level/Zenitar/Deep Tech).
- Nome de arquivo: `[TIER.ÍNDICE] - [Ação Literal] (Nome Mitológico)`. "Literal primeiro, mitológico depois."
- Frontmatter YAML: `Nível_Acesso`, `Gatilho_Operacional`, `Domínio_Relacionado`.
