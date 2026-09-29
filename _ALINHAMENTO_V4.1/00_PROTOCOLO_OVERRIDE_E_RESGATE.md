---
documento: Protocolo de Override Fiduciário, Expansão Cirúrgica e Resgate de Esquadrão
versao: V4.0 (sela o ciclo)
status: canônico
Nível_Acesso: Liderança
Gatilho_Operacional: "#ExceçãoDePrazo #Colapso #Headcount"
Domínio_Relacionado: "#ORION #ErrorBudget #AndonCord #CargaCognitiva"
---

# 🚦 PROTOCOLO DE OVERRIDE FIDUCIÁRIO & RESGATE DE ESQUADRÃO (V4.0)

> **Razão de existir:** a precedência técnica absoluta (a engenharia veta o negócio) ignorava a *termodinâmica do mercado* — vetar lançamentos sistematicamente em nome da pureza do código faz a empresa perder timing e quebrar. Este protocolo converte a "parede de concreto" entre negócio e técnica em uma **transação de risco com matemática financeira**. O negócio ganha liberdade; assume a fatura.

---

## 1. Override Fiduciário — "A Fatura da Imprudência"

A gestão (O.R.I.O.N.) **pode** forçar um lançamento crítico por cima do veto técnico — desde que pague o **Preço da Exceção**. Três etapas obrigatórias e encadeadas:

### Etapa 1 — Assinatura Dupla (O Escudo do Arquiteto)
- O gestor inicia a exceção, mas a interface **bloqueia a execução** até que um **arquiteto técnico (Guiar, Iluminar, Edificar ou Zenitar)** aplique sua chave criptográfica no **Módulo Ômega do Themis (Cofre Jurídico)**.
- A assinatura **não é aprovação** — é um **Termo de Isenção de Responsabilidade** gravado na **Truth-Layer**: *"Eu mapeei o risco, avisei que a arquitetura vai sangrar, e o negócio decidiu seguir. O passivo técnico não é meu."*
- Garante a auditoria de segurança *by design* sem engessar a decisão comercial. O passivo fica nominalmente com quem apertou o acelerador.

### Etapa 2 — Débito no Árgus (O Custo)
- Com as duas chaves registradas, o **Árgus** debita **imediatamente ~40% do Error Budget trimestral** do esquadrão local (*slash* automático).
- **Reincidência:** forçar o Override **2× no mesmo semestre** → o esquadrão fica **proibido de lançar qualquer feature nova** até o fim do ciclo, sendo forçado a focar **só em estabilidade**. *"A dor no bolso equaliza a pressa."*

### Etapa 3 — Quarentena de Suporte (Fim do Andon Cord)
- O **DK-Ops** aplica uma **tag de exceção** ao deploy forçado.
- O direito de acionar o **Andon Cord por Domínio** é **revogado** para aquele módulo. Se o código quebrar, a guilda **E.L.O.S. (SRE/Backend) está sistemicamente proibida de parar** para socorro emergencial.
- O gestor e a equipe local **assumem sozinhos a madrugada de debug** — *Skin in the Game* real para quem aperta o acelerador.

> **Resumo:** liberdade comercial total, desde que a gestão pague em (a) responsabilidade jurídica nominal, (b) margem de confiabilidade futura e (c) renúncia ao resgate.

### Etapa 4 — Calibração Simétrica (V4.1): a conta também volta contra o veto exagerado
O Override não pode punir só a gestão; senão a engenharia teria incentivo a vetar tudo por covardia. Por isso o sistema **mede os dois lados**:
- **Mapa de Risco obrigatório na assinatura:** ao assinar o Termo de Isenção (Etapa 1), o arquiteto registra na Truth-Layer **o que especificamente vai quebrar** (predição concreta, não "vai sangrar" genérico).
- **Janela de Observação:** o DK-Ops monitora o deploy de Override por **N dias** (ex.: 14).
  - Se **quebrar como previsto** → confirma a sabedoria do veto; nada muda (a gestão já pagou).
  - Se **sobreviver estável** (o risco previsto não se materializou) → **refund parcial do Error Budget** (ex.: devolve metade dos 40%); a previsão do arquiteto foi conservadora demais.
