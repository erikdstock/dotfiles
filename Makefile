# The only working script right now- everything as adapted before.
main:
	source ~/dotfiles/make.sh
dotfiles:
	echo "make dotfiles- todo"

vscode_osx:
	echo "vscode- todo"

install_powerline: install_python
	echo "install_powerline- todo"

install_brew:
	echo "install_brew- todo"

install_python: install_brew
	echo "install_python- todo"

install_ruby: install_brew
	echo "install_ruby- todo"

copy_global_configs:
	echo "copy configs for linters, git, etc"
