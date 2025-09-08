use ./scripts/util.nu

# Load configurations
source ./scripts/config/init.nu

# Load modules
# use ./scripts/modules/example
# example init

source ./scripts/modules/git/init.nu

cd $nu.default-config-dir
