# Load configurations
source ./core/init.nu

# Load commands
source ./cmd/amy/amy.nu
source ./cmd/git/git.nu
source ./cmd/box/box.nu

# source ./overlay.nu

cd $nu.default-config-dir
