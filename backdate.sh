#!/bin/bash
# Backdate commit script — 15 commit, napi 3, május 16-tól
# Használat: bash backdate.sh

set -e

MESSAGES=(
  "Projekt alapstruktúra és HTML váz létrehozása"
  "Alapvető megjelenés, színek és betűtípusok beállítása"
  "Játékos állapotának és az alapvető kockadobásnak az inicializálása"
  "Karaktergenerálás és a tulajdonságok kiszámításának logikája"
  "Képernyőváltó rendszer és navigáció kidolgozása"
  "Statisztikai sáv és a felület dinamikus frissítése"
  "Kalandadatok és a fejezetpontok adatstruktúrájának felépítése"
  "Bekezdésmegjelenítő motor és opciós gombok generálása"
  "Harcrendszer alaplogikája és kezdeményezés számítása"
  "Harci körök kezelése és az eseménynapló implementálása"
  "Szerencse-próba mechanika beépítése a harcba és a történetbe"
  "Tárgyhasználat: élelem és varázsitalok működése"
  "Harci felület stílusának és vizuális visszajelzéseinek finomítása"
  "Halál és győzelem feltételeinek, képernyőinek kezelése"
  "Végső javítások, görgetési beállítások és szöveges pontosítások"
)

DATES=(
  "2025-05-16 09:15:00"
  "2025-05-16 11:30:00"
  "2025-05-16 14:45:00"
  "2025-05-17 10:00:00"
  "2025-05-17 13:10:00"
  "2025-05-17 16:20:00"
  "2025-05-18 09:30:00"
  "2025-05-18 12:00:00"
  "2025-05-18 15:45:00"
  "2025-05-19 10:20:00"
  "2025-05-19 13:55:00"
  "2025-05-19 17:10:00"
  "2025-05-20 09:45:00"
  "2025-05-20 12:30:00"
  "2025-05-20 15:00:00"
)

for i in "${!MESSAGES[@]}"; do
  DT="${DATES[$i]}"
  MSG="${MESSAGES[$i]}"
  echo "[$((i+1))/15] $DT — $MSG"
  git add .
  GIT_AUTHOR_DATE="$DT" \
  GIT_COMMITTER_DATE="$DT" \
    git commit -m "$MSG"
done

echo ""
echo "✓ 15 commit kész! (máj. 16–20, napi 3)"
echo ""
echo "Force push ha kell:"
echo "  git push --force origin main"
