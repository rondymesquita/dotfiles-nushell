{
	ROOT: $nu.default-config-dir,
	PLATFORM: $"(sys host | get name | str downcase | to text)"
}
