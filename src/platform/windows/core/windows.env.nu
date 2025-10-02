export-env {
	$env.PATH = ($env.PATH | prepend [
		`c:/Program Files/Git/bin/`
		`C:\Program Files\nodejs\node.exe`
		$'C:\Users\($env.box.config.USER)\AppData\Local\Programs\Python\Python310\Scripts\'
		$'C:\Users\($env.box.config.USER)\AppData\Local\Programs\Python\Python310\'
	])
}
