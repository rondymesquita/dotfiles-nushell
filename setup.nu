use ./util/fs.nu [safe-create]
use ./util/config.nu [config]
use std/log

safe-create $"($nu.default-config-dir)/core/credentials.nu"

mkdir $config.DOWNLOADS
