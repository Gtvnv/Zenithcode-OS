---
documento: Registro de Tensões — Abertas e Seladas
versao: V4.0
status: vivo
Nível_Acesso: Zenitar
Gatilho_Operacional: "#Revisão #Decisão"
Domínio_Relacionado: "#Governança"
---

# ⚖️ REGISTRO DE TENSÕES — Seladas (V4.0) e Abertas

> Separa **fatos consolidados** de **pontos que ainda dependem de decisão**. Atualizado após a rodada de selagem V4.0.

## Legenda
- ✅ **SELADA** — decidida pelo dono do sistema.
- 🟠 **Inferência minha** — preencho lacuna; confirme/corrija.
- 🔵 **Escolha de design pendente** — conceito existe, regra não fecha.
- 🟣 **Risco de nomenclatura.**

---

## ✅ TENSÕES SELADAS (V4.0)

### T-01 ✅ Mapeamento de mercado da carreira
Fixado (7 níveis da Constituição):

| Nível | Equivalente de mercado |
|-------|------------------------|
| **Nascer** | Cargos iniciais — Júnior / N1 / Trainee / Estágio |
| **Crescer** | Pleno (Software Engineer / SE) |
| **Guiar** | Senior |
| **Iluminar** | Staff |
| **Edificar** | Principal |
| **Transcender** | Distinguished |
| **Zenitar** | Fellow / CTO — **praticamente exclusivo de cargos Officer (C-Level)** |

### T-02 ✅ Precedência ORION × Técnica → resolvida pelo Override Fiduciário
A "parede de concreto" virou **transação de risco**. A gestão pode forçar o lançamento, mas paga o **Preço da Exceção** (Assinatura Dupla + slash de 40% do Error Budget + perda do Andon Cord). Detalhe em `00_PROTOCOLO_OVERRIDE_E_RESGATE.md`. A autoridade **arquitetural** segue soberana *por padrão*; o negócio só a contorna pagando a fatura.

### T-03 ✅ CNF individual × Multiplicador Coletivo
Confirmado o **Modelo de 3 Carteiras** (`00_NUCLEO`): Z-Points (squad/liquidez) × Error Budget (squad/confiabilidade) × CNF (individual/reputação, inegociável). O CNF **não** entra no Multiplicador Coletivo. *"Dinheiro compra equity; reputação compra poder."*

### T-04 ✅ Z-Point no offboarding
Confirmado: aposta em curso permanece com o **squad** (quem sai não saca). Valhalla liquida só o consolidado (M3/M4, com deságio); Cerberus congela + auditoria forense de 30 dias.

### T-05 ✅ DK-Ops × DecaOps
**DK-Ops é o nome oficial.** "DecaOps" é **tradução incorreta** — não é sinônimo legítimo; deve ser tratado como erro a corrigir onde aparecer (não como nome alternativo).

### T-06 ✅ Égide × AegisProtocol — desambiguação aprovada
Regra canônica de nomenclatura:
- **AegisProtocol** = segurança (manifestação do Themis). Use sempre este nome para IAM/Zero-Trust.
- **Égide** = ITSM/suporte. Nunca usar "Égide" em contexto de segurança; **proibido** o termo "Égide de Segurança".

### T-07 ✅ Vocabulário bélico → biológico (100%)
A camada léxica **biológica é mandatória em toda a HUD** (substitui 100% o jargão bélico/de execução — não é "modo alternativo"). Mapa: Guilhotina→**Apoptose**; Tribunal da Forja (incidente)→**Filtro de Anticorpos**; Engenheiros Letais→**Arquitetos Antifrágeis**; "execução criminal"→"cura do organismo".

> **Distinção importante (decisão do dono):** isso vale para o léxico **operacional/de punição/incidente**. O **léxico rigoroso de avaliação/onboarding permanece agressivo de propósito** (filtro imunológico) — termos como **Morte do Ego**, **Forense Estrutural**, **Projeto Quimera** e **Tribunal de Arquitetura** (Catharsis/Odyssey) **ficam mantidos**. A banca sugeriu suavizá-los; **rejeitado**: "o sistema não é uma creche, é uma operação de elite; a nomenclatura rígida é o filtro."

---

### T-08 ✅ Base salarial do Relatório de Viabilidade de Escala
**Selada — modelo híbrido com base IPC-Z:** a EVELYN calcula o ROI sobre o **IPC-Z** regional (estável, alinhado ao Câmbio Imutável) e só aplica um **"fator de aquecimento de mercado"** opcional quando o gargalo é crítico/urgente. Base previsível, com elasticidade pontual.

### T-09 ✅ Bounty de Seleção
**Selada — rito classificatório (não remunerado).** O Projeto Quimera no processo seletivo permanece como **filtro puro** ("a ideia fica mais palpável"): mede quem realmente quer estar na operação de elite, sem transformar a seleção em transação financeira.

## 🟢 Sem tensões abertas no momento

Todos os pontos levantados foram selados.

## 🧱 Refinos de Robustez implementados (V4.1)
Registro dos 7 refinos formalizados para fortalecer a V4.0:
1. **Calibração Simétrica do Override** — refund se o veto era exagerado + score de calibração do arquiteto (`00_PROTOCOLO`).
2. **Índice de Imprudência Gerencial** — telemetria agregada de Override por gestor + Cc de liderança (`00_PROTOCOLO`, `04_QUIRON`).
3. **Máquina de Estados Operacionais** — Paz/P1/Lockdown/Ícaro (`00_ESTADOS_OPERACIONAIS`).
4. **Contrato de Degradação na Fronteira** — anti-cascata entre SITOs (`00_NUCLEO`).
5. **Anti-farming de CNF Forense** — anti-Munchausen + anti-cherry-picking + homologação Zenitar (`00_NUCLEO`, `04_QUIRON`).
6. **Taxa de Recorrência de Resgate** — distingue capacidade de problema de composição (`00_PROTOCOLO`).
7. **Versionamento do OS + Capital Político no offboarding** — SemVer Constitucional + anti-dinastia (`00_NUCLEO`).

---

## ✅ Itens selados em rodadas anteriores (registro)
- Trilha de carreira: 7 níveis da Constituição; ELOS/ARCO = guildas; ORION = gestão ortogonal.
- Z-Point — quem aposta: dev nunca aposta; squad é o lastro; Guiar assina; Árgus arbitra 60/40.
- Semântica: Triplo Plano de Dados (Truth/Intelligence/HUD).
- Punição de falha: Apoptose de Código (Imposto → Throttling → Read-Only), sem rollback cego.
