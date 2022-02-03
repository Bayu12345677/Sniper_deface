package_1 = "ncurses-utils"
package_2 = "vim"

install:
		apt-get --fix-missing install $(package_1)
		apt-get --fix-missing install $(package_2)
		@echo
		@echo "installed"
		@echo
run:
	chmod 0755 Sniper.sh.bash
	./Sniper.sh.bash
