#!/usr/bin/env bash
# T.D.E. Enxuto (Regra 1 do ZenithCode Lite) — gate de "Racional".
# Verifica se a mensagem do commit (ou corpo do PR) declara o motivo arquitetural
# e se a mudança tocou pelo menos um arquivo de teste. Quebra o build se faltar.
#
# Uso local (dogfood solo, sobre o último commit):
#   ./scripts/check-tde-header.sh
# Uso em PR (CI): passe o corpo do PR em $PR_BODY (ver z2a-gates.yml).
#
# Formato esperado no commit/PR:
#   Racional: <por que esta mudança, em 1 linha arquitetural>
set -euo pipefail

# 1) Fonte do texto: corpo do PR (CI) ou última mensagem de commit (local).
TEXTO="${PR_BODY:-$(git log -1 --pretty=%B)}"

# 2) Checa o cabeçalho "Racional:" (não-vazio).
if ! grep -qiE '^\s*Racional:\s*\S+' <<<"$TEXTO"; then
  echo "❌ T.D.E.: falta o cabeçalho 'Racional:' explicando o motivo arquitetural."
  echo "   Ex.: Racional: extrai porta de pagamento para adapter, isolando o domínio do gateway."
  exit 1
fi

# 3) Checa que algum teste foi tocado no diff (contra a branch base ou o commit anterior).
BASE="${BASE_REF:-HEAD~1}"
if git rev-parse --verify --quiet "$BASE" >/dev/null; then
  ARQS_ALTERADOS="$(git diff --name-only "$BASE"...HEAD || true)"
else
  ARQS_ALTERADOS="$(git show --name-only --pretty=format: HEAD || true)"
fi

if ! grep -qiE '(Test|Tests|_test|spec)\.[a-z]+$' <<<"$ARQS_ALTERADOS"; then
  echo "⚠️  T.D.E.: nenhum arquivo de teste foi tocado nesta mudança."
  echo "   Toda alteração de comportamento deve vir com/ajustar um teste."
  exit 1
fi

echo "✅ T.D.E.: Racional presente e teste tocado."
