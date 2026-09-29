---
documento: Entrada Comercial — One-Pager de Posicionamento (ESQUELETO)
audiencia: investidor / cliente corporativo (software regulado e de alta garantia)
regra: ZERO jargão mitológico. Linguagem de risco, custo e prova.
status: ESQUELETO — os campos [PILOTO] são preenchidos com dados reais após o piloto
---

# Governança Determinística de IA para Software Regulado

> ⚠️ **Nota de uso (interna, remover antes de enviar):** este é o **esqueleto**. Todo campo marcado **`[PILOTO: …]`** deve ser preenchido com **número medido**, nunca com adjetivo. Um pitch sem número é promessa — e promessa é exatamente o que este posicionamento combate. **Não envie este documento com placeholders.**

---

## O problema (a dor que custa dinheiro)
Equipes adotaram assistentes de IA e ganharam velocidade. Em troca, receberam **código probabilístico entrando em produção**: mais defeitos, mais retrabalho, mais *downtime* — e uma **cadeia de responsabilidade impossível de auditar**.

Em setores regulados (fintech, healthtech, defesa, IoT industrial), isso não é inconveniente — é **passivo**: multa, incidente, responsabilidade técnica pessoal do engenheiro que assina.

## A solução (o mecanismo, em uma frase)
> **A IA sugere; a regra decide.**

- A IA generativa é tratada como **sugestão probabilística não-autoritativa** — nunca como autoridade de integração.
- O **bloqueio de merge é determinístico**: regras sobre a Árvore Sintática Abstrata (AST) e contratos de dependência. Violou, o *build* quebra. Sem julgamento subjetivo, sem "achismo de modelo".
- **Analogia:** um estagiário genial (o LLM) propõe; um advogado rígido (o gate determinístico) só assina se todas as cláusulas fecharem.

## A prova (o que nos diferencia de qualquer *quality gate* do mercado)
**O Teste do Apagão** — uma propriedade **verificável**, não uma promessa:
> Um job de CI **desliga 100% da IA** (ou injeta *outputs* corrompidos) e executa os fluxos críticos do negócio. Se **qualquer** caminho crítico depender do componente probabilístico, **o build falha**.

**Tradução para o conselho:** se o fornecedor de IA cair, se o modelo for envenenado, ou se ele alucinar sistemicamente — **sua operação continua de pé**. Todo mundo tem *quality gate*. Ninguém **garante e verifica** a sobrevivência a um apagão de IA.

## O retorno (ROI quantificado — TDABC automatizado)
Medimos o custo real por serviço/feature/cliente via **custeio TDABC alimentado por telemetria** (billing de nuvem, *tracing*, *metering* de GPU). Isso prova que a governança **se paga sozinha**:

| Efeito | Como se mede | Resultado |
|--------|--------------|-----------|
| Redução de retrabalho (bugs não rastreáveis) | *churn* pós-merge, densidade de defeitos | **`[PILOTO: __% ]`** |
| Redução de *downtime* / falha de mudança | *change failure rate*, MTTR | **`[PILOTO: __% ]`** |
| Redução de TCO por feature | TDABC (custo por objeto de custo) | **`[PILOTO: __% ]`** *(meta: ≥15%)* |
| Impacto no lead time (custo da governança) | DORA — lead time | **`[PILOTO: __% ]`** *(teto aceito: ≤15%)* |

> **A tese comercial é falseável:** se a redução de TCO ficar abaixo de 15%, ou se o mercado não pagar prêmio por mitigação de risco mensurável, **o posicionamento cai**. Preferimos descobrir isso com dados a vender uma promessa.

## Adoção (atrito baixo — valor no primeiro commit)
Não se adota um "sistema operacional corporativo". Adota-se **seis regras de CI/CD**:
1. Racional + teste obrigatórios (build quebra se a linha nova não tiver cobertura).
2. Gate de dependência via AST (infraestrutura não invade o domínio).
3. *Error Budget* (SLO): estourou, congela features.
4. *Post-incident review* com regra de prevenção obrigatória.
5. Firewall de dependências (registry interno + varredura de CVE).
6. Limite de trabalho em progresso.

Módulos avançados (LGPD/*crypto-shredding*, governança geográfica, plataforma, ciber-físico) são **plugins acionados por gatilho de dor** — a empresa só os liga quando o contrato exige.

## Para quem é — e para quem NÃO é
✅ **É para:** software regulado/alta garantia (fintech, healthtech, defesa, IoT industrial); *scale-ups* de 50–500 engenheiros com dor de plataforma; times que já sentem o custo do código gerado por IA.

❌ **Não é para:** startup pré-PMF (precisa de velocidade, não governança); times de 2–5 pessoas (overhead esmaga o ganho); protótipos descartáveis. *Dizer isso é o que torna o resto crível.*

## Estágio atual (honestidade = credibilidade)
- **Mecanismo:** projetado, com **kit de instrumentação implementado** (regras AST, gates de CI, coleta automatizada de métricas).
- **Validação:** **em curso**. Protocolo experimental **pré-registrado** (baseline, grupo de controle, critérios de morte declarados **antes** da coleta). Piloto de viabilidade rodando.
- **Ainda não temos os números.** Teremos — e serão os números reais, não os convenientes.
- **Lastro científico:** o mecanismo é o objeto de uma pesquisa formal (Mestrado/Doutorado), com publicação e pacote de replicação previstos.

## Próximo marco
`[PILOTO: data]` — conclusão do piloto instrumentado e publicação dos primeiros números (defeitos, lead time, TCO). **É quando este documento deixa de ter placeholders.**

---
*Contato: [nome] · [e-mail] · [telefone]*
