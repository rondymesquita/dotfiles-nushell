use ./scripts/util.nu

# Init
source ./scripts/config/init.nu

# Load modules
# use ./scripts/modules/example
# example init

source ./scripts/modules/git/init.nu

cd $nu.default-config-dir
