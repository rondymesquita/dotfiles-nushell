use ./_variables.nu *
use ./functions.nu

# Setup script to initialize necessary files and directories
export def execute [] {
	functions safe-create $"($BOX_ROOT)/src/credentials.nu"
}
