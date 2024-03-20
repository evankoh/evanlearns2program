def sort_grades(lst):
    if 'VB' or 'V0+' in lst:
        newlst=[]
        for i in lst:
            newi=list(i)
            newi.remove(newi[0])
            if 'B' in newi:
                newi[0]='-1'
            if '+' in newi:
                newi.pop(0)
                newi[0]='0.5'
            newi2=float(''.join(newi))
            newlst.append(newi2)
        newlst2=sorted(newlst)
        newlst3=[]
        for i in newlst2:
            str_i=str(i)
            if str_i=='-1.0':
                str_i='B'
                newstr_i=str_i
            elif str_i=='0.5':
                str_i='0+'
                newstr_i=str_i
            elif '.0' in str_i:
                newstr_i=str_i.replace('.0','')
            new_i3='V'+newstr_i
            newlst3.append(new_i3)
        print(newlst3)
    return newlst3

