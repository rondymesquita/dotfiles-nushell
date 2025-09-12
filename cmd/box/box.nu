
use ../../util/fs.nu [safe-create]
use ../../util/config.nu [config]
use std/log

module windows {
  export use ./windows/install.nu
}

module linux {
    export use ./linux/install.nu
}

overlay use $config.OS --prefix as sheldon

export const box = {
  version: "0.0.1"
}

# Meu modulo
export def box [subcommand: string] {
    help box
}

# Install apps
export def "box install" [...apps: string] {
  print $apps

  for $app in $apps {
    match $app {
      "python" => { sheldon install python }
      _ => { box help }
    }
  }

}
