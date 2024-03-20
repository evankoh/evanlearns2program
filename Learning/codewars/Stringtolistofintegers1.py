def string_to_int_list(s):
    lst_s=s.split(',')
    newlst=[]
    counter=0
    for i in lst_s:
        if i!='':
            newlst.append(int(i))
        counter+=1
    return newlst
    
string_to_int_list("1,2,3,,,4,,5,,,")