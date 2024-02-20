if __name__ == '__main__':
    a = []
    b = []
    for i in range(int(input())):
        name = input()
        score = float(input())
        a.append([name, score])
        if score not in b:
            b.append(score)
    # print(a)
    a.sort()
    # print(a)
    b.sort()
    # print(b)
    for j in range(len(a)):
        if a[j][1] == b[1]:
            print(a[j][0])
    # b.pop(0)
    # c = b[0]
    # print(c)
    
    
