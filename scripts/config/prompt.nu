use ./utils/git.nu

$env.PROMPT_COMMAND = {|| create_prompt }
$env.PROMPT_INDICATOR = {|| create_prompt_indicator }
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

export def parse_format [format: string] {

    mut prompt = $format

    if ($format | str contains "{cwd}") {
        $prompt = $prompt | str replace "{cwd}" (get_pwd)
    }
    if ($format | str contains "{branch}") {
        $prompt = $prompt | str replace "{branch}" (get_git_branch)
    }
    if ($format | str contains "{indicator}") {
        $prompt = $prompt | str replace "{indicator}" (get_indicator)
    }

    print $prompt
}

export def get_git_branch [] {
    mut prompt = ""
    let current_branch = git get_current_branch

    if ($current_branch != "" and not ($current_branch | str contains "fatal")) {
        $prompt = $"(ansi white) on (ansi purple)($current_branch)(ansi reset)"
    }
    return $prompt
}

export def get_indicator [] {
    let indicator = "❯"
    mut prompt = $"(ansi green)($indicator)(ansi reset)"
    if ($env.LAST_EXIT_CODE != 0) {
        $prompt = $"(ansi red)[($env.LAST_EXIT_CODE)] ($indicator)(ansi reset)"
    }
    return $prompt
}

export def get_pwd [] {
    let path_str = ($env.PWD | path basename)
    let cwd = $"(ansi green)($path_str)(ansi reset)"
    return $cwd
}

export def create_prompt [] {
    let prompt = parse_format "{cwd}{indicator}"
    return $prompt
}

export def create_prompt_indicator [] {
}
export def create_right_prompt [] {
}
