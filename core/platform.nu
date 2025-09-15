use ../util/fs.nu [safe-create]
use ../util/variables.nu [config]
use std/log

module windows {
  export use ../platform/windows/windows.alias.nu *
  export use ../platform/windows/windows.env.nu *
  export use ../platform/windows/windows.pkg.nu *
}

module linux {
    export use ../platform/linux/install.nu *
}

# Enable platform
overlay use $config.OS --prefix as platform

platform alias
platform env
