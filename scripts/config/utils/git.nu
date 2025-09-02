export def get_current_branch [] {
	# let start = (date now)
	let current_branch = (git branch --show-current | complete).stdout | str trim
	# let end = (date now) - $start
	# print $"Time taken to get current branch: ($end)"
	return $current_branch
}
