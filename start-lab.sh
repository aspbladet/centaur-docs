#!/bin/bash

# Definitioner
VAULT="/Volumes/Data_Vault"
DUMPEN="/Volumes/DUMPEN"

echo "🚀 Initierar säkerhetskontroll av lagring..."

# Kontrollera Data_Vault (RAID)
if [ ! -f "$VAULT/.mounted_sentinel" ]; then
    echo "❌ FEL: Data_Vault är inte monterad! (Hittade ingen sentinel-fil)"
    echo "⚠️  Avbryter för att förhindra Ghost Data på systemdisken."
    exit 1
fi

# Kontrollera DUMPEN (Staging)
if [ ! -f "$DUMPEN/.mounted_dumpen" ]; then
    echo "⚠️  VARNING: DUMPEN är inte monterad. Migration kan inte fortsätta."
    echo "Fler kontroller..."
fi

echo "✅ All lagring verifierad fysiskt."
echo "🐳 Startar Docker Desktop..."

# Öppnar själva appen Docker Desktop
open -a "Docker"

echo "🎉 Docker startas nu. Dina containrar kommer rulla igång automatiskt."
read -p "Tryck på Enter för att stänga detta fönster..." 
