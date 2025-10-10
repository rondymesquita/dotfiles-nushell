$env.config.keybindings = [{
  name: "replace_slash_line_break_and_run"
	modifier: "control"
	keycode: "enter"
	mode: "emacs"
  event: [
		{
			send: executehostcommand,
			cmd: '
				mut cmd = (commandline)
				let $line_break_regex = '\\\n'
				# let $line_break_or_slash_line_break_regex = '(\n|\\n)'
				$cmd = $cmd | str replace --all --regex $line_break_regex ''
				commandline edit $"($cmd)" --accept
			'
		},
	]
}]
