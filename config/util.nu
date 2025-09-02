export def safe-create [file: string] {
	if (not ($file | path exists)) {
		print $"Creating ($file)"
		"" | save $file
	}
}
