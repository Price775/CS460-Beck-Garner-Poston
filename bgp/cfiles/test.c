void printInt(int x) {}
void printSpace() {}
void printNewline() {}

int add(int x, int y)
{
    return x + y;
}

int sub(int x, int y)
{
    return x - y;
}

int main()
{
    int x = 2, y = 1;
    printInt(add(x, y));
    printNewline();
    printInt(sub(x, y));
    return 0;
}
