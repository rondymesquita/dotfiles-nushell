use ./util/fs.nu [safe-create]
use ./scripts/main/variables.nu [config]

let ROOT = $nu.default-config-dir

safe-create $"($ROOT)/scripts/main/secrets.nu"
safe-create $"($ROOT)/scripts/core/custom.nu"

mkdir $config.DOWNLOADS
mkdir $config.RESOURCES
mkdir $config.LIB
mkdir $config.BIN
