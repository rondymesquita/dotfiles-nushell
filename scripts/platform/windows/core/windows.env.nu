export-env {
	$env.PATH = ($env.PATH | prepend [
		`c:/Program Files/Git/bin/`
		`C:\Program Files\nodejs\node.exe`
		$'C:\Users\($config.USER)\AppData\Local\Programs\Python\Python313\Scripts\'
		$'C:\Users\($config.USER)\AppData\Local\Programs\Python\Python313\'
	])
}
