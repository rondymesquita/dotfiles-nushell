export def env --env [] {

	$env.PATH = ($env.PATH | prepend [
		`c:/Program Files/Git/bin/`,
		`c:/Program Files/nodejs/`
	])

}

# Enter in sudo mode
export def sudo [] {
	# https://learn.microsoft.com/en-us/windows/advanced-settings/sudo/
	# sudo config --enable normal

  ^sudo -E nu
}
