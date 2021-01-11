CFG_PATH = ~/.config/prompt-mail.conf
BIN_PATH = /usr/local/bin/prompt-mail

all: config install

# Empty recipes, only install if there isn't already one.
config: ${CFG_PATH}

install:
	@echo "Putting prompt-mail in ${BIN_PATH}."
	@cp prompt-mail ${BIN_PATH}

${CFG_PATH}:
	@echo -e "I have setup your toiling space ${CFG_PATH}\nEdit it, slave!"
	@echo "#Comments must be at the beginning of the line." > ${CFG_PATH}
	@echo "# No ~ expansion allowed." >> ${CFG_PATH}
	@echo -e "# Example line:\n" >> ${CFG_PATH}
	@echo "#${HOME}/.config/neomutt/aliases" >> ${CFG_PATH}
