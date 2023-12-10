def real_numbers(n):
    return sum(1 for i in range(n + 1) if i % 2 != 0 and i % 3 != 0 and i % 5 != 0) if 1 <= n <= 10**9 else 0

def real_numbers(n):
    counter=0
#    if 1<=n<=10**9:
    for i in range(n+1):
        if i%2!=0 and i%3!=0 and i%5!=0:
            counter+=1
    return counter