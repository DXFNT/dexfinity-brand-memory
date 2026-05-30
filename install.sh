#!/usr/bin/env bash
# Dexfinity Brand Memory Pack — install.sh
# Pouzitie: bash install.sh
# Alebo (bez klonovania): curl -fsSL https://raw.githubusercontent.com/DXFNT/dexfinity-brand-memory/main/install.sh | bash

set -euo pipefail

REPO="https://github.com/DXFNT/dexfinity-brand-memory.git"
MEMORY_DIR="$HOME/.claude/memory"
CLONE_DIR="$MEMORY_DIR/dexfinity-brand-memory"

echo ""
echo "  Dexfinity Brand Memory Pack — inštalácia"
echo "  ==========================================="
echo ""

mkdir -p "$MEMORY_DIR"

if [ -d "$CLONE_DIR/.git" ]; then
  echo "  Aktualizujem existujúci pack..."
  git -C "$CLONE_DIR" pull --quiet
else
  echo "  Klopujem brand memory pack..."
  git clone --quiet "$REPO" "$CLONE_DIR"
fi

INSTALLED=0
SKIPPED=()

for file in "$CLONE_DIR/memory/"*.md; do
  filename=$(basename "$file")
  target="$MEMORY_DIR/$filename"

  if [ "$filename" = "MEMORY.md" ]; then
    if [ ! -f "$target" ]; then
      cp "$file" "$target"
      INSTALLED=$((INSTALLED + 1))
    else
      SKIPPED+=("$filename (existuje, neprepisujem)")
    fi
  else
    cp "$file" "$target"
    INSTALLED=$((INSTALLED + 1))
  fi
done

echo ""
echo "  Nainštalované: $INSTALLED súborov"

if [ ${#SKIPPED[@]} -gt 0 ]; then
  echo ""
  echo "  Preskočené (existujúce):"
  for s in "${SKIPPED[@]}"; do
    echo "    $s"
  done
  echo ""
  echo "  Ak chceš doplniť brand MEMORY.md záznamy do svojho MEMORY.md, pozri:"
  echo "  $CLONE_DIR/memory/MEMORY.md"
fi

echo ""
echo "  Hotovo. Reštartni Claude Code session (Ctrl+C, znova claude)."
echo "  Pack je aktívny pre všetky budúce konverzácie."
echo ""
