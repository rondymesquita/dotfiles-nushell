use ../util/fs.nu [safe-create]
use std/log

module windows {
  export-env {
    source ../platform/windows/core/windows.cmd.nu
    source ../platform/windows/core/windows.env.nu
    source ../platform/windows/core/windows.pkgs.nu
  }
  export use ../platform/windows/core/windows.alias.nu *
}

# Enable platform
overlay use $config.OS
