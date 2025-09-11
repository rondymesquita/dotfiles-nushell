use ./scripts/util/fs.nu [safe-create]
use std/log

safe-create $"($nu.default-config-dir)/scripts/core/credentials.nu"
log info "Credentials file created"
