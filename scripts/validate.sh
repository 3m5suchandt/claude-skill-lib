#!/usr/bin/env bash
# Prüft den Marketplace samt Root-Plugin "jasu" und danach jedes Plugin unter plugins/ einzeln –
# ein Lauf am Marketplace öffnet die Komponenten-Dateien in plugins/<name>/ nicht.
# Die Warnung "No version specified" ist gewollt: Updates laufen über den Commit-SHA.
set -uo pipefail
cd "$(dirname "$0")/.."
status=0
for dir in . plugins/*/; do
  [ -d "$dir" ] || continue
  echo "== $dir"
  claude plugin validate "$dir" || status=1
done
exit $status
