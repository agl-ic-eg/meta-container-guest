# container image do not need /dev/root remount

FILESEXTRAPATHS_prepend := "${THISDIR}/base-files:"

do_install_append() {
	# container image do not need /dev/root remount
	sed -i -e 's/\/dev\/root/#\/dev\/root/' ${D}${sysconfdir}/fstab
}
