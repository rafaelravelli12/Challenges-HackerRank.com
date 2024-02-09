if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    a = []
    for i in arr:
        if i not in a:
            a.append(i)
    # b = list(a.sort()) ???
    a.sort()
    a.pop()

    print(a[-1])

