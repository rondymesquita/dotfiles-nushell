export const ROOT = $nu.config-path | path dirname | str trim

export def safe-create [file: string] {
	if (not ($file | path exists)) {
		print $"Creating ($file)"
		"" | save $file
	}
}
