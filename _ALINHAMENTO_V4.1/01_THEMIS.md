---
satelite: Themis
dominio: Segurança & Compliance
manifestacao_fisica: AegisProtocol (Módulo Alpha)
camada: Governança de Alta Órbita (T2) + Malha de Fronteira (T3)
status: canônico V3.9
Nível_Acesso: Liderança
Gatilho_Operacional: "#SecurityAudit #Incidente #Deploy"
Domínio_Relacionado: "#ZeroTrust #AegisProtocol #Sigma #LGPD"
---

# ⚖️ THEMIS — Segurança & Compliance

## 1. Identidade
Satélite de blindagem **legal e cibernética**. Lema: *"Toda ação auditável, toda identidade verificada, toda falha contida."* Protege juridicamente o engenheiro que assina a responsabilidade técnica (ART/CREA). Sua manifestação física/runtime é o **AegisProtocol** (middleware IAM/Zero-Trust, Sidecar, logs WORM, unidade R.E.D.E.).

> ⚠️ **Regra de nomenclatura (selada, T-06):** **AegisProtocol** = segurança (manifestação do Themis). **Égide** = ITSM/suporte (outro satélite). São entidades distintas apesar dos nomes parecidos — **proibido** usar "Égide" em contexto de segurança ou o termo "Égide de Segurança". Para IAM/Zero-Trust, sempre "AegisProtocol".

## 2. Razão de Existir (vínculo TCC)
Cura as patologias: *Guilhotina Jurídica / bode expiatório* (responsabilidade objetiva CDC + Código Civil + Art. 18 CP), *veneno jurídico de IP* (licenças GPL virais), *Q-Day* (quebra da criptografia), e a abdicação de *Security by Design*. A ART documentada é o "único escudo forense viável".

## 3. Os 4 Módulos (estrutura-base, vigente)
- **Alpha — Guardião (AegisProtocol):** Identidade-como-Perímetro; Zero-Trust; tokens curtos + Context-Aware; ABAC cruzando registro CREA ativo; Sidecar IAM com cache local (latência de autorização ~zero).
- **Ômega — Cofre Jurídico:** auditoria/forense; Logs Imutáveis WORM (nem DBA apaga); Rastreabilidade Criptográfica (hashes encadeados); dossiê pericial. **Registra também a Assinatura Dupla do Override Fiduciário (V4.0):** quando a gestão força um lançamento, o arquiteto técnico (Guiar/Iluminar/Edificar/Zenitar) assina aqui um **Termo de Isenção de Responsabilidade** na Truth-Layer ("avisei do risco; o passivo é do negócio"). Ver `00_PROTOCOLO_OVERRIDE_E_RESGATE.md`.
- **Sigma — Juiz do Ciclo de Vida (SAST/Dependency Firewall):** o pipeline aborta deploy com falha SAST/DAST, sem opção de ignorar; anti-Drift de configuração.
- **Delta — Fronteira Cibernética:** HW/IoT/M2M; autenticação de borda (X.509 + mTLS); Fail-Safes físicos. Compartilhado com Hefesto.

## 4. Regras Vigentes Canônicas (V3.9)

### Identidade & Acesso
- **AegisProtocol** Sidecar Zero-Trust com validação ABAC/RBAC local no pod.
- **Break-Glass Protocol** (V2.6): token efêmero (nível Iluminar/Zenitar), janela rígida de 4h suspendendo travas; **Multisig C-Level em 24h** senão revoga + reverte + bloqueia + **auditoria de segurança forense**. *(Nota: o Tribunal da Forja é carreira-só; violação de Break-Glass é evento de segurança, não de carreira.)*
  - **Imunidade Tática** (correção V3.x): se o C-Level não atinge o quórum em 24h, o rollback técnico ocorre **mas a penalidade GECON recai sobre os DIRETORES** que perderam o prazo, não sobre o engenheiro. *"A inércia executiva sangra no bolso do executivo."*
  - **Quórum de Contingência Horizontal:** se o T.E.T.O. estiver indisponível em 20h, o AegisProtocol aceita 3 Zenitar de PILARES diferentes. *"Os generais assumem na ausência dos deuses."*
