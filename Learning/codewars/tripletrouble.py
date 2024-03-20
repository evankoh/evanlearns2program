def triple_trouble(one, two, three):
    tri_list=[]
    tri_list.append(one)
    tri_list.append(two)
    tri_list.append(three)
    str_lst=[]
    str_len=len(one)
    counter=0
    while counter < str_len:
        for i in tri_list:
            str_lst.append(i[counter])
        counter+=1
    str_return=''.join(str_lst)
    return str_return