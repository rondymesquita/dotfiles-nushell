export const config = {
	ROOT: $nu.default-config-dir,
	PLATFORM: "ubuntu",
	USER: "alvaro_silva",
	NODE_VERSION: "22.19.0",
	DOWNLOADS: "./downloads",
	RESOURCES: "./resources",
	LIB: "./lib",
	BIN: "./bin",
}

print $config

# mut fulano = {
# 	sicrano: $"(sys host | get name | str downcase)"
# }

# $config.PLATFORM = $"(sys host | get name | str downcase)"
