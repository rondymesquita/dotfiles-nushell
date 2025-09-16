$env.config.keybindings ++= [
  {
    name: "complete_directly"
    modifier: "none"
    keycode: "tab"
    mode: ["emacs", "vi_insert"]
    event: {
			until: [
				{ send: "historyhintcomplete" }
				{ send: "menuright" }
				{ send: "right" }
			]
		}  # Executa o auto-complete direto
  },
	{
    name: "completion_menu_ctrl_space"
    modifier: "control"
    keycode: "space"
    mode: ["emacs", "vi_insert"]
    event: {
			until: [
				{ edit: "complete" }
			]
		}
  }
]
