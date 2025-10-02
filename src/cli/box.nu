use std/log

export def get-packages [] {
  ls $"($nu.default-config-dir)/src/platform/($env.box.config.PLATFORM)/" | get name | path basename | split column "." | rename name ext
}

export def run-bash [file: string] {
  let path = $"($nu.default-config-dir)/src/platform/($env.box.config.PLATFORM)/($file).sh"
  open $path | with-env { USER: $env.box.config.USER } { bash -c $in }
}
export def run-nu [file: string] {
  let path = $"($nu.default-config-dir)/src/platform/($env.box.config.PLATFORM)/($file).nu"
  open $path | do {
    nu -c $in --config $nu.config-path
  }
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
    let package = $packages | where {$in.name == $packageName} | get --optional 0

    if ($package == null) {
      error make -u {
        msg: $"Package '($packageName)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    try {
      log info $"Installing '($packageName)'"
      if ($package.ext == "nu") {
        run-nu $package.name
      } else if ($package.ext == "sh") {
        run-bash $package.name
      }
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
