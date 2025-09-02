use ./util.nu
use ../global.nu

# Setup script para inicializar arquivos e diretórios necessários
util safe-create $"($global.ROOT)/config/credentials.nu"
