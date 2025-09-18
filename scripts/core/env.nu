# use ../main/variables.nu

$env.PATH = ($env.PATH | prepend [
	$'($config.ROOT)/bin'
])

# Set library folder
$env.NU_LIB_DIRS = [
	"~/.nu",
	$'($config.ROOT)/lib'
]

# Configurations
$env.config.buffer_editor = "code"
$env.config.show_banner = false
