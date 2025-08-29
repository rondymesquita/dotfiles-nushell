# Path
$env.PATH = ($env.PATH | prepend `c:/Program Files/Git/bin/`)

# Set library folder
$env.NU_LIB_DIRS = ["~/.nu"]

# Configurations
$env.config.buffer_editor = "code"
$env.config.show_banner = false
