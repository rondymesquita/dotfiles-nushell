export def hello-ubuntu [] { print "Hello from ubuntu!" }

export-env {
	export def hello-ubuntu2 [] { print "Hello from ubuntu!" }

	$env.PATH = ($env.PATH | prepend [
		"meu-ubuntu"
	])

	$env.box.cmd = {

	}
}
