use std/log

module windows {
  export-env {
    source ../platform/windows/core/windows.cmd.nu
    source ../platform/windows/core/windows.env.nu
    source ../platform/windows/core/windows.pkgs.nu
  }
  export use ../platform/windows/core/windows.alias.nu *
}

source $"($nu.default-config-dir)/src/platform/ubuntu/core/env.nu"
