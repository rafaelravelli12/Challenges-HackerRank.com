a, c = input().split()

a = int(a)

b = (a // 2)

# for i in range(b):
#     print(("." * (i+1)).rjust(a,'-') + "|" + ("." * (i+1)).ljust(a, '-'))

# print("WELCOME".center((a * 2)+1,'-'))

# for i in range(b):
#     print(("."*(b-i)).rjust(a,'-') + "|" + ("."*(b-i)).ljust(a,'-'))

for i in range(b):
    print((".|."*(2*i+1)).center(3*a,'-'))

print("WELCOME".center((3*a),'-'))

for i in range(b):
    print((".|."*(2*(b-1)-(2*i)+1)).center(3*a,'-'))
