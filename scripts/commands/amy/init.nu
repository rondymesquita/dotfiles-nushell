# Meu modulo

use ../../util.nu

export const amy = {
  version: "0.0.1"
}

const OUTPUT_FOLDER = "resources"
const OUTPUT_FILE = "resources.json"
let OS = $env.OS

export def amy [f: string] {
    help amy
}

def addFile [path: string] {
    let name = $path | path basename
    let meta = $path | path expand | path parse
    let sourceFolder = $meta.parent | str replace $"($meta.prefix)" ""
    let destinationFolder = $"($util.ROOT)/($OUTPUT_FOLDER)/($OS)/($sourceFolder)"
    let id = $"($sourceFolder)-($name)"
    let record = {
        id: $id
        name: $name
        source: $sourceFolder,
        dest: $destinationFolder
    }
    $record | to json --indent 2 | print

    mkdir $destinationFolder
    cp --recursive $"($sourceFolder)/($name)" $"($destinationFolder)"
}

# imprime cor
export def "amy add" [path: string] {

    if (not ($path | path exists)) {
        error make {msg: $"($path) was not found"}
    }

    if (($path | path type) == "file") {
        addFile $path
    } else if (($path | path type) == "dir") {
        addFile $path
    } else {
        error make {msg: $"($path) of kind ($path | path type) cannot be handled"}
    }

    # cp $record.source $record.dest
}

# imprime modo
export def "amy rm" [e: string] {
    print $"Você escolheu a modo ($e)"
}
