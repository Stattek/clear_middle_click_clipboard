#
# Makefile to install and build prerequisites for script to clear middle click clipboard
# upon any clipboard event.
#
.PHONY: setup

CLIPNOTIFY_URL:=https://github.com/cdown/clipnotify/archive/refs/heads/master.zip
CLIPNOTIFY_ZIP:=master.zip
CLIPNOTIFY_DIR:=clipnotify-master
CLIPNOTIFY_BIN:=clipnotify

MIDDLE_CLICK_SCRIPT:=./clear_middle_click_clipboard.sh

# install and build clipnotify
setup: $(CLIPNOTIFY_ZIP) $(CLIPNOTIFY_DIR) $(CLIPNOTIFY_BIN)
	@# For Ubuntu-based distributions:
	(which apt > /dev/null && sudo apt install git build-essential libx11-dev libxtst-dev xclip wget zip unzip) || true
	@# For Fedora:
	(which dnf > /dev/null && sudo dnf install git make automake gcc gcc-c++ kernel-devel libx11-devel libxtst-devel xclip wget zip unzip) || true
	cd $(CLIPNOTIFY_DIR) && make all

# run clearing script
run:
	bash $(MIDDLE_CLICK_SCRIPT)

clean:
	rm -rf $(CLIPNOTIFY_DIR)
	rm -rf $(CLIPNOTIFY_ZIP)

$(CLIPNOTIFY_ZIP):
	wget -c --timestamping $(CLIPNOTIFY_URL)

$(CLIPNOTIFY_DIR):
	unzip $(CLIPNOTIFY_ZIP)

$(CLIPNOTIFY_BIN):
	cp $(CLIPNOTIFY_DIR)/$(CLIPNOTIFY_BIN) ./

