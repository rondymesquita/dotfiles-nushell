# Load configurations
source ./scripts/core/init.nu

# Load commands
source ./scripts/commands/amy/amy.nu
source ./scripts/commands/git/git.nu
source ./scripts/commands/box/box.nu

cd $nu.default-config-dir
