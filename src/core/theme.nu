use ./utils/colors.nu
# we're creating a theme here that uses the colors we defined above.

let theme = {
    separator: $colors.base03
    leading_trailing_space_bg: $colors.base04
    header: $colors.base0d
    date: $colors.base0e
    filesize: $colors.base0d
    row_index: $colors.base0c
    bool: $colors.base08
    int: $colors.base0b
    duration: $colors.base08
    range: $colors.base08
    float: $colors.base08
    string: $colors.base04
    nothing: $colors.base08
    binary: $colors.base08
    cellpath: $colors.base08
    hints: dark_gray

    # shape_garbage: { fg: $colors.base07 bg: $colors.base08 attr: n } # base16 white on red
    # but i like the regular white on red for parse errors
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: n }
    shape_bool: $colors.base0d
    shape_int: { fg: $colors.base0e attr: n }
    shape_float: { fg: $colors.base0e attr: n }
    shape_range: { fg: $colors.base0a attr: n }
    shape_internalcall: { fg: $colors.base0c attr: n }
    shape_external: $colors.base0c
    shape_externalarg: { fg: $colors.base0b attr: n }
    shape_literal: $colors.base0d
    shape_operator: $colors.base0a
    shape_signature: { fg: $colors.base0b attr: n }
    shape_string: $colors.base0b
    shape_filepath: $colors.base0d
    shape_globpattern: { fg: $colors.base0d attr: n }
    shape_variable: $colors.base0e
    shape_flag: { fg: $colors.base0d attr: n }
    shape_custom: { attr: n }
}

# now let's apply our regular config settings but also apply the "color_config:" theme that we specified above.

# $env.config.animate_prompt = false
$env.config.color_config = $theme # <-- this is the theme
