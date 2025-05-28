#!/bin/bash

echo "🛠️ Instalando Cisco ASA Cleaner desde GitHub..."

# Rutas
SCRIPT_PATH="/usr/local/bin/ciscoasa_cleaner.sh"
SERVICE_PATH="/etc/systemd/system/ciscoasa-cleaner.service"

# Descargar y mover el script
curl -fsSL https://raw.githubusercontent.com/NixonVuele/tpotComands/main/ciscoasa_cleaner.sh -o "$SCRIPT_PATH"
curl -fsSL https://raw.githubusercontent.com/NixonVuele/tpotComands/main/ciscoasa-cleaner.service -o "$SERVICE_PATH"

# Dar permisos
chmod +x "$SCRIPT_PATH"

# Activar el servicio
systemctl daemon-reload
systemctl enable ciscoasa-cleaner.service
systemctl start ciscoasa-cleaner.service

# Verificar
systemctl status ciscoasa-cleaner.service
