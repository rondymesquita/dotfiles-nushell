use ./scripts/util.nu

# Load configurations
source ./scripts/config/init.nu

# Load commands
source ./scripts/commands/amy/init.nu
source ./scripts/commands/git/init.nu

cd $nu.default-config-dir
