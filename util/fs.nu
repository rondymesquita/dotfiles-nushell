export def safe-create [file: string] {
	if (not ($file | path exists)) {
		print $"Creating ($file)"
		"" | save $file
	}
}

export def check-file [path: string, errMessage: string] {
  if (not ($path | path exists)) {
		error make {msg: $errMessage}
	}
}
