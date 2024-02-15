if __name__ == '__main__':
    s = input()

    a = 0
    for i in range(len(s)):
        if s[i].isalnum() == True:
            a = a + 1
    if a >= 1:
        print(True)
    else:
        print(False)

    b = 0
    for i in range(len(s)):
        if s[i].isalpha() == True:
            b = b + 1
    if b >= 1:
        print(True)
    else:
        print(False)
    
    c = 0
    for i in range(len(s)):
        if s[i].isdigit() == True:
            c = c + 1
    if c >= 1:
        print(True)
    else:
        print(False)

    d = 0
    for i in range(len(s)):
        if s[i].islower() == True:
            d = d + 1
    if d >= 1:
        print(True)
    else:
        print(False)

    e = 0
    for i in range(len(s)):
        if s[i].isupper() == True:
            e = e + 1
    if e >= 1:
        print(True)
    else:
        print(False)

