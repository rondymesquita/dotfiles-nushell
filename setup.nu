use ./src/util/fs.nu [safe-create]
use ./src/main/variables.nu [config]

let ROOT = $nu.default-config-dir

safe-create $"($ROOT)/src/main/secrets.nu"
safe-create $"($ROOT)/src/core/custom.nu"
safe-create $"($ROOT)/src/bash/custom.sh"

mkdir $env.box.config.DOWNLOADS
mkdir $env.box.config.RESOURCES
mkdir $env.box.config.LIB
mkdir $env.box.config.BIN
