# https://www.codewars.com/kata/564ab935de55a747d7000040

def remove(text, what):
#    dict_k=list(what.keys())
#    dict_v=list(what.values())
    dict_k=what.keys()
    dict_v=what.values()
    print(dict_k, dict_v)
    dict_counter=0
    lst_t=list(text)
    while dict_counter!=len(dict_k):
        dict_vc=dict_v[dict_counter]
        for i in text:
            if i==dict_k[dict_counter] and dict_vc>0:
                lst_t.remove(i)
                dict_vc-=1
        dict_counter+=1
    new_t=''.join(lst_t)
    return new_t

remove('this is a string',{'t':1, 'i':2})