---
satelite: E.V.E.L.Y.N.
dominio: IA Central + Edge
camada: transversal (Cockpit T1 + Deep Tech T3)
status: canônico V3.9
Nível_Acesso: Base
Gatilho_Operacional: "#CodeReview #Deploy #IncidenteIA"
Domínio_Relacionado: "#IA #SLM #AISecOps"
---

# 🧠 E.V.E.L.Y.N. — A Inteligência Central

## 1. Identidade
O "cérebro" do ecossistema: copiloto na IDE, auditor comportamental, motor de auto-healing. Roda **SLMs locais** (não LLMs genéricos) destilados na base de código própria; tem módulo **Edge** (Processamento em Névoa, Air-Gap, sync assíncrona).

> 🧠 **Modelo federado, não cérebro único (ver `_REFORCOS/R3`):** em vez de uma IA onisciente, treinam-se **modelos especializados por domínio** (Financeiro, Edge, Copiloto, Segurança), cada um consumindo **apenas a fatia da base marcada com seu NOME + TAG de domínio** — privilégio mínimo de dados, raio de explosão reduzido e treino auditável. ⚠️ **Viabilidade honesta:** nem toda tarefa aqui é factível hoje (copiloto/anomalia = ✅; validar CNF/relatório autônomo de contratação = 🔴 especulativo). Tabela completa em `_REFORCOS/R3`.

## 2. Razão de Existir (vínculo TCC)
É o instrumento que torna a *automação da ignorância* impossível: a IA é exoesqueleto, nunca muleta. Também ataca *câmara de eco algorítmica* (IA testando IA) via Shadow AI e Baseline de Sanidade.

## 3. Leis da Física da IA (princípio fundante)
A IA é um **componente probabilístico dentro de um motor determinístico**, não mágica:
1. **Quarentena Probabilística / Regra da Subserviência:** a EVELYN **não tem commit direto**; tudo é "Sugestão de Risco Máximo" que passa pelo Teste do Aço (Sigma/compilador/testes). Alucinou → o build quebra.
2. **IA Auditável:** assinatura sintética com `[Modelo / Temperatura / Seed]`; Replay Perfeito para auditoria forense.
3. **Degradação Graciosa ("Teste do Apagão"):** a IA é Plano de Controle (turbo), **não** caminho crítico (Plano de Dados). Faturamento/NF/login seguem 100% sem GPU. *"A IA é o turbo, não o combustível."*
4. **SLA intencional de 95%** para o dev (Best Effort): "apagões de IA" controlados forçam codar manual (anti-atrofia).

## 4. Regras Vigentes Canônicas (V3.9)

### Copiloto & Fluxo de trabalho
- **Ingestão Passiva de Contexto:** copilot reverso que lê código/PR/diagramas e **pré-preenche o T.D.E.**; o dev valida + assina (atrito ~0, telemetria 100%).
- **Auto-Mortem:** a EVELYN redige a "burocracia do trauma" (logs/latência); o humano é Editor Sênior (entra só com o racional de negócio). Blameless vira alívio.
- **RAG Fractal:** banco vetorial (código/DDD/post-mortems) contra a "Amnésia Algorítmica" da janela de contexto do SLM.
- **Relatório de Viabilidade de Escala (V4.0):** sob demanda do gestor (ORION), a EVELYN cruza orçamento (Árgus) × Dívida Humana (Quíron) e devolve a **Matriz de Trade-off de contratação** (Cenário PJ Sênior vs Cenário CLT Base). A IA calcula o custo/projeção; **o humano decide o perfil**. Base salarial: **IPC-Z** + fator de aquecimento de mercado opcional para gargalos críticos (T-08).
- **Edital como Código (V4.0):** a EVELYN analisa o *diff* e a causa exata que estourou o Error Budget local e gera o edital de contratação **mirando o perfil exato do gargalo** (ex.: falha em orquestração de banco → rito de seleção focado nesse domínio). Ver `00_PROTOCOLO_OVERRIDE_E_RESGATE.md`.

### Auto-healing & Observabilidade
- **Filtro de Morfeu** ("Chefe de Gabinete"): interceptação centralizada (nenhum módulo notifica o dev direto); auto-healing silencioso; agrupamento semântico (400 alertas → 1 ping acionável). *"Nenhuma notícia é boa notícia."*
- **Despertar de Cronos:** toda cura noturna gera um PR reverso automatizado na manhã seguinte (humano audita; Git volta a ser a fonte da verdade — anti Infrastructure Drift).
- **Telemetria Holográfica:** Distributed Tracing obrigatório; Correlation ID em todo evento; a EVELYN desenha o mapa visual da falha na IDE.

### Segurança da própria IA (AI SecOps)
- **Sanatório Algorítmico / Shadow AI:** a IA não aprende em produção; um modelo "Sombra" tenta hackeá-la toda noite. **Baseline de Sanidade:** 10.000 ataques imutáveis; se a atualização falhar em barrar 1 que barrava ontem, o update é **abortado**.
- **Deploy Blue/Green Cognitivo:** modelo "Green" em Shadow Mode por 2 semanas; vira chave só se a alucinação < 1%.
- **Coliseu de EVELYN (Forja Adversarial):** Red Team interno + bounties por Zero-Day contra a EVELYN em staging; ataque bem-sucedido alimenta os weights + Baseline.
- **Câmara de Vácuo Semântica (anti Prompt Injection):** arquitetura multi-agente — um agente lê código determinístico; outro, isolado e **sem permissão de deploy**, lê a linguagem natural. Tentativa de injection derruba o processo + multa de Z-Points.
- **Protocolo Mnemósine (Machine Unlearning):** se um override aprendido se revela um zero-day, a Eng. de IA **isola os weights** daquele padrão e força o "esquecimento matemático" sem descartar o treino do ano.
- **Polinização Cruzada (anti Síndrome de Galápagos/Narciso):** o Data Team injeta trimestralmente código SOTA open-source no Sanatório; e a EVELYN encaminha 5% dos PRs de rotina para auditoria por um SITO de **outro continente** (anti-balcanização).

### Resiliência física (Edge)
- **Bypass Vertical Automatizado** (Timeout Rule: SITIO → VIGA → PILAR, vai direto à nuvem nacional em timeout); **Z2A Mesh Network** (rádio entre SITIOs em blackout); **Túnel Cego** (vizinho roteia logs sem decriptar).

## 5. Integrações
Manifesta-se via **AegisProtocol** (bloqueio retrospectivo) e **Sigma** (Teste do Aço); governada pelo **Oráculo** (Data Lineage, treina só com dado curado — Intelligence-Layer); alimentada pelo **Hefesto** (Edge); opera o **GECON** com o Árgus.

## 6. Supersessões (pontuação)
- ✅ **VIGENTE:** todo o arcabouço Deep Tech (V3.0 Parte VI) permanece.
- ⬆️ **EVOLUÇÃO de Onboarding:** Dialeto Bifásico (V2.6) → Revelação Progressiva (V3.8) → a EVELYN exibe a função pragmática em paralelo ao nome mítico; mitologia desbloqueada como troféu ao virar ORION.
