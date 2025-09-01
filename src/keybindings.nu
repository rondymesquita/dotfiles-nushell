# No config.nu
$env.config.keybindings ++= [
  # Tab: completa automaticamente
  {
    name: "complete_directly"
    modifier: "none"
    keycode: "tab"
    mode: ["emacs", "vi_insert"]
    event: { edit: "Complete" }  # Executa o auto-complete direto
  }
  # Ctrl+Space: abre o menu de autocompletar
  {
    name: "completion_menu_ctrl_space"
    modifier: "control"
    keycode: "space"
    mode: ["emacs", "vi_insert"]
    event: { send: "menu" name: "completion_menu" }
  }
]
