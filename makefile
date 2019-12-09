# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdumouli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/08 16:51:40 by tdumouli          #+#    #+#              #
#    Updated: 2019/12/06 17:37:11 by tdumouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AUTEUR = "tdumouli"
NAMEI = libfts.a
OBJDIR = objet
SRCDIR = ./src
INCDIR = -I./include


LIBC = isalpha bzero strcat isdigit isalnum isascii isprint toupper tolower \
	   strlen memset puts putstr putchar memcpy cat putnbr strchr \
		isspace memcmp

OBJ		 =	$(addprefix $(OBJDIR)/ft_, $(addsuffix .o, $(LIBC)))

LSTDIRI =
debugg = 

############################## normaly no change ###############################


NO_COLOR="\x1b[39m"
RED="\x1b[31m"
GREEN="\x1b[32m"
YELLOW="\x1b[33m"
CC = gcc
ASM = nasm
CFLAGS = -f elf64 -g
MAKE = /usr/bin/make

LSTDIR=	$(addprefix $(OBJDIR)/, $(LSTDIRI)) \

ifneq ($(NAMEI), )
all: $(NAMEI)
else
all: 
	@$(MAKE) $(NAME)
	@echo $(GREEN)"compilation reussi"$(NO_COLOR)
endif

$(OBJDIR):
	@if ! [ -d $(OBJDIR) ]; then\
		mkdir $(OBJDIR) $(LSTDIR);\
	fi

$(OBJDIR)/%.o: $(SRCDIR)/%.s
	$(ASM) $(CFLAGS) $< -o $@
	@echo $(GREEN)$@" compile"$(NO_COLOR)

$(NAMEI): $(OBJDIR) $(OBJ)
	ar rcs $(NAMEI) $(OBJ)
#	ranlib $(NAMEI)
	@echo $(GREEN)"library compile"$(NO_COLOR)

clean:
	@rm -rf $(OBJ)
	@$(MAKE) cleanv

ifeq ($(shell find . -type f | grep "\.o"), )
cleanv:
	@rm -fr $(OBJDIR)
	@echo $(GREEN)"les objets sont clean"$(NO_COLOR)
else
cleanv:
	@echo $(RED)"il ya probleme"
	@echo $(YELLOW)$(shell echo | find . -type f | grep "\.o" | cat -e)
	exit
endif

cl:
	@if [ "test" = "test" ]; then\
		echo "Hello world";\
	fi

auteur:
	@echo $(AUTEUR) > auteur
	@echo $(GREEN)"le fichier auteur a bien ete cree"$(NO_COLOR)

fclean: clean
	@rm -f $(NAMEI)
	@echo $(GREEN)"tout est clean"$(NO_COLOR)

re: fclean
	@make all

.PHONY: all clean fclean re cleanv anc
