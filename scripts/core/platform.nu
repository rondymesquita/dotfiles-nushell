use std/log

module windows {
  export-env {
    source ../platform/windows/core/windows.cmd.nu
    source ../platform/windows/core/windows.env.nu
    source ../platform/windows/core/windows.pkgs.nu
  }
  export use ../platform/windows/core/windows.alias.nu *
}

export-env {
  source $"($nu.default-config-dir)/scripts/platform/ubuntu.nu"
}
