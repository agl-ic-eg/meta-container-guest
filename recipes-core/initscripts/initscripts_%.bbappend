# container image do not need fsck at /

do_install_append () {
	# container image do not need fsck at /
	update-rc.d -r ${D} -f checkroot.sh remove
	rm ${D}${sysconfdir}/init.d/checkroot.sh
}

MASKED_SCRIPTS_remove = " \
  checkroot \
  "

CONFFILES_${PN}_remove = "${sysconfdir}/init.d/checkroot.sh"