- **Score de Calibração do Arquiteto:** a EVELYN compara predição × realidade e mantém um índice pessoal. Arquiteto cronicamente "alarmista" (veta o que nunca quebra) ou "negligente" (libera o que explode) é calibrado via Quíron. **Recompensa o bom forecaster**, não o que grita mais alto. *"O freio precisa ser tão auditável quanto o acelerador."*

---

## 2. Gatilho de Expansão Cirúrgica — Telemetria Preditiva de Headcount

O atrito do Override deixa de ser só punição e vira **diagnóstico de capacidade**. Override recorrente = prova matemática de que a demanda superou a capacidade física do esquadrão.

- **Sinal:** cada Override + queima de Error Budget envia telemetria do **Árgus → Quíron**, que registra o estrangulamento na **Fórmula de Carga Cognitiva (Cc)**.
- **Sob demanda (não proativo):** a IA central **não** envia propostas de contratação espontâneas. O gestor (ORION) solicita formalmente à **E.V.E.L.Y.N.** um **Relatório de Viabilidade de Escala**.
- **Bússola do GECON:** se o custo acumulado (multas de nuvem + queima de Error Budget) **ultrapassar** o custo do salário de um novo dev, o sistema **autoriza a abertura da vaga** com justificativa fiduciária automática — sem o gestor precisar "implorar em PowerPoint".

### Índice de Imprudência Gerencial (V4.1) — telemetria do decisor
O lockout de 2×/semestre é **por squad**; sem isso, um gestor poderia **pulverizar Overrides entre vários squads** e nunca ser flagrado.
- **Agregação no nível ORION:** o Árgus soma os Overrides de **um mesmo gestor** em todos os squads sob sua alçada → **Índice de Imprudência Gerencial**.
- **Consequência:** índice alto não é só "pressa" — é **bug de governança** (a demanda superou a capacidade *ou* o gestor é imprudente). Entra na **avaliação do próprio ORION** (afeta CNFs/Capital Político dele), e dispara o Relatório de Viabilidade de Escala automaticamente.
- **Carga de liderança (Cc estendida):** o Quíron passa a medir a **carga cognitiva do gestor** sob pressão de Override recorrente (burnout de liderança), não só a do dev. O exoesqueleto protege quem guia, também.

### Matriz de Trade-off Preditiva (Relatório de Viabilidade de Escala)
A EVELYN cruza orçamento (Árgus) × Dívida Humana (Quíron) e devolve **cenários** — **a máquina calcula, o humano decide o perfil**:

| Cenário | Perfil | Prós | Contras / Risco |
|---------|--------|------|-----------------|
| **A — Mercenário de Elite (PJ)** | Guiar/Iluminar, 3 meses | Resolve o gargalo em ~2 sprints; não drena folha de longo prazo | Difícil achar sênior p/ contrato curto; onboarding pode comer ~15 dias do contrato |
| **B — Base Orgânica (CLT)** | Nascer/Crescer | Custo de folha menor; lealdade à guilda; moldável à cultura | Retorno líquido em 3–6 meses; exige CNFs de Mentoria dos veteranos (piora exaustão imediata) |

- **Decisão do perfil = estritamente humana (ORION).** A IA entrega a matemática fria; a escolha continua na liderança.
- **Base salarial do cálculo (selada, T-08):** **IPC-Z** regional como base, com um **fator de aquecimento de mercado** opcional aplicado só quando o gargalo é crítico/urgente.

---

## 3. Protocolo de Resgate de Esquadrão — Abordagem de 3 Frentes

Quando **Árgus** (Error Budget zerado) **+ Quíron** (Cc estrangulada) indicam **colapso operacional**, a inteligência central ativa o resgate coordenado **antes** do time quebrar. Antes de pedir headcount permanente, o gestor tem **três alavancas**:

