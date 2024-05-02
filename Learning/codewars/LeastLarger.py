def least_larger(a, i): 
    index = -1
    for least in range(len(a)):
        if index == -1 and a[least] > a[i]:
                index = least
        elif index != -1 and a[least] > a[i] and a[index] > a[least]:
                index = least
    return index