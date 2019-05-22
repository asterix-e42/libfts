# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdumouli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/08 16:51:40 by tdumouli          #+#    #+#              #
#    Updated: 2019/05/22 17:36:38 by tdumouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AUTEUR = "tdumouli"
NAMEI = libfts.a
NAME =
OBJDIR = objet
SRCDIR = ./src
INCDIR = -I./include


LIBC = isalpha bzero strcat isdigit isalnum isascii isprint toupper tolower \
	   strlen memset puts putstr putchar memcpy strdup cat

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
CFLAGS = -f macho64 -g
MAKE = /usr/bin/make

LSTDIR=	$(addprefix $(OBJDIR)/, $(LSTDIRI)) \

ifneq ($(NAMEI), )
all: objdir $(NAMEI)
	@echo $(GREEN)"compilation reussi"$(NO_COLOR)
else
all: objdir
	@$(MAKE) $(NAME)
	@echo $(GREEN)"compilation reussi cpl"$(NO_COLOR)
endif

objdir:
	@if ! [ -d $(OBJDIR) ]; then\
		mkdir $(OBJDIR) $(LSTDIR);\
	fi

$(OBJDIR)/%.o: $(SRCDIR)/%.s
	$(ASM) $(CFLAGS) $< -o $@
	@echo $(GREEN)$@" compile"$(NO_COLOR)

$(NAMEI): $(OBJ)
	ar rcs $(NAMEI) $(OBJ)
	ranlib $(NAMEI)
	@echo $(GREEN)"library compile"$(NO_COLOR)

$(NAME_NM): $(OBJ_NM)
	$(MAKE) -C ./libft
	$(CC) $(OBJ_NM) ./$(LIB) -o $(NAME_NM) $(DEBUG)
	@echo $(GREEN)$(NAME_NM)" a ete cree"$(NO_COLOR)

$(NAME_OTOOL): $(OBJ_OTOOL)
	$(MAKE) -C ./libft
	$(CC) $(OBJ_OTOOL) ./$(LIB) -o $(NAME_OTOOL) $(DEBUG)
	@echo $(GREEN)$(NAME_OTOOL)" a ete cree"$(NO_COLOR)

clean:
	@rm -rf $(OBJ)
	@$(MAKE) cleanv

ifeq ($(shell find . -type f | grep "\.o"), )
cleanv:
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
	@rm -f $(NAME_NM) $(NAME_OTOOL)
	@echo $(GREEN)"tout est clean"$(NO_COLOR)

re: fclean
	@make all

.PHONY: all clean fclean re cleanv anc
