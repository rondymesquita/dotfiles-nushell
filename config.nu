use ./scripts/util.nu

# Create needed files
util safe-create $"($util.ROOT)/scripts/credentials.nu"
source ./scripts/credentials.nu

# Init
source ./scripts/config/init.nu

# Load modules
# use ./scripts/modules/example
# example init

source ./scripts/modules/git/init.nu

cd $nu.default-config-dir
