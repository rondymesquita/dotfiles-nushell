use std/log

export def info [msg] {
	log info $"(ansi green)($msg)(ansi reset)"
}

export def error [msg] {
	log info $"(ansi red)($msg)(ansi reset)"
}
