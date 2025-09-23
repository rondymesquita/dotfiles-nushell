export alias hello = print "Hello!"
export alias cat = open
export alias exiy = exit
export alias exut = exit
export alias EXIT = exit

# git
export alias gaa = ^git add -A
export alias gau = ^git add -u
export alias gcm = ^git commit -m
export alias gs = ^git status
export alias gb = ^git branch

export def hello-world [] {
		print $"Hello ($env.box-config.USER)"
}
