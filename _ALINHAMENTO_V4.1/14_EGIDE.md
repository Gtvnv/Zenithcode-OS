---
satelite: Égide
dominio: ITSM / Suporte / Isolamento de Carga Cognitiva
camada: Governança de Alta Órbita (T2) — linha de frente
status: canônico V3.9
Nível_Acesso: Base
Gatilho_Operacional: "#Suporte #Incidente"
Domínio_Relacionado: "#ITSM #ShiftLeft #SLA"
---

# 🛡️ ÉGIDE — ITSM & Escudo Operacional (Shift-Left)

## 1. Identidade
**ITSM / Isolamento de Carga Cognitiva.** O escudo entre o cliente (vindo do Apolo) e o núcleo de engenharia (Z2A/DK-Ops). Shift-Left agressivo.

> ⚠️ **Égide ≠ AegisProtocol.** Égide = suporte/ITSM; AegisProtocol = segurança (Themis). Nomes parecidos, papéis opostos.

## 2. Razão de Existir (vínculo TCC)
Protege o tempo de engenharia (recurso mais caro), evitando que o "ônus cognitivo invertido" do TCC — em que o sênior vira refém de triagem — destrua a produtividade.

## 3. Regras Vigentes Canônicas (V3.9)

### Camadas
- **L0 Autoatendimento** (base de conhecimento/deflection) · **L1 Gateway** (runbooks/triagem) · **L2 Força Tática** (observabilidade/read-only DB/homologação; isola bug vs comportamento esperado).

### Contrato de Interface de Payload (para escalar ao N3/engenharia)
IDs únicos, passos de reprodução, evidências, análise de impacto, esperado × atual. **Chamado genérico = Rejeição Automática.**

### Regras de proteção do fluxo
- **PROIBIDO** acionar o dev via chat síncrono (Slack/Discord/WhatsApp); tudo assíncrono no ITSM.
- **Status Bifásico do Incidente:** Fase 1 **Mitigado** (sangramento parou, SLA congelado) vs Fase 2 **Imunizado** (a missão é proibida de iniciar a próxima Sprint até o PR de anticorpo/regra SAST mesclar no Sigma). Resolve a métrica falsa "incidente fechado" sem deixar escapar a vacina.
- **Letramento de Suporte:** não-técnicos aprendem a Sintaxe de Ticket + uma extensão de navegador (EVELYN) que captura logs/URL/passos automaticamente.

### Empatia controlada
- **Friction Feed / Janela de Vidro** (com Catharsis/Quíron): o dev é blindado de tickets, mas recebe recortes assíncronos do usuário real falhando (anti-torre-de-marfim).

## 4. Governança
- Post-Mortem Ligeiro → Runbook; relatório de fricção de produto → Z2A (melhoria de UX).
- O incidente só encerra após o anticorpo (alinhado ao Compliance as Code do Themis).

## 5. KPIs
Contention Rate > 85%, Leakage Rate, SLA de Resolução, Deflection Rate.

## 6. Integrações
**Apolo** (entrega o cliente), **Z2A/DK-Ops** (núcleo protegido), **Themis** (Compliance as Code/anticorpo), **Árgus** (Contabilidade da Fadiga: receita perdida é debitada da unidade que falhou na Égide), **EVELYN** (captura de contexto do ticket).

## 7. Supersessões (pontuação)
- ✅ **VIGENTE** integralmente (FRAMEWORK ÉGIDE); reforçado pelo Status Bifásico e pela Economia do Anticorpo (a linha de frente mitiga; a guilda de arquitetura escreve a vacina). Sem substituições.
