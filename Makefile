# Installation von xfce4-panel-switch
# (c) Adam Jaquet

PANEL		= xfce4-panel-switch

install:
	cp $(PANEL).sh /usr/bin/$(PANEL)
	chmod 755 /usr/bin/$(PANEL)
	chown root:root /usr/bin/$(PANEL)
	echo "install done ..."

uninstall:
	touch ~/.config/$(PANEL).conf
	rm ~/.config/$(PANEL).conf
	touch /usr/bin/$(PANEL)
	rm /usr/bin/$(PANEL)
	echo "uninstall done ..."

