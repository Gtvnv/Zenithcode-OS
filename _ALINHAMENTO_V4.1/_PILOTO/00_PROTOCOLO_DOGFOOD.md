---
documento: Protocolo do Piloto Dogfood Solo (n=1) — feasibility + shakedown de instrumentos
recorte: Gating de IA no SDLC + 6 regras do ZenithCode Lite
desenho: Série Temporal Interrompida (você é seu próprio controle)
status: piloto de viabilidade — NÃO é evidência causal
---

# 🧪 PILOTO DOGFOOD SOLO (n=1)

> **O que este piloto É:** um *feasibility pilot* — serve para (a) **provar que o kit funciona** (gates + coleta), (b) **estimar a direção e a magnitude** do efeito, e (c) **de-riscar** o estudo grande. **O que NÃO é:** evidência causal (n=1, sem grupo de controle independente). Não publique como prova — publique/use como *piloto de instrumentos*. Isso é honestidade epistêmica (R6), não modéstia.

## Desenho: Série Temporal Interrompida em você mesmo
Como há um só desenvolvedor, o rigor possível é medir **você antes × você depois**, no mesmo projeto:

```
Semanas 1–2  → BASELINE   : trabalho normal, IA livre, SEM gates. Só COLETA métricas.
   [interrupção: ativa os gates do kit]
Semanas 3–4  → TRATAMENTO : 6 regras do Lite + IA como sugestão + gates ativos. COLETA métricas.
```
Cada tarefa é uma observação. Você compara a **tendência** baseline × tratamento (não um p-valor — n é pequeno; olhe direção + tamanho do efeito).

## Passo a passo

### Semana 0 — Setup (1 dia)
1. Escolha **um** repositório real seu (ex.: um módulo do Zyntra/VertexFlow) com pacotes `..domain..` e `..infrastructure../..adapter..` separáveis.
2. Copie o kit para o repo:
   - `ArquiteturaZ2ATest.java` → `src/test/java/.../arquitetura/`
   - `z2a-gates.yml` → `.github/workflows/`
   - `check-tde-header.sh`, `lead-time.sh` → `scripts/` (dê `chmod +x`)
   - `registro-metricas.csv` → onde você for preencher
3. **Não ative os gates ainda** (baseline precisa ser sem trava). Comente o `if: false` no workflow ou rode só a coleta.

### Semanas 1–2 — Baseline (coleta pura)
- Trabalhe como sempre (IA livre, sem regras).
- Para **cada tarefa**, preencha uma linha em `registro-metricas.csv` com `fase=baseline`.
- Meça defeitos: bug encontrado **depois** do merge conta como defeito daquela tarefa.

### Interrupção — ative os gates
- Descomente/ative o workflow. A partir daqui, o build **quebra** se: domínio importar infra (ArchUnit), cobertura do diff = 0, ou faltar o cabeçalho T.D.E. no commit/PR.
- Passe a usar IA **só como sugestão** (você digita/valida; não cola blocos cegos no domínio).

### Semanas 3–4 — Tratamento (mesma coleta, `fase=tratamento`)
- Mesmo trabalho, agora sob as 6 regras. Registre também `gate_bloqueios` (quantas vezes o gate barrou) e se foi falso-positivo.

### Fechamento (1 dia)
- Rode a comparação (planilha): média/mediana de `dd` (defeitos/KLOC), `lead_time_h`, retrabalho, por fase.
- Escreva 1 página: o que o kit pegou, o que atrapalhou (falso-positivo), direção do efeito, e **o que ajustar no protocolo grande**.

## As 6 regras aplicadas (o tratamento)
1. **T.D.E. Enxuto** — todo commit/PR tem cabeçalho `Racional:` + toca um teste (senão o gate barra; cobertura do diff > 0).
2. **Muro de Berlim Arquitetural** — ArchUnit barra `domain → infra`.
3. **Error Budget** — defina um SLO simples do módulo (ex.: ≤ 2 bugs/semana); estourou → só refatoração até zerar.
4. **Filtro de Anticorpos** — todo bug pós-merge exige um teste que o previne antes da próxima tarefa.
5. **Firewall de Dependências** — nada de dependência nova sem passar por scan (ex.: `mvn dependency-check` / OWASP) e registro no `Racional`.
6. **Limite de WIP** — no máximo 1–2 tarefas em progresso ao mesmo tempo.

## O que medir (colunas do `registro-metricas.csv`)
Ver o arquivo — resumo: `lead_time_h`, `dd` (defeitos/KLOC), `retrabalho`, `usou_ia`, `tde_header`, `gate_bloqueios`, `cfr_falhou`, + **NASA-TLX semanal** (carga cognitiva 0–100).

## Leitura dos resultados (honesta)
- **Sinal positivo:** `dd` cai no tratamento **e** `lead_time_h` não dispara (dentro de ~15% — o limiar pré-registrado). Isso **motiva** o estudo grande; não o **prova**.
- **Sinal de alerta:** gates geram muitos falso-positivos, ou o `Racional` vira texto genérico (Goodhart) → ajuste o kit antes de escalar.
- **Resultado nulo:** também é útil — significa que a instrumentação precisa de mais poder (n) para detectar o efeito. Anote e leve para o estudo controlado.

## Fronteira (o que este piloto NÃO resolve)
- Não isola qual das 6 regras causou o quê (é o pacote) — isso é o Experimento B (controlado).
- n=1 = viés do operador (você sabe o que espera). Mitigue: registre métricas **automáticas** (git/CI) sempre que possível, não só percepção.

> **Objetivo real:** sair deste piloto com um **kit que funciona**, um **protocolo afiado** e uma **estimativa de efeito** — os três insumos que transformam o estudo de Mestrado de "ideia" em "experimento pronto".
