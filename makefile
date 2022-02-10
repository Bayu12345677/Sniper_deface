package_1 = "ncurses-utils"
package_2 = "vim"
package_3 = "figlet"

install:
		apt-get --fix-missing install $(package_1)
		apt-get --fix-missing install $(package_2)
		apt-get --fix-missing install $(package_3)
		@echo
		@echo "installed"
		@echo
run:
	chmod 0755 Sniper.sh.bash
	./Sniper.sh.bash
