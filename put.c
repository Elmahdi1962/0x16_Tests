#include <stdio.h>
#include <unistd.h>

/**
 * main - Prints some text to the output file
 * @ac: The number of arguments
 * @argv: The arguments
 *
 * Return: 0 if successful, otherwise -1
 */
int main (int ac, char *argv[])
{
	if (ac == 2)
	{
		printf("%s", argv[1]);
		return (0);
	}
	else
	{
		write(STDERR_FILENO, "Usage: put text", 15);
		return (-1);
	}
}
