export def hello-ubuntu [] { print "Hello from ubuntu!" }
export alias hello-linux = print "Hello from Linux!"

export-env {

	$env.PATH = ($env.PATH | prepend [
		"meu-ubuntu"
	])

	$env.box.cmd = {

	}
}
