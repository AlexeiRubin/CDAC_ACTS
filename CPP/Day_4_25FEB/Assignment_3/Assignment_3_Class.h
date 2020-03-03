class MyStringFunctions
{
	char *str;

	public:
			MyStringFunctions();
			void read();
			void write();
			char *StrCpy(char * dest, const char *src);
			bool *StrCmp(const char *s1, const char *s2);
			char *StrCat(char *dest, const char *src);
};
