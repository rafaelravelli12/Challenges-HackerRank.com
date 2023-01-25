import textwrap

def wrap(string, max_width):
    a = textwrap.wrap(string, max_width)
    b = "\n".join(a)
    return b

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)
