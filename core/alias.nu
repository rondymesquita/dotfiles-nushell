use ../util/variables.nu [config]

export alias hello = print "Hello!"
export alias cat = open
export alias exiy = exit

export def hello-world [] {
		print $"Hello ($config.USER)"
}
