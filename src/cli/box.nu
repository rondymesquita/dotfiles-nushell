use std/log

export def get-packages [] {
  let platform_packages_folder = $"($nu.default-config-dir)/src/platform/($env.box.config.PLATFORM)/packages"
  let default_packages_folder = $"($nu.default-config-dir)/src/packages"

  let transform = {|$item|
    $item | get name | each {|$item_name|

      let $basename = ($item_name | path basename)
      let $name = $basename | split column "." | rename name extension

      {
        name: ($name | get name | get 0),
        extension: ($name | get extension | get 0),
        path: ($item_name | path dirname )
      }
    }
  }

  let $platform_packages = ls $platform_packages_folder | each $transform | insert platform ($env.box.config.PLATFORM)
  let $default_packages = ls $default_packages_folder | each $transform | insert platform default

  let packages = $platform_packages | append $default_packages
  return $packages
}

export def run-bash [$package: record] {
  let path = $"($package.path)/($package.name).($package.extension)"
  open $path | with-env { USER: $env.box.config.USER } { bash -c $in }
}
export def run-nu [package: record] {
  let path = $"($package.path)/($package.name).($package.extension)"
  open $path | do {
    nu -c $in --config $nu.config-path
  }
}

export def box [] {
  help box
}

export def "box help" [] {
  help box
}

export def "box install" [...packageNames: string] {

  if ($packageNames | is-empty) {
    error make -u {msg: "Inform at least one package name"}
  }

  let platform = $env.box.config.PLATFORM

  for $packageName in $packageNames {
    let packages = get-packages
    let platform_package = $packages | where {$in.name == $packageName and $in.platform == $platform} | get --optional 0
    let default_package = $packages | where {$in.name == $packageName and $in.platform == "default"} | get --optional 0


    mut package = $platform_package
    if ($platform_package == null) {
      $package = $default_package
    }

    if ($package == null) {
      error make -u {
        msg: $"Package '($packageName)' not found."
        help: "Run 'box list' to see available packages."
      }
    }

    try {
      log info $"Installing '($packageName)'"
      if ($package.extension == "nu") {
        run-nu $package
      } else if ($package.extension == "sh") {
        run-bash $package
      }
      log info $"Package '($packageName)' installed."
    } catch {|err|
      print $err.rendered
      log error $"Error installing '($packageName)'"
    }
  }
}

export def "box list" [] {
  let packages = get-packages
  print $packages
}
