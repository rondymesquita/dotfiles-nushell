# Initialize all global settings
source ./init.nu

# Load variables and secrets
source ./variables.nu
source ./secrets.nu

# Load core
source ../core/alias.nu
source ../core/env.nu
source ../core/keybindings.nu
source ../core/platform.nu
source ../core/prompt.nu
source ../core/theme.nu

# load custom commands
source ../cmd/git.nu
source ../cmd/amy.nu
source ../cmd/box.nu

# Configure box with variables
