
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
export def box [] {
  help box
}

export def "box help" [] {
  help box
}

# Install package
export def "box install" [...packageNames: string] {

  if ($packageNames | is-empty) {
    error make -u {msg: "Inform at least one package name"}
  }

  for $packageName in $packageNames {
    let packages = sheldon getPackages
    let cmd = $packages | get --optional $packageName

    $cmd | describe

    if ($cmd == null) {
      error make -u {
        msg: $"Package '($packageName)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    print $packageName

    do $cmd $packages
  }
}

export def "box list" [] {
  let packages = sheldon getPackages
  $packages | columns
}
