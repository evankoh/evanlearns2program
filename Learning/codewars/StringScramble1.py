def scramble(strng, array):
    newlst=[]
    while len(newlst)<len(strng):
        newlst.append(0)
    strnglst=list(strng)
    counter=0
    for i in range(len(array)):
        newlst[array[counter]]=strnglst[counter]
        counter+=1
    newstrng=''.join(newlst)
    return newstrng