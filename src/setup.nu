use ./functions.nu
use ./variables.nu *

# Setup script to initialize necessary files and directories
export def execute [] {
	functions safe-create $"($BOX_ROOT)/src/credentials.nu"
}
