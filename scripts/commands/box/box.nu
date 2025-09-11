# Meu modulo

use ../../util/fs.nu [safe-create]
use std/log

export const box = {
  version: "0.0.1"
}

export def box [subcommand: string] {
    help box
}

export def "box setup" [] {

}
