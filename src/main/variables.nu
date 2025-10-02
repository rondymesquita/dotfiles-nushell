export-env {
	$env.box.config = {
		ROOT: $nu.default-config-dir,
		PLATFORM: (sys host | get name | str downcase),
		USER: "alvaro_silva",
		NODE_VERSION: "22.19.0",
		DOWNLOADS: "./downloads",
		RESOURCES: "./resources",
		LIB: "./lib",
		BIN: "./bin",
	}
}

# (source variable.template.nu) | into record | to nuon --indent 2 | to text | prepend "export const config = " | str join "" | save temp.nu -f
