export-env {
	$env.box.cmd = {
		sudo: {||
			# https://learn.microsoft.com/en-us/windows/advanced-settings/sudo/
			# sudo config --enable normal
			^sudo -E nu
		}
	}
}
