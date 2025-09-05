use ./utils/git.nu
use ./utils/colors.nu

$env.PROMPT_COMMAND = {|| create_prompt }
$env.PROMPT_INDICATOR = {|| create_prompt_indicator }
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

def parse_format [format: string] {

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

def get_git_branch [] {
    mut prompt = ""
    let current_branch = git get_current_branch

    if ($current_branch != "" and not ($current_branch | str contains "fatal")) {
        $prompt = $"(ansi white) on (ansi $colors.base0e)($current_branch)(ansi reset)"
    }
    return $prompt
}

def get_indicator [] {
    let indicator = "❯"
    mut prompt = $"(ansi $colors.base0b)($indicator)(ansi reset)"
    if ($env.LAST_EXIT_CODE != 0) {
        $prompt = $"(ansi $colors.base08)[($env.LAST_EXIT_CODE)] ($indicator)(ansi reset)"
    }
    return $prompt
}

def get_pwd [] {
    let path_str = ($env.PWD | path basename)
    let cwd = $"(ansi $colors.base0c)($path_str)(ansi reset)"
    return $cwd
}

def create_prompt [] {
    let prompt = parse_format "{cwd} {indicator}"
    return $prompt
}

def create_prompt_indicator [] {
}
def create_right_prompt [] {
}
