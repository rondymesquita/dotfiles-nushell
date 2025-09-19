use std/log

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
    let packages = $env.box.packages
    let cmd = $packages | get --optional $packageName

    if ($cmd == null) {
      error make -u {
        msg: $"Package '($packageName)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    try {
      log info $"Installing '($packageName)'"
      do $cmd $packages
      log info $"Package '($packageName)' installed."
    } catch {|err|
      print $err.rendered
      log error $"Error installing '($packageName)'"
    }
  }
}

# List packages available for installation
export def "box list" [] {
  let packages = $env.box.packages
  $packages | columns
}

# Enter in sudo mode
export def "box sudo" [] {
	do $env.box.cmd.sudo
}
