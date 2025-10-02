# use ../main/variables.nu

let root = $env.box.config.ROOT

$env.PATH = ($env.PATH | prepend [
	$'($root)/bin'
])

# Set library folder
$env.NU_LIB_DIRS = [
	"~/.nu",
	$'($root)/lib'
]

# Configurations
$env.config.buffer_editor = "code"
$env.config.show_banner = false
$env.config.edit_mode = "emacs" # vi
$env.config.footer_mode = "always" #always, never, number_of_rows, auto
$env.config.table.mode = "compact";
$env.config.use_ansi_coloring = true

# aliases
export alias hello = print "Hello!"
export alias cat = open
export alias exiy = exit
export alias exut = exit
export alias EXIT = exit

# git
export alias gaa = ^git add -A
export alias gau = ^git add -u
export alias gcm = ^git commit -m
export alias gs = ^git status
export alias gb = ^git branch

export def hello-world [] {
		print $"Hello ($env.box.config.USER)"
}
