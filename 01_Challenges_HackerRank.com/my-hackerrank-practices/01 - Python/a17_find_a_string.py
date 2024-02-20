def count_substring(string, sub_string):
    a = len(sub_string)
    b = 0
    for i in range(len(string)):
        if sub_string == string[i:(a+i)]:
            b += 1
    return b

if __name__ == '__main__':
    string = input().strip()
    sub_string = input().strip()
    
    count = count_substring(string, sub_string)
    print(count)
