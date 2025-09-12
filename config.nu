# Load configurations
source ./util/config.nu

# Load core
source ./core/init.nu

# Load commands
source ./cmd/amy/amy.nu
source ./cmd/git/git.nu
source ./cmd/box/box.nu

cd $nu.default-config-dir
