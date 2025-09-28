$env.config.keybindings = [{
  name: "replace_slash_line_break_and_run"
	modifier: "none"
	keycode: "enter"
	mode: ["emacs"]
  event: [
		{
			send: executehostcommand,
			cmd: '
				mut cmd = (commandline)
				$cmd = $cmd | str replace --all --regex '\\\n' ''
				commandline edit ($cmd) --accept
			'
		}
	]
}]
