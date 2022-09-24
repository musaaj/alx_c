/**
 * _strlen - find the number of characters in a string
 * @s: character array
 * Return: int number of char in s
*/

int _strlen(char* s)
{
	int i = 0;
	
	if (*s == EOL)
	{
		i++;
		return (_strlen(s--));
	}
	return (i);
}
