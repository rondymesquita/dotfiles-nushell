# $env.config.keybindings ++= [
#   {
#     name: "complete_directly"
#     modifier: "none"
#     keycode: "tab"
#     mode: ["emacs", "vi_insert"]
#     event: {
# 			until: [
# 				{ send: "historyhintcomplete" }
# 				{ send: "menuright" }
# 				{ send: "right" }
# 			]
# 		}
#   },
# 	{
#     name: "completion_menu_ctrl_space"
#     modifier: "control"
#     keycode: "space"
#     mode: ["emacs", "vi_insert"]
#     event: {
# 			until: [
# 				{ edit: "complete" }
# 			]
# 		}
#   }
# ]

$env.config.keybindings ++= [{
  name: "replace_slash_line_break_and_run"
	modifier: "none"
	keycode: "enter"
	mode: ["emacs", "vi_insert"]
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
