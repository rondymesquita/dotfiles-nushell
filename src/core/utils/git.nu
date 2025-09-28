export def get_current_branch [] {
	let current_branch = (^git branch --show-current | complete).stdout | str trim
	return $current_branch
}
