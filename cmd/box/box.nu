
use ../../util/fs.nu [safe-create]
use ../../util/config.nu [config]
use std/log

module windows {
  export use ./windows/windows.nu *
}

module linux {
    export use ./linux/install.nu *
}

overlay use $config.OS --prefix as sheldon

export const box = {
  version: "0.0.1"
}

# module
export def box [cmd: string] {}

export def "box help" [] {
  help box
}

export def "box install" [...pkgs: string] {
  for $pkg in $pkgs {
    let pkgs = sheldon getPackages
    let cmd = $pkgs.install | get --optional $pkg

    $cmd | describe

    if ($cmd == null) {
      error make -u {
        msg: $"Package '($pkg)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    print $pkg

    do $cmd
  }
}

export def "box list" [] {
  let pkgs = sheldon getPackages
  $pkgs.install | columns
}
