use ./util/fs.nu [safe-create]
use ./variables.nu [config]

safe-create $"($nu.default-config-dir)/box/credentials.nu"

mkdir $config.DOWNLOADS
mkdir $config.RESOURCES
