BIN_PATH := /usr/local/bin

default: all

all:
	@echo "Putting prompt-mail.conf in ~/.config"
	@mkdir -p ~/.config
	@cp prompt-mail.conf ~/.config
	@echo "Done"
install:
	@echo "Putting prompt-mail in ${BIN_PATH}"
	@cp prompt-mail ${BIN_PATH}
	@echo "Done"

uninstall:
	@echo "Deleting ${BIN_PATH}/prompt-mail"
	@rm -f ${BIN_PATH}/prompt-mail
	@echo "Deleting ~/.config/prompt-mail.conf"
	@rm -f ~/.config/prompt-mail.conf
	@echo "Done"
