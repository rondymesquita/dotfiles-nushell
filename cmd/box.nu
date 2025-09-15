export const box = {
  version: "0.0.1"
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
    let packages = platform getPackages
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

# List packages available for installation
export def "box list" [] {
  let packages = platform getPackages
  $packages | columns
}

# Enter in sudo mode
export def "box sudo" [] {
	platform sudo
}