- **Código de Coação / Duress PIN (Wrench Attack):** token com 2 PINs — o secundário "aprova" na tela (engana o agressor) mas dispara P1 silencioso (isola tráfego, revoga chaves de DB, honeypot, aciona segurança).
- **UEBA (Limiar do Blameless):** baseline criptográfico de comportamento; desvio extremo (ex.: baixar 50 GB de repo de clientes às 3h de domingo) → **Quarentena Silenciosa** + chamado fora de banda para o Board Jurídico/Missão Escudo. Regra: a máquina **absorve o erro técnico honesto** mas **pune a malícia/Insider Threat**. ⚠️ *Ponto sob revisão (R4, `_REFORCOS`): confinar a UEBA estritamente à **segurança de credenciais** (detecção de invasão), nunca a métrica de performance ou insumo de RH; e jamais como evidência única para ação punitiva.*
  - **Check de Sanidade Transparente** (V3.1, refino): anomalia → desafio ("assine com token Elo S em 60s"), não quarentena cega por falso-positivo.
  - **Habeas Corpus Algorítmico** (Fluxo 2): o dev pode contestar; auditoria de Arquiteto Sênior em ≤15 min; falso-positivo restaura acesso e **retreina a EVELYN** para aprender a exceção.

### Compliance & Forense
- **Escudo do Themis** `[sast-pipeline-shield]` — blindagem SAST preventiva (✅ renomeado de "Guilhotina do Themis", ver §6).
- **Compliance as Code (Vacinação Sistêmica, V2.6):** Incidente → Post-Mortem Blameless → **Anticorpo** (PR com regra SAST no Sigma ou restrição IaC no DK-Ops) → Vacinação global na Z-Forge. O incidente P1 **não fecha** sem o PR de anticorpo fundido.
  - **Economia do Anticorpo:** a equipe de produto só mitiga e assina o T.D.E.; o sistema converte em "Bounty de Vacinação" que a Missão Escudo/guilda de arquitetura assume. *"Carpinteiro na madeira, ferreiro no metal."* A linha de frente não vira SecOps.
- **Themis Preditivo (Falácia do Panóptico):** simula Blast Radius no pipeline ("isso vai explodir a base"), não pune. Líder (Iluminar/Zenitar) pode forçar Override → deploy liberado + log imutável de responsabilização. *"A máquina faz o freio, o humano dirige."*
- **Injeção Legal Contínua / DPO as Code:** lei nova (ex.: EU AI Act) **não é incidente P1**; vira um Bounty Escrow regulatório que injeta a regra no Themis sem parar o produto.
- **Crypto-Shredding** (binômio com Oráculo): destrói a chave KMS → o dado vira ruído matemático; atende o Direito ao Esquecimento (LGPD) sem quebrar a imutabilidade dos logs.

### Deep Tech / Fronteira
- **Criptografia Líquida / Agilidade Criptográfica (Q-Day):** o módulo criptográfico é um plugin substituível a quente; algoritmos PQC (NIST). Rotaciona a matemática da holding sem reescrever o ERP.
- **Cisne Negro Coordenado:** plantão humano só é acionado em ataque multissetorial (≥3 pilares violados em geografias diferentes); EVELYN correlaciona IoT + Oráculo + ERP para gatilho preditivo.
- **Crystal Forge / Alfândega de Código (com DK-Ops):** download direto de lib pública proibido; 3 esteiras — E1 Confiança Estatística (auto-aprova), E2 Quarentena Ativa 72h (DAST), E3 Veto da Guilda (Missão Escudo, vira Bounty de Auditoria).

## 5. Integrações
- **Oráculo:** binômio Crypto-Shredding + cadeia de custódia (toda decisão vira log Append-Only com hashes).
- **DK-Ops:** anticorpos como restrição IaC; Disjuntor de Isolamento.
- **Atlas:** recebe "Alertas de Exposição Crítica"; Follow-the-Sun (rodízio do bastão de soberania a cada 8h).
- **Quíron:** UEBA opera na fronteira do Blameless.
- **Hefesto:** Módulo Delta (fail-safes físicos, gêmeos digitais).

## 6. Supersessões (pontuação)
- ⬆️ **EVOLUÇÃO:** *"Guilhotina do Themis"* → ✅ **Escudo do Themis** (V2.8). Era execução; virou blindagem preventiva.
- ⬆️ **EVOLUÇÃO:** *"Engenheiros Letais"* → **Arquitetos Antifrágeis**; *"Autópsia/Chimera"* (p/ incidente) → **Forense Estrutural**.
- ⚠️ **Nota:** *"Guilhotina Jurídica"* permanece **válida** como conceito do mundo externo (responsabilização legal real descrita no TCC/Catharsis) — não é mecanismo punitivo interno.

## 7. Observações
- Sigma aparece tanto como "Módulo do Themis" quanto como motor autônomo de SAST/firewall de dependências nos fluxos — é o **mesmo** componente.
