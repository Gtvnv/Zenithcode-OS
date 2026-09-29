#!/usr/bin/env bash
# Lead Time (DORA) para o dogfood solo.
# Calcula as horas entre o PRIMEIRO e o ÚLTIMO commit de uma tarefa,
# identificando a tarefa por um marcador no início da mensagem (ex.: "EX-101:").
#
# Uso:  ./scripts/lead-time.sh EX-101
# Saída: task_id, primeiro_commit, ultimo_commit, lead_time_horas
set -euo pipefail

TASK="${1:?informe o task_id, ex.: ./lead-time.sh EX-101}"

# timestamps (epoch) de todos os commits cuja mensagem começa com "TASK"
MAPFILE=$(git log --pretty='%at %s' | grep -E "^[0-9]+ ${TASK}[: ]" | awk '{print $1}' | sort -n)

if [[ -z "$MAPFILE" ]]; then
  echo "Nenhum commit encontrado para a tarefa '${TASK}'."
  echo "Dica: comece as mensagens com o task_id, ex.: 'git commit -m \"${TASK}: ...\"'"
  exit 1
fi

PRIMEIRO=$(head -n1 <<<"$MAPFILE")
ULTIMO=$(tail -n1 <<<"$MAPFILE")
HORAS=$(awk -v a="$PRIMEIRO" -v b="$ULTIMO" 'BEGIN { printf "%.2f", (b-a)/3600 }')

echo "task_id,primeiro_commit,ultimo_commit,lead_time_horas"
echo "${TASK},$(date -d @"$PRIMEIRO" '+%Y-%m-%dT%H:%M' 2>/dev/null || date -r "$PRIMEIRO" '+%Y-%m-%dT%H:%M'),$(date -d @"$ULTIMO" '+%Y-%m-%dT%H:%M' 2>/dev/null || date -r "$ULTIMO" '+%Y-%m-%dT%H:%M'),${HORAS}"
