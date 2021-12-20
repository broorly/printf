SRCS            =   ft_printf.c sub_printf.c

FLAGS           =    -Wall -Wextra -Werror


OBJS            =    $(SRCS:.c=.o)

NAME            =    libftprintf.a

RM              =     rm -f

%.o : %.c ft_printf.h
	cc $(FLAGS) -c $<
	ar rcs $(NAME) $@

$(NAME) : $(OBJS)

all:    $(NAME)

clean:
	${RM} ${OBJS}

fclean:    clean
	${RM} ${NAME}

re:			fclean all