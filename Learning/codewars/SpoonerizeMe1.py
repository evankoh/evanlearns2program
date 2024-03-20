def spoonerize(words):
    words_lst=words.split()
    fstword=words_lst[0]
    secword=words_lst[1]
    fstletter=fstword[0]
    secletter=secword[0]
    newfst=fstword.replace(fstword[0],secletter,1)
    newsec=secword.replace(secword[0],fstletter,1)
    newlst=[]
    newlst.append(newfst)
    newlst.append(newsec)
    newstring=' '.join(newlst)
    return newstring