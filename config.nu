# Load configurations
source ./util/variables.nu

# Load core
source ./core/init.nu

# Load commands
source ./cmd/amy.nu
source ./cmd/git.nu
source ./cmd/box.nu

cd $nu.default-config-dir
