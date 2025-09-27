# # Load configurations
source ./scripts/main/main.nu
# cd $nu.default-config-dir

# $env.config = (
#   $env.config
#   | upsert hooks.pre_execution [
#       {
#         condition: {|| true }
#         code: {||
# 					let was_replaced = ($env | get --optional "was_replaced" | false)
# 					if ($was_replaced) {
# 						return
# 					}

# 					let orig = (commandline)
# 					if ($orig | str contains "\\/n") {
# 						let new = ($orig | str replace "\\/n" "")
# 						commandline edit --replace $new --accept
# 						$env.was_replaced = true
# 					} else {
# 						commandline edit $orig --accept
# 						$env.was_replaced = false
# 					}
#         }
#       }
#     ]
# )
