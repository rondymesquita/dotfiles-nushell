# mod.nu can export like this
export module ./version.nu

use ./version.nu *
# $AMY_VERSION

use ./version.nu
# $version.AMY_VERSION

export def init [] {
	# print "Amy init"
	# print $AMY_VERSION
	# print $version.AMY_VERSION
}
