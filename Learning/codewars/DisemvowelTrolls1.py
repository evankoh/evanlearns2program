def disemvowel(string_):
    newlst=[]
    for i in string_:
        if i!='a' and i!='e' and i!='i' and i!='o' and i!='u' and i!='A' and i!='E' and i!='I' and i!="O" and i!='U':
            newlst.append(i)
    newstring=''.join(newlst)
    return newstring