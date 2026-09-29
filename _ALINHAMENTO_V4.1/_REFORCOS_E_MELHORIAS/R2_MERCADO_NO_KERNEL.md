---
reforco: R2 — Mercado no Kernel
neutraliza: O Golpe Mais Profundo (otimiza a engenharia, ignora a realidade)
status: estudo
---

# 🎯 R2 — Mercado no Kernel (validação como Pilar Zero)

## Diagnóstico
Hoje o cliente/mercado é **Apolo: 1 satélite entre 14**. Isso revela a prioridade real do sistema: a vida interna da engenharia. O resultado é uma máquina que produz código impecável que **ninguém pediu**. O gargalo de uma empresa de software nunca foi governança feia — foi distância do usuário e hipóteses não testadas. O Kernel precisa começar pelo mercado, não terminar nele.

## Proposta: o Pilar Zero — "Definição de Valor antes de Definição de Pronto"
Antes de qualquer feature entrar no fluxo (antes do T.D.E.), ela passa por um **Contrato de Hipótese**:

1. **Hipótese explícita:** "Acreditamos que [usuário X] tem [problema Y]; esta feature reduz [métrica Z]."
2. **Sinal de validação predefinido:** o número que dirá se a hipótese estava certa (ex.: ativação, retenção, ticket evitado, receita).
3. **Janela de avaliação:** quando o sinal será lido (ex.: 30 dias pós-deploy).
4. **Critério de morte:** se o sinal não vier, a feature é **removida** (não "melhorada indefinidamente").

> Isto reaproveita mecanismos que o sistema já tem, virando-os para fora:
> - **Senescência/TTL** deixa de matar só código sem tráfego e passa a matar feature **sem valor validado**.
> - O **GECON** recompensa **aprendizado validado** (hipótese confirmada), não código entregue. Shipar lixo deixa de pagar.
> - **Apolo** deixa de ser tradutor de borda e vira **fonte do Pilar Zero**: a telemetria de valor do cliente alimenta o início do fluxo, não o fim.

## North Star por squad
Cada squad ganha **uma métrica de resultado de cliente** (não de output). Exemplos: tempo até o primeiro valor, retenção D30, redução de churn. O Error Budget de **confiabilidade** ganha um irmão: o **Value Budget** (quanto esforço você pode gastar sem validar valor antes de ser obrigado a parar e medir).

## Como testar
- No squad piloto (R1), todo item de backlog recebe o Contrato de Hipótese.
- Mede-se a **taxa de features mortas por falta de sinal** (saudável se > 0 — significa que você está matando o que não serve).
- Compara-se o **% de esforço em features validadas vs não validadas** antes e depois.

## Critério de sucesso / morte
- **Sucesso:** queda no esforço gasto em features sem uso + subida na North Star de cliente.
- **Morte:** se o Contrato de Hipótese virar burocracia que ninguém lê (Goodhart), simplifica-se para uma única pergunta: *"que sinal do cliente prova que isto valeu?"*

## Trade-off honesto
Engenheiros que amam construir vão resistir a "pedir licença ao mercado". Mas é justamente esse desconforto que cura o Golpe Profundo: o sistema nervoso ganha **olhos**.
