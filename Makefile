# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	$(install_conf, conf/php.ini)
	$(install_conf, conf/httpd.conf)

	$(call mk_install_dir, data/httpd/htdocs)
	cp src/php/*.php $(INSTALL_DIR)/data/httpd/htdocs

clean:
	echo -n
