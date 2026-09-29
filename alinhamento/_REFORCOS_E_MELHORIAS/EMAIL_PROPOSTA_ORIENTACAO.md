---
documento: Abordagem a Orientador (PPGCC/DCC-UFMG) — e-mail + proposta de 1 página
status: estudo (não-canônico) — modelo pronto para uso
---

# ✉️ ABORDAGEM A ORIENTADOR — PPGCC / DCC-UFMG

> Regra nº 1: **não despeje o ZenithCode OS.** Um orientador de SE empírica decide em 30 segundos se o e-mail é de alguém sério ou de um "fundador com um framework para validar". Mande o **recorte falseável**, não o manifesto. A mitologia mataria a conversa.

## 1. Como identificar o orientador certo (faça antes de escrever)
Critérios — procure quem:
- Orienta no **PPGCC/UFMG** (verifique no site do programa quem está **com vagas/credenciado** no ano).
- Publica em **Engenharia de Software empírica / Mining Software Repositories** (veículos: ICSE, FSE, ESEM, EMSE, TSE, MSR, SBES).
- Tem **grupo ativo** e alunos na área.

Onde verificar (não confie em memória — confirme):
- Site do **PPGCC/DCC-UFMG** → lista de docentes e linhas de pesquisa.
- **Plataforma Lattes** + **Google Scholar** + **DBLP** de cada nome (veja se os últimos 2–3 anos têm SE empírica/IA no SDLC).
- Leia **1 artigo recente** do candidato a orientador — você vai citá-lo no e-mail.

> Pista a verificar (não é garantia): o DCC-UFMG tem tradição forte em SE aplicada/empírica e mineração de repositórios (ex.: o grupo **ASERG – Applied Software Engineering Research Group**). Confirme quem hoje orienta na linha e está alinhado a "IA no SDLC".

## 2. Estratégia de entrada: disciplina isolada primeiro
Antes de pedir orientação formal, **curse uma disciplina isolada** (do seu próprio plano) com um docente da linha. É baixo compromisso para os dois, prova seu nível na prática e transforma um e-mail frio em uma relação real. O pedido de orientação vem **depois**, com você já conhecido.

## 3. O e-mail (curto — máx. ~200 palavras)

**Assunto:** Interesse em orientação (Mestrado) — gating de IA no SDLC e qualidade de código

> Prezado(a) Prof(a). **[Nome]**,
>
> Sou **[seu nome]**, tecnólogo em ADS e graduando em Engenharia de Software, com atuação prática em arquitetura (Clean Architecture/DDD) e segurança. Pretendo ingressar no Mestrado em **[Eng. de Sistemas / PPGCC]** e venho me preparando via disciplina isolada.
>
> Acompanho sua linha de **[Engenharia de Software empírica / mineração de repositórios]** — em especial **[título/achado de 1 artigo recente seu]**. É exatamente onde quero contribuir.
>
> Meu recorte de interesse: **avaliar empiricamente uma política em que a IA generativa atua como sugestão não-autoritativa e o bloqueio de merge é decidido por regras determinísticas (AST/contratos de dependência)** — medindo o efeito sobre densidade de defeitos e retrabalho vs. uso irrestrito de IA. Tenho um **protocolo de estudo-piloto pré-registrado** (quasi-experimento within-subjects, com baseline e grupo de controle) e ambiente real para coleta.
>
> Seria possível uma conversa de 20 min para avaliar aderência à sua linha e a viabilidade de orientação? Anexo uma proposta de 1 página.
>
> Atenciosamente, **[nome, telefone, Lattes/GitHub]**

## 4. O anexo — proposta de 1 página (estrutura)
1. **Título provisório** — ex.: *"Gating arquitetural de IA no SDLC: efeito sobre qualidade de código (estudo empírico)"*.
2. **Problema (3 linhas):** IA generativa acelera, mas há evidência de aumento de defeitos/dívida; falta um mecanismo de governança **com garantia** avaliado empiricamente.
3. **Pergunta de pesquisa (1 frase):** a política *IA-sugere / regra-decide* + Reserva de Domínio reduz defeitos sem penalizar lead time?
4. **Novidade / delta (1 frase):** integra IA não-autoritativa + enforcement por AST + operação-sem-IA verificável, **medindo** o trade-off — combinação ainda não avaliada.
5. **Método (3 linhas):** quasi-experimento within-subjects, 3 regimes (sem IA / irrestrita / gated), métricas DORA + defeitos + violações de dependência; pré-registro + pacote de replicação.
6. **Viabilidade:** acesso a ambiente real de coleta + protocolo já redigido.
7. **Aderência:** por que à linha **dele(a)** especificamente (cite o artigo).
8. **Veículos-alvo:** SBES/ESEM → EMSE.

## 5. Erros que matam o e-mail (não cometa)
- ❌ Anexar/descrever o ZenithCode OS, mitologia, "Constituição", 14 satélites.
- ❌ "Quero validar cientificamente o meu framework." (= consultoria, não tese.)
- ❌ E-mail longo, genérico, sem citar um trabalho específico do orientador.
- ❌ Prometer revolução; prometa **um experimento medível**.
- ✅ Mostre humildade + base + um recorte que **pode dar errado** (sinal de maturidade científica).

## 6. Depois do "sim"
- Alinhe o recorte à **linha e ao fomento** do orientador (pode pedir um ajuste — aceite).
- Transforme o `ESTUDO_PILOTO_MESTRADO.md` no protocolo formal com ele.
- Submeta ao Comitê de Ética cedo.
- Trate o Z2A como **contexto de aplicação** nas conversas, nunca como o produto a defender.
