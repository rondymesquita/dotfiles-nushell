# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

source ./src/_constants.nu
source ./src/_variables.nu

use ./src/setup.nu
setup execute

source ./src/env.nu
source ./src/credentials.nu
source ./src/alias.nu
source ./src/prompt.nu
source ./src/keybindings.nu

cd $nu.default-config-dir
# cd ~/Documents/dev/projects/icicle/on-prem-manager
