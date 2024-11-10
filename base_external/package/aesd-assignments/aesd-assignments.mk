##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 626da815d380e5cd83b1c47dbd568bf9bc62e47b
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-DL821at.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin


    # Install all files from the specified directory to /usr/bin/
    $(INSTALL) -m 0755 $(@D)/finder-app/* $(TARGET_DIR)/usr/bin/
endef


$(eval $(generic-package))
