---
documento: Leis & Heurísticas — Kit Anti-Ataque (camada de PRODUTO)
proposito: usar leis/aforismos como ferramenta de design e retórica, com fonte verificada
status: estudo (não-canônico) — camada de PRODUTO, não de tese
---

# ⚖️ LEIS & HEURÍSTICAS — Kit Anti-Ataque

> **Regra de quarentena (inegociável):** este documento é da **camada de PRODUTO**. Aqui, leis e aforismos são **ferramentas de design e comunicação** — livre para usar. **Na camada de TESE/ciência, nada disto é evidência.** Citar "Brandolini" não valida uma hipótese; só o experimento (R6) valida. Nunca misture as duas gramáticas.
>
> **Regra de higiene:** toda "lei nomeada" é **verificada** antes de citar. Autoridade falsa é a superfície de ataque mais barata que existe.

## Tabela mestre

| Lei / Heurística | Fonte real (verificar) | Uso refinado no Z2A | Vetor de gaming / limite a vigiar |
|------------------|------------------------|---------------------|-----------------------------------|
| **Segal** ("um relógio") | Aforismo folclórico (sem autor único) | SSOT de **autoridade de decisão** (Árgus arbitra conflito de prioridade) | Não confundir com "métrica única"; observabilidade **quer** redundância. Não banir otimização legítima. |
| **Brandolini** (assimetria da besteira) | Alberto Brandolini, 2013 | Gate preventivo determinístico (Escudo do Themis) na porta de entrada | Só cobre o **decidível por AST** (estrutura); besteira **semântica** ainda é humana. Falso-positivo custa veterano → exige Calibração Simétrica. |
| **Cunningham** (poste a resposta errada) | Ward Cunningham (atribuída) | Prototipagem adversarial (Forja Adversarial/Sintética) | Marca é decorativa; guardar contra **destruição-como-ego**. Alvo é a ideia vs. baseline, não a pessoa. |
| **Princípio da Caridade / Steelman** | Filosofia (Davidson/Dennett); *Just Culture* — Sidney Dekker | Post-Mortem Blameless: steelmannar a decisão ("por que foi lógico naquele momento?") | É **disciplina de facilitação**, não automação. Vale p/ erro honesto, **não** p/ malícia (linha UEBA). |
| **Consequências Não Intencionais / Trade-off Obrigatório** ("toda melhora esconde uma piora") | R. Merton (1936); T. Sowell ("no solutions, only trade-offs"); F. Brooks ("No Silver Bullet"); TANSTAAFL | BADR, T.D.E. e Override obrigam declarar **"o que piora?"**; "nada piora" = rejeição por cegueira arquitetural | Nome "Steelbert" **não é verificável** — usar as fontes reais acima. Cuidar p/ não virar burocracia (declaração genérica → Goodhart). |
| **Accountability do Executor** (dono da solução) | *Extreme Ownership* — Willink & Babin (2015); RACI ("Accountable"); Locus de Controle — Rotter | Filosofia do Martelo: o Carpinteiro é dono da **correção/entrega** | **Escopo = locus de controle.** Accountability pela correção e pelo ofício, **nunca** por resultado que não controla (decisão de negócio, Override do gestor) — senão vira victim-blaming. |
| **Resultado > Esforço** | **Thomas F. Gilbert**, *Human Competence* (1978), HPT: *accomplishment > behavior* | Pilar Zero / Contrato de Hipótese: valida com o cliente, não conta linhas | Gilbert também diz: **~75% da falha é do AMBIENTE** — isso **reforça o Blameless**, não o contradiz. Não usar Gilbert para culpar a pessoa. |

## A reconciliação Blameless × Accountability (as 3 camadas)
*Just Culture* (Dekker) dissolve o falso paradoxo:
1. **Culpa por erro honesto → NÃO** (a arquitetura absorve o impacto; Axioma da Inocência).
2. **Responsabilidade pela correção → SIM** (o executor escreve o Anticorpo e cuida do ofício). ← *é aqui que a accountability vive.*
3. **Responsabilidade por imprudência/malícia → SIM** (linha da UEBA).

> **Guardrail:** a accountability é escopada ao **locus de controle** do executor. Correção e ofício: dele. Resultado fora do controle dele (mercado, decisão de negócio, Override forçado): **não** dele.

## Ajustes nos pilares existentes (sem mecanismo novo)
- **Blameless (núcleo):** adicionar a cláusula das 3 camadas + o escopo de locus de controle.
- **Filosofia do Martelo (DK-Ops):** o Carpinteiro é *accountable* pela fixação do prego (correção/entrega), não pelo que a Fábrica de Martelos controla.
- **Pilar Zero (R2):** "eficiência estratégica > esforço" ganha âncora em Gilbert/HPT.

## O que foi DESCARTADO (para não te atacarem de graça)
- ❌ "Sistema **imune** a manipulação" → trocar por *"aumenta o custo da manipulação e a torna auditável"* (nenhum sistema de reputação é imune: CNF sofre log-rolling/teatro; precedência sofre proteção de território; painel sofre assimetria de informação).
- ❌ "Segal proíbe micro-otimização" → Segal é sobre **autoridade**, não proibição.
- ❌ Nome "Steelbert" e "Gilbert = culpa do executor" → misatribuições; usar as fontes reais.

## Regra final
Use estas leis como **ferramenta** (design + pitch) e o sistema fica mais forte. Use-as como **prova de que o sistema é certo** e você recria a teologia auto-selada que a Crítica Adversarial denunciou. Ferramenta na camada de produto; evidência só na camada de tese.
