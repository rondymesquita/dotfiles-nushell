use ./src/util/fs.nu [safe-create]
use ./src/main/variables.nu [config]

let ROOT = $nu.default-config-dir

safe-create $"($ROOT)/src/main/secrets.nu"
safe-create $"($ROOT)/src/core/custom.nu"
safe-create $"($ROOT)/src/bash/custom.sh"

mkdir $config.DOWNLOADS
mkdir $config.RESOURCES
mkdir $config.LIB
mkdir $config.BIN
