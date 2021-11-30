def remove_char(str, n):
    
    new_str = ""
    for i in range(n, len(str)):
        new_str = new_str + str[i]
    return new_str

s = input("enter string : ")
n = int(input("enter number : "))

output = remove_char(s,n)
print(output)