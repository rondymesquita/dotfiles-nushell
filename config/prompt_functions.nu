export def get_current_git_branch [] {
    mut prompt = ""
    mut current_branch = (git branch --show-current out+err | complete).stdout
    $current_branch = $current_branch | str trim

    if ($current_branch != "" and not ($current_branch | str contains "fatal")) {
        $prompt = $"(ansi white) on (ansi purple)($current_branch)(ansi reset)"
    }
    return $prompt
}

export def get_indicator [] {
    let indicator = "❯"
    mut prompt = $"(ansi green) ($indicator) (ansi reset)"
    if ($env.LAST_EXIT_CODE != 0) {
        $prompt = $"(ansi red) [($env.LAST_EXIT_CODE)] ($indicator)(ansi reset)"
    }
    return $prompt
}

export def create_left_prompt [] {
    let path_str = ($env.PWD | path basename)
    let cwd = $"(ansi green)($path_str)(ansi reset)"

    let branch = get_current_git_branch
    let indicator = get_indicator

    return $"($cwd)($branch)($indicator) \n"
}

export def create_prompt_indicator [] {
}
export def create_right_prompt [] {
}