### Frente 1 — Remanejamento Técnico Interno (Imunidade Coletiva)
- **Taxa de Solidariedade Algorítmica:** o DK-Ops aciona automaticamente domínios vizinhos saudáveis para cederem **20% da capacidade ociosa + suporte sênior** ao epicentro.
- **Mercado de Mercenários de Elite (Regra da Casa Limpa):** a dívida crítica vira **Bounty global**; seniores das **guildas E.L.O.S./A.R.C.O.** de outras tribos assumem voluntariamente a refatoração como parte do **próprio rito de carreira** — recebem **CNFs Forenses (reputação)**, **não Z-Points**. "A casa se limpa pelo altruísmo forçado pelo plano de carreira." Só pega quem está com o próprio domínio verde.

### Frente 2 — Abertura de Edital (Filtro Qualificador)
- **Edital como Código:** a EVELYN cruza o *diff* e a causa exata que estourou o Error Budget; o edital é gerado **sob demanda, mirando o perfil exato do problema** (ex.: gargalo em orquestração de banco → edital focado nesse domínio).
- **Inversão do Projeto Quimera:** o rito de **Forense Estrutural** (limpar/desacoplar repo tóxico sem IA generativa) é **movido para o processo seletivo**. Quem passa **não traz "vontade de aprender" — traz prova matemática** de que domina a técnica que o time precisa.

### Frente 3 — Temporário PJ (O "Plug-in Arquitetural")
- **Onboarding Enxuto (Fast-Track):** contrato de tiro curto **ignora a desconstrução cultural e a Abstinência Generativa do Catharsis**; passa só pelo **Gateway 2 do Odyssey (Teste de Paranoia / Zero-Trust + injeção de Clean Architecture)**.
- **Isolamento pelo Themis:** a confiança não é pessoal, é **determinística** — Themis/AegisProtocol + travas IaC do DK-Ops **confinam o acesso à "zona do incêndio"**, impedindo Infrastructure Drift ou contaminação do Core Domain. *"Entra, refatora, mata o ticket, sai; o plug-in é desativado."*

> **Sinergia (Antifragilidade):** o sistema se cura sozinho (Frente 1) → o recrutamento vira teste de aptidão (Frente 2) → a força externa age como corretor tático (Frente 3). Se as três alavancas se esgotam e o sistema "continua gritando", o **Árgus já tem o dossiê completo** para justificar a contratação permanente à diretoria, **com zero margem para contestação**.

### Taxa de Recorrência de Resgate (V4.1) — diagnóstico de causa-raiz
Um resgate é cura; **resgate crônico é sintoma**. O sistema distingue os dois:
- Se um squad aciona o Resgate **pontualmente**, é gargalo de capacidade (vira headcount).
- Se aciona **repetidamente** (alta Taxa de Recorrência de Resgate), o Quíron sinaliza que o problema **não é capacidade, é composição/liderança** (senioridade mal pareada, elemento tóxico, ou gestão imprudente) → diagnóstico para realocação/recalibração, **não** mais braços jogados no fogo. *"Adicionar gente a um time mal modelado só espalha o incêndio."*

---

## 4. Onboarding Adaptativo (Shift-Left no Recrutamento)

Consolidação das duas rotas de entrada que sustentam as Frentes 2 e 3:

| Rota | Para quem | Rito | Defesa de risco |
|------|-----------|------|------------------|
| **Fast-Track Tático** | PJ / terceirizado de curto prazo | Pula o Catharsis; só Odyssey Gateway 2 (Paranoia/Zero-Trust) | Confiança na **malha** (SAST do Sigma + IaC do DK-Ops), não na cultura |
| **Filtro Orgânico** | CLT / base (Nascer/Crescer) | Projeto Quimera + 4 Gateways do Odyssey **no processo seletivo** | Talento entra **PRONTO**: Dia 1 puxa ticket, não lê manual |

---

## 5. Pontos de integração (resumo)
- **Themis (Ômega):** registra a Assinatura Dupla / Termo de Isenção na Truth-Layer.
- **Árgus:** executa o *slash* de 40% e a Bússola do GECON (autorização de vaga).
- **DK-Ops:** tag de exceção + revogação do Andon Cord + Taxa de Solidariedade.
- **Quíron:** Carga Cognitiva (Cc) como sensor de colapso; emite CNFs Forenses do Mercado de Mercenários.
- **EVELYN:** Relatório de Viabilidade de Escala + Edital como Código.
- **Odyssey / Catharsis:** rotas de Onboarding Adaptativo.
