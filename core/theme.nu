use ./utils/colors.nu *
# we're creating a theme here that uses the colors we defined above.

let base16_theme = {
    separator: $base03
    leading_trailing_space_bg: $base04
    header: $base0d
    date: $base0e
    filesize: $base0d
    row_index: $base0c
    bool: $base08
    int: $base0b
    duration: $base08
    range: $base08
    float: $base08
    string: $base04
    nothing: $base08
    binary: $base08
    cellpath: $base08
    hints: dark_gray

    # shape_garbage: { fg: $base07 bg: $base08 attr: n } # base16 white on red
    # but i like the regular white on red for parse errors
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: n }
    shape_bool: $base0d
    shape_int: { fg: $base0e attr: n }
    shape_float: { fg: $base0e attr: n }
    shape_range: { fg: $base0a attr: n }
    shape_internalcall: { fg: $base0c attr: n }
    shape_external: $base0c
    shape_externalarg: { fg: $base0b attr: n }
    shape_literal: $base0d
    shape_operator: $base0a
    shape_signature: { fg: $base0b attr: n }
    shape_string: $base0b
    shape_filepath: $base0d
    shape_globpattern: { fg: $base0d attr: n }
    shape_variable: $base0e
    shape_flag: { fg: $base0d attr: n }
    shape_custom: { attr: n }
}

# now let's apply our regular config settings but also apply the "color_config:" theme that we specified above.

# $env.config.animate_prompt = false
$env.config.color_config = $base16_theme # <-- this is the theme
$env.config.edit_mode = "emacs" # vi
$env.config.footer_mode = "always" #always, never, number_of_rows, auto
$env.config.table.mode = "compact";
$env.config.use_ansi_coloring = true
