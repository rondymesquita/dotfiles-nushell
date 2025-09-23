# use ../main/variables.nu

$env.PATH = ($env.PATH | prepend [
	$'($env.box-config.ROOT)/bin'
])

# Set library folder
$env.NU_LIB_DIRS = [
	"~/.nu",
	$'($env.box-config.ROOT)/lib'
]

# Configurations
$env.config.buffer_editor = "code"
$env.config.show_banner = false
$env.config.edit_mode = "emacs" # vi
$env.config.footer_mode = "always" #always, never, number_of_rows, auto
$env.config.table.mode = "compact";
$env.config.use_ansi_coloring = true
