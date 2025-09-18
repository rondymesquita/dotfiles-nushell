export const config = {
	ROOT: $nu.default-config-dir,
	OS: $nu.os-info.name # linux, windows, mac
	USER: "alvaro_silva"
	NODE_VERSION: "22.19.0",
	DOWNLOADS: "./downloads",
	RESOURCES: "./resources",
	LIB: "./lib",
	BIN: "./bin",
}

export-env {
	$env.box = {}
	$env.box.config = $config
}
