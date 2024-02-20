# Enter your code here. Read input from STDIN. Print output to STDOUT
print("Input an integer:")
a = int(input())
print("input the integers:")
b = input()
f = b.split()
if len(f) != a:
    print("The lenght aren't the same.")
else:
    c = b.split()
    d = []
    for i in range(len(c)):
        d.append(c[i])
    print(d)
    e = tuple(d)
    print(e)
    g = hash(e)
    print(g)
