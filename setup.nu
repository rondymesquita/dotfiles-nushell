use ./util/fs.nu [safe-create]
use ./util/config.nu [config]

safe-create $"($nu.default-config-dir)/core/credentials.nu"

mkdir $config.DOWNLOADS
mkdir $config.RESOURCES
