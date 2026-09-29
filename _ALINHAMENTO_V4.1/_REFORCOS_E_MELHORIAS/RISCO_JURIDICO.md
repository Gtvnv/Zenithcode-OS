---
documento: Pass de Risco Jurídico (além do R4)
proposito: mapear a superfície legal antes de qualquer implantação real
status: estudo (não-canônico) — NÃO é parecer jurídico; exige advogado
aviso: "Compliance as Code" não substitui parecer humano nestes pontos
---

# ⚖️ RISCO JURÍDICO — Pass Além do R4

> O R4 cobriu a vigilância (keystroke, Pouso Forçado, UEBA). Aqui está o **resto da superfície legal** — cada item é um **gate** que precisa de parecer humano (CLT/LGPD/GDPR/penal), não de um teste de CI. Um jurídico de cliente regulado vai bater exatamente nestes pontos.

## R1 🔴 Duress PIN que "oblitera fisicamente os discos KMS"
- **Risco:** destruir dados/hardware sob coação pode configurar **destruição de prova** (obstrução) e destruir dados de **terceiros** (clientes) — passivo civil e possivelmente penal. Um "kill switch" que apaga dado de cliente é um pesadelo contratual.
- **Correção proposta:** trocar destruição física por **bloqueio criptográfico + alarme silencioso** — destrói o **acesso**, não o **dado**. Reversível, auditável, muito menor exposição. A chave é *tornar ilegível*, não *incinerar*.
- **Gate:** parecer penal + contratual antes de qualquer versão física.

## R2 🟠 Biometria vascular = dado pessoal SENSÍVEL
- **Risco:** biometria é **dado sensível** (LGPD art. 11 / GDPR art. 9) — regime mais rígido: consentimento específico, finalidade estrita, DPIA obrigatório.
- **Correção:** restringir **exclusivamente** a acesso físico a data center crítico (proporcionalidade real); **nunca** para login diário. Coerente com R4.
- **Gate:** DPIA (Avaliação de Impacto) + base legal explícita.

## R3 🟠 Z-Points "não são salário" — a ficção mais frágil
- **Risco:** com **habitualidade + expectativa**, a Justiça do Trabalho pode **reclassificar** Z-Points como verba salarial (reflexos em férias, 13º, FGTS, INSS). PLR tem requisitos legais próprios (Lei 10.101/2000: negociação, periodicidade — não pode ser mensal disfarçado). Stock options também têm regras (natureza mercantil vs. remuneratória).
- **Correção:** desenhar Z-Points/PLR **com** advogado trabalhista/tributarista desde o início; documentar a natureza não-salarial de forma robusta; respeitar periodicidade da PLR.
- **Gate:** parecer trabalhista + tributário antes de liquidar qualquer Z-Point em dinheiro.

## R4 🟠 Dados transfronteiriços (Follow-the-Sun / Atlas / Sovereign Shard)
- **Risco:** rotação de plantão entre Hubs e arbitragem multi-cloud implicam **transferência internacional de dados** (LGPD cap. V / GDPR cap. V) — exige base legal (adequação, cláusulas-padrão/SCCs, garantias). O Geocerceamento ajuda, mas não dispensa o instrumento jurídico.
- **Correção:** o Geocerca (Árgus) é o *enforcement*; falta o *instrumento* (SCC/contrato). Atlas deve tratar isso como gate real.
- **Gate:** mapa de transferências + instrumentos de transferência aprovados.

## R5 🟡 Monitoramento de colaboradores (recap do R4, dimensão CLT)
- **Risco:** monitoramento tem limites CLT/constitucionais (intimidade); monitoramento oculto/desproporcional gera dano moral.
- **Correção:** transparência + proporcionalidade + finalidade de segurança (não performance). Já endereçado no R4; aqui só o carimbo jurídico.

## R6 🟡 IP como ativo (ver `REVISAO_IP_E_NOMES.md`)
- **Risco:** tratar nomes/metodologia como ativos protegidos **sem registro** é falsa segurança.
- **Correção:** ver o doc dedicado de IP.

---

## Princípio-mãe
**Privacy/Legal by Design aplicado ao PRÓPRIO framework**, não só ao produto do cliente. O Oráculo/Atlas/Themis são os donos naturais destes gates — mas como **gates com parecer humano**, não como selo decorativo. *"Compliance as Code" valida o decidível; o resto é advogado.*

> ⚠️ Este documento **não é parecer jurídico** — é um mapa de risco para levar a um advogado. Seu plano já prevê Pós em Propriedade Intelectual + MBA em Privacidade; use-os aqui.
