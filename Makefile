build: clean
	cd .. && tar zcvf musnix.tar.gz musnix

update: build
	sudo nix-channel --update

add-channel: build
	sudo nix-channel --add file://$(CURDIR)/../musnix.tar.gz musnix
	sudo nix-channel --update

clean:
	cd .. && rm -f musnix.tar.gz

.PHONY: build clean update add-channel
