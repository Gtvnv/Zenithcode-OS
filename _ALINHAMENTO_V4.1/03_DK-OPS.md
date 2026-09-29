---
satelite: DK-Ops (Demo-Kratos Operations)
sinonimos: B.A.S.E.  # "DecaOps" = tradução INCORRETA (T-05), não é sinônimo
dominio: Plataforma / SRE / IDP
camada: Tríade de Sobrevivência (T1)
status: canônico V3.9
Nível_Acesso: Base
Gatilho_Operacional: "#Deploy #Incidente"
Domínio_Relacionado: "#IDP #Pulumi #SRE"
---

# 🛠️ DK-OPS — Plataforma & Sustentação de Nuvem

## 1. Identidade
**Internal Developer Platform (IDP) / Platform Engineering.** Wrapper declarativo sobre Pulumi. *Demos* (devs) + *Kratos* (nuvem) = democratização da infraestrutura. Unidade de nuvem: **B.A.S.E.** ⚠️ **"DecaOps" é tradução incorreta** (T-05) — **não** é sinônimo legítimo; corrigir onde aparecer.

## 2. Razão de Existir (vínculo TCC)
Cura: *Falência Técnica* (dívida técnica que vira buraco negro), riscos de *deploy* (Therac-25, CrowdStrike 2024 — config no kernel sem canary), *monolitos distribuídos* da inflação de senioridade, e o *Vendor Lock-in* (via IaC agnóstica).

## 3. Regras Vigentes Canônicas (V3.9)

### Estrutura técnica
- **4 Pilares:** Abstração/Portabilidade · Secure-by-Default (rede privada/cripto/IAM mínimo privilégio automáticos) · Alta Disponibilidade Integrada (LB + Auto-Scaling + Multi-AZ) · Guardrails (testes de política bloqueiam recurso que viole regra financeira/segurança).
- **Stack:** Go + Pulumi + AWS. **Níveis:** L1 Fundações/Core (redes/IAM/clusters, restrito à Plataforma) · L2 Componentes (DBs/filas/caches padronizados) · L3 App Patterns (interface do dev: Microservice/Worker/Frontend).
- **Filosofia do Martelo:** o **Carpinteiro** (Eng. de Produto, consome L3) empunha o martelo; a **Fábrica de Martelos** (Eng. de Plataforma, L1/L2) cuida do Terraform cru, Blast Radius e travas Zero-Trust. Abstração = contrato de confiança, não caixa-preta de ignorância.

### Punição de falha & ciclo de vida (núcleo da supersessão — ver §6)
- ✅ **Apoptose de Código** (V3.9, ex-"Guilhotina Algorítmica"): morte programada e saudável de código. **Escada de punição vigente:**
  1. Dívida Técnica → **Imposto** sobre Z-Points.
  2. Serviço Zumbi → **Throttling / Lombada de Latência** (estrangulamento de banda força refatoração).
  3. Falha Crítica → isolamento em **Read-Only** (preserva integridade); **Disjuntor de Isolamento** "ilha" o serviço (Circuit Breaker) se a latência > ~5s para não derrubar serviços saudáveis. **Nunca rollback cego destrutivo.**
- **Andon Cord por Domínio** (V3.2): bloqueio semântico só na pipeline do Bounded Context infrator; aceita só hotfix/refactor com ID de dívida.
  - **Andon Cord do DevSecOps:** se a fila de dívidas estoura a capacidade, o líder "puxa a corda" → congela fusão de todas as features novas; o Product Engineer desce para a trincheira.
  - **Taxa de Solidariedade Algorítmica** (V3.3): domínios saudáveis cedem 20% de capacidade ociosa + 20% de suporte sênior ao epicentro.
  - **Mercado de Mercenários de Elite (T3.11):** dívida de domínio com Andon vira Bounty global; seniores das **guildas E.L.O.S./A.R.C.O.** de outras tribos pegam a refatoração como rito de carreira, recebendo **CNFs Forenses (não Z-Points)**. "Regra da Casa Limpa" (só pega quem está com o próprio domínio verde).
- **Quarentena de Override Fiduciário (V4.0):** quando a gestão força um deploy por cima do veto técnico, o DK-Ops aplica uma **tag de exceção** e **revoga o Andon Cord** daquele módulo — se o código quebrar, a guilda E.L.O.S. é proibida de parar para socorrer; o squad local assume a madrugada. Ver `00_PROTOCOLO_OVERRIDE_E_RESGATE.md`.
- **Eutanásia Arquitetural / Senescência (TTL Algorítmico):** todo código nasce com validade; precisa de dono + tráfego mínimo. 6 meses sem update de segurança/tráfego → **Apoptose Suave** (auto-destruição em 30d via Strangler-Fig, salvo justificativa). SITO que ultrapassa o limite de entropia (custo de manutenção > reescrita) é **fragmentado em 2 satélites menores** (Direito à Decomposição).
- **Void Bounty / Protocolo Lethe:** paga Z-Points por deletar feature obsoleta/unificar microsserviços (Árgus calcula a economia de cloud). *"Paga por linhas brilhantemente apagadas."*

### Deploy & resiliência
- **Deploy Blue/Green** (inclusive "Cognitivo" para modelos de IA — ver EVELYN).
- **Anti-Alienação (Rito de Passagem):** o novato é proibido de usar a abstração L3; é forjado em Terraform puro (L1/L2) nos "repositórios amaldiçoados" até dominar as entranhas. **Pedágio Cognitivo:** a CLI faz perguntas randômicas antes do deploy ("qual o Blast Radius se a IAM falhar?"). **Quebra Programada (B.R.E.A.K.):** a equipe de Plataforma é proibida de intervir; o time de produto debuga (memória muscular).
- **Crystal Forge / Supply Chain** (com Themis): repo intermediário (Sigma) obrigatório; 3 esteiras de confiança.
- **Cavalo de Troia Educativo** (V3.4): nos primeiros 30 dias de adoção, EVELYN/Sigma em leitura passiva — comenta "este pacote entraria em Quarentena Sigma 72h... aprovado desta vez", sem bloquear. Cria antecipação, não atrito.

## 4. Integrações
- **Árgus** (custos de nuvem, Error Budget); **Themis/Sigma** (anticorpos IaC, Disjuntor); **Apolo** (logs → munição comercial/ROI); **EVELYN** (Filtro de Morfeu, auto-healing); **Catharsis** (Filosofia do Martelo como rito).

## 5. Touchpoints de DX
- Linter Arquitetural na IDE (Shift-Left, sublinha violação Clean Arch); Mission Dashboard (estilo Backstage: Error Budget, Z-Points, Trust Score); `z2a-cli` (comandos coloquiais com T.D.E. invisível).

## 6. Supersessões (pontuação)
- ❌ **OBSOLETA:** *Guilhotina Algorítmica / TTL 30d / Rollback Cego Blue* (Briefing/V2.5/T3.06). Não usar.
- ⬆️ **EVOLUÇÃO:** → *Lombada de Latência* (V3.8) → ✅ *Apoptose de Código* (V3.9).
- ❌ **OBSOLETO:** *Andon Cord global* → ✅ Andon Cord por Domínio.
- ❌ **NOTA de nome (T-05):** *DecaOps* é **tradução incorreta** de DK-Ops — **não** usar como sinônimo.
