def stringy(size):
    lst_return=[]
    counter=0
    for i in range(1,size+1):
        if i%2==0:
            lst_return.append('0')
        else:
            lst_return.append('1')
    str_return=''.join(lst_return)
    return str_return