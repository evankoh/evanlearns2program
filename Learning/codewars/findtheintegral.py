def integrate(coefficient, exponent):
    lst=['x^']
    sec_arg=exponent+1
    fst_arg=coefficient/sec_arg
    sec_arg=str(int(sec_arg))
    fst_arg=str(int(fst_arg))
    lst.insert(0,fst_arg)
    lst.append(sec_arg)
    lst_str=''.join(lst)
    return lst_str