export def python [] {
	print "installing python on windows"
	sleep 1sec
	print "done"
}

export def git [] {
	winget install --id Git.Git -e --source winget
}
