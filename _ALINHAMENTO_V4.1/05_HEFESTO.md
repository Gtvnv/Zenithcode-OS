---
satelite: Hefesto (Efesto)
dominio: Hardware / Robótica / IoT / Gêmeos Digitais
camada: Malha de Fronteira (T3)
status: canônico V3.9
Nível_Acesso: Liderança
Gatilho_Operacional: "#HardwareDeploy #IoT"
Domínio_Relacionado: "#GêmeosDigitais #Edge #AntiBrick"
---

# 🔨 HEFESTO — Convergência Ciber-Física

## 1. Identidade
Satélite do **mundo físico**: hardware custom, automação industrial, telemetria veicular, IoT/Edge. Também grafado **Efesto**. Alimenta a E.V.E.L.Y.N. Edge.

## 2. Razão de Existir (vínculo TCC)
Cura o risco **Therac-25** (negligência metodológica em sistema ciber-físico que mata): a simulação contra o Gêmeo Digital impede que código não testado controle o mundo real.

## 3. Regras Vigentes Canônicas (V3.9)
- **Ports & Adapters no Metal:** core de firmware agnóstico de hardware; **DDD Físico** (dispositivo = Raiz de Agregação; sensores RFID/balança/GPS só em Adapters).
- **Gêmeos Digitais (SIL):** simulação antes de usinar/produzir. **Recalibragem Entrópica (Digital Twin Drift):** o gêmeo **não é estático** — um "Canal de Entropia" o alimenta com telemetria real (calor/vibração/desgaste); a simulação "envelhece" junto com o hardware (evita falha tipo Therac-25 por divergência sim×real).
- **OTA Dual-Bank A/B:** atualização na partição inativa, janelas de autonomia, isolamento de nós.
- **Circuit Breaker Físico Anti-Brick:** Watchdog hierárquico + rollback para o bank anterior após N falhas de health-check.
- **Matriz de Gatekeepers por fase:** SIL (100% dos testes sem hardware) → Provisionamento (handshake mTLS) → HIL (Anti-Brick dispara) → Operação na Borda (telemetria respeita banda/latência).

## 4. Integrações
- **Themis Módulo Delta:** herda Zero-Trust (IAM Edge via X.509 + mTLS); Fail-Safes físicos.
- **EVELYN Edge:** Edge Computing Just-in-Time (filtra/consolida telemetria localmente).
- **Hermes:** telemetria de depreciação de ativos físicos.
- **Árgus:** CAPEX físico real, refugo.
- **Efesto no Fluxo 1:** simulação de estresse contra o Gêmeo Digital degradado antes do deploy.

## 5. Supersessões (pontuação)
- ✅ **VIGENTE** integralmente desde o FRAMEWORK base; sem substituições. A V2.5 citava SIL+HIL; o Meta-Frameworks enfatiza SIL — ambos coexistem (SIL = software-in-the-loop; HIL = hardware-in-the-loop, fase posterior).
- 🟢 **Acréscimo V3.x:** Recalibragem Entrópica (Canal de Entropia) — refino que torna o Gêmeo Digital vivo.
