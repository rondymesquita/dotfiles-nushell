use ../util/fs.nu [safe-create]
use ../main/variables.nu [config]
use std/log

module windows {
  export use ../platform/windows/core/windows.alias.nu *
  export use ../platform/windows/core/windows.env.nu *
  export use ../platform/windows/core/windows.pkg.nu *
}

module linux {
    export use ../platform/linux/install.nu *
}

# Enable platform
overlay use $config.OS --prefix as platform
platform alias
platform env
