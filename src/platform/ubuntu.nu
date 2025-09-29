export def hello-ubuntu [] { print "Hello from ubuntu!" }
export alias hello-linux = print "Hello from Linux!"

export-env {

	$env.JAVA_HOME = '/usr/lib/jvm/java-11-openjdk-amd64'
	$env.PATH = ($env.PATH | prepend [
		$"($env.JAVA_HOME)/bin"
	])

}
