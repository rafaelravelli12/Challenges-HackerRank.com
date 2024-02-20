if __name__ == '__main__':
    print("Create your list. The possible arguments are: insert, print, remove, append, sort, pop, reverse")
    N = int(input())
    a = []
    for i in range(N):
        b = input()
        c = b.split()
        if c[0] == "insert":
            a.insert(int(c[1]), int(c[2]))
        elif c[0] == "print":
            print(a)
        elif c[0] == "remove":
            a.remove(int(c[1]))
        elif c[0] == "append":
            a.append(int(c[1]))
        elif c[0] == "sort":
            a.sort()
        elif c[0] == "pop":
            a.pop()
        elif c[0] == "reverse":
            a.reverse()
        else:
            print("Wrong command.")
