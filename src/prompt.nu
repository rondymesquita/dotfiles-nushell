use ./prompt_functions.nu *

$env.PROMPT_COMMAND = {|| create_left_prompt }
$env.PROMPT_INDICATOR = {|| create_prompt_indicator }
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }
