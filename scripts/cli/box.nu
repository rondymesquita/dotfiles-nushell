use std/log

export def get-packages [] {
  ls $"($nu.default-config-dir)/scripts/platform/($config.PLATFORM)/" | get name | path basename | str replace ".sh" ""
}

export def run-bash [file: string] {
  let path = $"($nu.default-config-dir)/scripts/platform/($config.PLATFORM)/($file).sh"
  open $path | with-env { USER: $config.USER } { bash -c $in }
}

# Main module for using shell and set machine configurations.
export def box [] {
  help box
}

# Show help message
export def "box help" [] {
  help box
}

# Install packages
export def "box install" [...packageNames: string] {

  if ($packageNames | is-empty) {
    error make -u {msg: "Inform at least one package name"}
  }

  for $packageName in $packageNames {
    let packages = get-packages
    let name = $packages | where {$in == $packageName} | get --optional 0

    if ($name == null) {
      error make -u {
        msg: $"Package '($packageName)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    try {
      log info $"Installing '($packageName)'"
      run-bash $name
      log info $"Package '($packageName)' installed."
    } catch {|err|
      print $err.rendered
      log error $"Error installing '($packageName)'"
    }
  }
}

# List packages available for installation
export def "box list" [] {
  let packages = get-packages
  print $packages
}

# Enter in sudo mode
export def "box sudo" [...packageNames: string] {
  do $env.box.cmd.sudo
}
